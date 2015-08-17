//
//  RecipeCollectionViewController.m
//  CollectionViewDemo
//
//  Created by Simon on 9/1/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "RecipeCollectionViewController.h"
#import "RecipeViewCell.h"
#import "RecipeViewController.h"


@interface RecipeCollectionViewController () {
    NSArray *recipeImages;
    NSArray *tituloRecipe;
    //NSArray *pricesRecipe;
    BOOL shareEnabled;
    NSMutableArray *selectedRecipes;
    
}

@end

@implementation RecipeCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Initialize recipe image array
    NSArray *mainDishImages = [NSArray arrayWithObjects:@"11.jpg", @"22.jpg", @"33.jpg", @"44.jpg", @"55.jpg", @"66.jpg", @"77.jpg", @"88.jpg", @"99.jpg", @"10.jpg", nil];
    NSArray *tituloArray = [NSArray arrayWithObjects:@"Shirts/tops",@"Suits",@"Dress/Skirt",@"Outdoor",@"Trousers",@"Knitwear",@"Accessories",@"Towelling",@"Bedding", @"Dining", nil];
    /*NSArray *pricesArray= [NSArray arrayWithObjects:@"$10.00",@"$5.00",@"$6.00",@"$8.00",@"$4.00",@"$10.00",@"$7.00",@"$9.00", @"$3.00", @"$10.00", nil];*/
   /* NSArray *drinkDessertImages = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"green_tea.jpg", @"starbucks_coffee.jpg", @"white_chocolate_donut.jpg", nil];*/
    
    recipeImages = [NSArray arrayWithObjects:mainDishImages, nil];
    tituloRecipe = [NSArray arrayWithObjects:tituloArray, nil];
  //  pricesRecipe = [NSArray arrayWithObjects:pricesArray,nil];
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    selectedRecipes = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [recipeImages count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [[recipeImages objectAtIndex:section] count];
}

/*- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        RecipeCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        NSString *title = [[NSString alloc]initWithFormat:@"Recipe Group #%i", indexPath.section + 1];
        headerView.title.text = title;
        UIImage *headerImage = [UIImage imageNamed:@"header_banner.png"];
        headerView.backgroundImage.image = headerImage;
        
        reusableview = headerView;
    }
 
    if (kind == UICollectionElementKindSectionFooter) {
        UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];

        reusableview = footerview;
    }
        
    return reusableview;
}
*/

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    RecipeViewCell *cell = (RecipeViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[recipeImages[indexPath.section] objectAtIndex:indexPath.row]];
    UILabel *tituloView = (UILabel *) [cell viewWithTag:20];
    tituloView.text = [tituloRecipe[indexPath.section] objectAtIndex:indexPath.row];
    /*UILabel *pricesView = (UILabel *) [cell viewWithTag:30];
    pricesView.text = [pricesRecipe[indexPath.section] objectAtIndex:indexPath.row];*/
    //cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame-2.png"]];
    //cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame-selected.png"]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipePhoto"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        RecipeViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.recipeImageName = [recipeImages[indexPath.section] objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //if (shareEnabled) {
        NSString *selectedRecipe = [recipeImages[indexPath.section] objectAtIndex:indexPath.row];
        [selectedRecipes addObject:selectedRecipe];
    //}
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //if (shareEnabled) {
        NSString *deSelectedRecipe = [recipeImages[indexPath.section] objectAtIndex:indexPath.row];
        [selectedRecipes removeObject:deSelectedRecipe];
    //}
}


/*- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (shareEnabled) {
        return NO;
    } else {
        return YES;
    }
}*/

/*- (IBAction)shareButtonTouched:(id)sender {
    if (shareEnabled) {
        
        // Post selected photos to Facebook
        if ([selectedRecipes count] > 0) {
            if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
                SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
                
                [controller setInitialText:@"Check out my recipes!"];
                for (NSString *recipePhoto in selectedRecipes) {
                    [controller addImage:[UIImage imageNamed:recipePhoto]];
                }
                
                [self presentViewController:controller animated:YES completion:Nil];
            }
        }
        
        // Deselect all selected items
        for(NSIndexPath *indexPath in self.collectionView.indexPathsForSelectedItems) {
            [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
        }
        
        // Remove all items from selectedRecipes array
        [selectedRecipes removeAllObjects];
        
        // Change the sharing mode to NO
        shareEnabled = NO;
        self.collectionView.allowsMultipleSelection = NO;
        self.shareButton.title = @"Share";
        [self.shareButton setStyle:UIBarButtonItemStylePlain];
        
    } else {
        
        // Change shareEnabled to YES and change the button text to DONE
        shareEnabled = YES;
        self.collectionView.allowsMultipleSelection = YES;
        self.shareButton.title = @"Upload";
        [self.shareButton setStyle:UIBarButtonItemStyleDone];
        
    }
}*/



@end
