//
//  RecipeViewController.m
//  CollectionViewDemo
//
//  Created by Slehyder Martinez on 23/6/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import "RecipeViewController.h"
#import "Recipe.h"
@interface RecipeViewController (){

   // NSArray *images;
   // NSArray *labels;
    //NSArray *labels2;
    NSArray *contenedor;
    NSArray *contenedor1;
    NSArray *contenedor2;
    NSArray *contenedor3;
    NSArray *contenedor4;
    NSArray *contenedor5;
    NSArray *contenedor6;
    NSArray *contenedor7;
    NSArray *contenedor8;
    NSArray *contenedor9;
  //  __weak IBOutlet UITableView *tableviewg;
    NSString *image;

}

@end

@implementation RecipeViewController
@synthesize titleList;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.recipeImageView.image = [UIImage imageNamed:self.recipeImageName];
    
    
    
    
    image = self.recipeImageName;
    
    if ([image isEqualToString:@"11.jpg"]) {
    
        titleList.text=@"Shirts/Tops";
        
        
        
    } else if([image isEqualToString:@"22.jpg"]){
    
    titleList.text=@"Suits";
    
    
    }else if([image isEqualToString:@"33.jpg"]){
        
        titleList.text=@"Dress/Skirt";
        
        
    }else if([image isEqualToString:@"44.jpg"]){
        
        titleList.text=@"Outdoor";
        
        
    }else if([image isEqualToString:@"55.jpg"]){
        
        titleList.text=@"Trousers";
        
        
    }else if([image isEqualToString:@"66.jpg"]){
        
        titleList.text=@"Knitwear";
        
        
    }else if([image isEqualToString:@"77.jpg"]){
        
        titleList.text=@"Accessories";
        
        
    }else if([image isEqualToString:@"88.jpg"]){
        
        titleList.text=@"Towelling";
        
        
    }else if([image isEqualToString:@"99.jpg"]){
        
        titleList.text=@"Bedding";
        
        
    }else if([image isEqualToString:@"10.jpg"]){
        
        titleList.text=@"Dining";
        
    }
    
    
    //firts
    Recipe *recipe1 = [Recipe new];
    recipe1.title = @"Shirts/Tops";
    recipe1.prices = @"$10.00";
    recipe1.imageFile = @"11.jpg";
    
    Recipe *recipe2 = [Recipe new];
    recipe2.title = @"Shirts/Tops";
    recipe2.prices = @"$10.00";
    recipe2.imageFile = @"11.jpg";
    
    Recipe *recipe3 = [Recipe new];
    recipe3.title = @"Shirts/Tops";
    recipe3.prices = @"$10.00";
    recipe3.imageFile = @"11.jpg";
    
    Recipe *recipe4 = [Recipe new];
    recipe4.title = @"Shirts/Tops";
    recipe4.prices = @"$10.00";
    recipe4.imageFile = @"11.jpg";
    
    Recipe *recipe5 = [Recipe new];
    recipe5.title = @"Shirts/Tops";
    recipe5.prices = @"$10.00";
    recipe5.imageFile = @"11.jpg";
    
    Recipe *recipe6 = [Recipe new];
    recipe6.title = @"Shirts/Tops";
    recipe6.prices = @"$10.00";
    recipe6.imageFile = @"11.jpg";
    
    Recipe *recipe7 = [Recipe new];
    recipe7.title = @"Shirts/Tops";
    recipe7.prices = @"$10.00";
    recipe7.imageFile = @"11.jpg";
    
    Recipe *recipe8 = [Recipe new];
    recipe8.title = @"Shirts/Tops";
    recipe8.prices = @"$10.00";
    recipe8.imageFile = @"11.jpg";
    
    Recipe *recipe9 = [Recipe new];
    recipe9.title = @"Shirts/Tops";
    recipe9.prices = @"$10.00";
    recipe9.imageFile = @"11.jpg";
    
    Recipe *recipe10 = [Recipe new];
    recipe10.title = @"Shirts/Tops";
    recipe10.prices = @"$10.00";
    recipe10.imageFile = @"11.jpg";
    
    contenedor = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, nil];
    
    //two
    
    Recipe *recip1 = [Recipe new];
    recip1.title = @"Suits";
    recip1.prices = @"$8.00";
    recip1.imageFile = @"22.jpg";
    
    Recipe *recip2 = [Recipe new];
    recip2.title = @"Suits";
    recip2.prices = @"$8.00";
    recip2.imageFile = @"22.jpg";
    
    Recipe *recip3 = [Recipe new];
    recip3.title = @"Suits";
    recip3.prices = @"$8.00";
    recip3.imageFile = @"22.jpg";
    
    Recipe *recip4 = [Recipe new];
    recip4.title = @"Suits";
    recip4.prices = @"$8.00";
    recip4.imageFile = @"22.jpg";
    
    Recipe *recip5 = [Recipe new];
    recip5.title = @"Suits";
    recip5.prices = @"$8.00";
    recip5.imageFile = @"22.jpg";
    
    Recipe *recip6 = [Recipe new];
    recip6.title = @"Suits";
    recip6.prices = @"$8.00";
    recip6.imageFile = @"22.jpg";
    
    Recipe *recip7 = [Recipe new];
    recip7.title = @"Suits";
    recip7.prices = @"$8.00";
    recip7.imageFile = @"22.jpg";
    
    Recipe *recip8 = [Recipe new];
    recip8.title = @"Suits";
    recip8.prices = @"$8.00";
    recip8.imageFile = @"22.jpg";
    
    Recipe *recip9 = [Recipe new];
    recip9.title = @"Suits";
    recip9.prices = @"$8.00";
    recip9.imageFile = @"22.jpg";
    
    Recipe *recip10 = [Recipe new];
    recip10.title = @"Suits";
    recip10.prices = @"$8.00";
    recip10.imageFile = @"22.jpg";
    
    contenedor1 = [NSArray arrayWithObjects:recip1, recip2, recip3, recip4, recip5, recip6, recip7, recip8, recip9, recip10, nil];
    
    //three
    
    Recipe *reci1 = [Recipe new];
    reci1.title = @"Dress/Skirt";
    reci1.prices = @"$6.00";
    reci1.imageFile = @"33.jpg";
    
    Recipe *reci2 = [Recipe new];
    reci2.title = @"Dress/Skirt";
    reci2.prices = @"$6.00";
    reci2.imageFile = @"33.jpg";
    
    Recipe *reci3 = [Recipe new];
    reci3.title = @"Dress/Skirt";
    reci3.prices = @"$6.00";
    recipe3.imageFile = @"33.jpg";
    
    Recipe *reci4 = [Recipe new];
    reci4.title = @"Dress/Skirt";
    reci4.prices = @"$6.00";
    reci4.imageFile = @"33.jpg";
    
    Recipe *reci5 = [Recipe new];
    reci5.title = @"Dress/Skirt";
    reci5.prices = @"$6.00";
    reci5.imageFile = @"33.jpg";
    
    Recipe *reci6 = [Recipe new];
    reci6.title = @"Dress/Skirt";
    reci6.prices = @"$6.00";
    reci6.imageFile = @"33.jpg";
    
    Recipe *reci7 = [Recipe new];
    reci7.title = @"Dress/Skirt";
    reci7.prices = @"$6.00";
    reci7.imageFile = @"33.jpg";
    
    Recipe *reci8 = [Recipe new];
    reci8.title = @"Dress/Skirt";
    reci8.prices = @"$6.00";
    reci8.imageFile = @"33.jpg";
    
    Recipe *reci9 = [Recipe new];
    reci9.title = @"Dress/Skirt";
    reci9.prices = @"$6.00";
    reci9.imageFile = @"33.jpg";
    
    Recipe *reci10 = [Recipe new];
    reci10.title = @"Dress/Skirt";
    reci10.prices = @"$6.00";
    reci10.imageFile = @"33.jpg";
    
    contenedor2 = [NSArray arrayWithObjects:reci1, reci2, reci3, reci4, reci5, reci6, reci7, reci8, reci9, reci10, nil];
    
    //four
    
    Recipe *rec1 = [Recipe new];
    rec1.title = @"Outdoor";
    rec1.prices = @"$7.00";
    rec1.imageFile = @"44.jpg";
    
    Recipe *rec2 = [Recipe new];
    rec2.title = @"Outdoor";
    rec2.prices = @"$7.00";
    rec2.imageFile = @"44.jpg";
    
    Recipe *rec3 = [Recipe new];
    rec3.title = @"Outdoor";
    rec3.prices = @"$7.00";
    rec3.imageFile = @"44.jpg";
    
    Recipe *rec4 = [Recipe new];
    rec4.title = @"Outdoor";
    rec4.prices = @"7.00";
    rec4.imageFile = @"44.jpg";
    
    Recipe *rec5 = [Recipe new];
    rec5.title = @"Outdoor";
    rec5.prices = @"$7.00";
    rec5.imageFile = @"44.jpg";
    
    Recipe *rec6 = [Recipe new];
    rec6.title = @"Outdoor";
    rec6.prices = @"$7.00";
    rec6.imageFile = @"44.jpg";
    
    Recipe *rec7 = [Recipe new];
    rec7.title = @"Outdoor";
    rec7.prices = @"$7.00";
    rec7.imageFile = @"44.jpg";
    
    Recipe *rec8 = [Recipe new];
    rec8.title = @"Outdoor";
    rec8.prices = @"$7.00";
    rec8.imageFile = @"44.jpg";
    
    Recipe *rec9 = [Recipe new];
    rec9.title = @"Outdoor";
    rec9.prices = @"$7.00";
    rec9.imageFile = @"44.jpg";
    
    Recipe *rec10 = [Recipe new];
    rec10.title = @"Outdoor";
    rec10.prices = @"$7.00";
    rec10.imageFile = @"44.jpg";
    
    contenedor3 = [NSArray arrayWithObjects:rec1, rec2, rec3, rec4, rec5, rec6, rec7, rec8, rec9, rec10, nil];
    
    //five
    
    Recipe *re1 = [Recipe new];
    re1.title = @"Trousers";
    re1.prices = @"$5.00";
    re1.imageFile = @"55.jpg";
    
    Recipe *re2 = [Recipe new];
    re2.title = @"Trousers";
    re2.prices = @"$5.00";
    re2.imageFile = @"55.jpg";
    
    Recipe *re3 = [Recipe new];
    re3.title = @"Trousers";
    re3.prices = @"$5.00";
    re3.imageFile = @"55.jpg";
    
    Recipe *re4 = [Recipe new];
    re4.title = @"Trousers";
    re4.prices = @"$5.00";
    re4.imageFile = @"55.jpg";
    
    Recipe *re5 = [Recipe new];
    re5.title = @"Trousers";
    re5.prices = @"$5.00";
    re5.imageFile = @"55.jpg";
    
    Recipe *re6 = [Recipe new];
    re6.title = @"Trousers";
    re6.prices = @"$5.00";
    re6.imageFile = @"55.jpg";
    
    Recipe *re7 = [Recipe new];
    re7.title = @"Trousers";
    re7.prices = @"$5.00";
    re7.imageFile = @"55.jpg";
    
    Recipe *re8 = [Recipe new];
    re8.title = @"Trousers";
    re8.prices = @"$5.00";
    re8.imageFile = @"55.jpg";
    
    Recipe *re9 = [Recipe new];
    re9.title = @"Trousers";
    re9.prices = @"$5.00";
    re9.imageFile = @"55.jpg";
    
    Recipe *re10 = [Recipe new];
    re10.title = @"Trousers";
    re10.prices = @"$5.00";
    re10.imageFile = @"55.jpg";
    
    contenedor4 = [NSArray arrayWithObjects:re1, re2, re3, re4, re5, re6, re7, re8, re9, re10, nil];
    
    //six
    
    Recipe *r1 = [Recipe new];
    r1.title = @"Knitwear";
    r1.prices = @"$7.00";
    r1.imageFile = @"66.jpg";
    
    Recipe *r2 = [Recipe new];
    r2.title = @"Knitwear";
    r2.prices = @"$7.00";
    r2.imageFile = @"66.jpg";
    
    Recipe *r3 = [Recipe new];
    r3.title = @"Knitwear";
    r3.prices = @"$7.00";
    r3.imageFile = @"66.jpg";
    
    /*Recipe *r4 = [Recipe new];
    r4.title = @"Knitwear";
    r4.prices = @"$7.00";
    r4.imageFile = @"66.jpg";
    
    Recipe *r5 = [Recipe new];
    r5.title = @"Knitwear";
    r5.prices = @"$7.00";
    r5.imageFile = @"66.jpg";
    
    Recipe *r6 = [Recipe new];
    r6.title = @"Knitwear";
    r6.prices = @"$7.00";
    r6.imageFile = @"66.jpg";
    
    Recipe *r7 = [Recipe new];
    r7.title = @"Knitwear";
    r7.prices = @"$7.00";
    r7.imageFile = @"66.jpg";
    
    Recipe *r8 = [Recipe new];
    r8.title = @"Knitwear";
    r8.prices = @"$7.00";
    r8.imageFile = @"66.jpg";
    
    Recipe *r9 = [Recipe new];
    r9.title = @"Knitwear";
    r9.prices = @"$7.00";
    r9.imageFile = @"66.jpg";
    
    Recipe *r10 = [Recipe new];
    r10.title = @"Knitwear";
    r10.prices = @"$7.00";
    r10.imageFile = @"66.jpg";
    */
    contenedor5 = [NSArray arrayWithObjects:r1, r2, r3, nil];

    //seven
    
    Recipe *ecipe1 = [Recipe new];
    ecipe1.title = @"Accessories";
    ecipe1.prices = @"$5.00";
    ecipe1.imageFile = @"77.jpg";
    
    Recipe *ecipe2 = [Recipe new];
    ecipe2.title = @"Accessories";
    ecipe2.prices = @"$5.00";
    ecipe2.imageFile = @"77.jpg";
    
    Recipe *ecipe3 = [Recipe new];
    ecipe3.title = @"Accessories";
    ecipe3.prices = @"$5.00";
    ecipe3.imageFile = @"77.jpg";
    
    Recipe *ecipe4 = [Recipe new];
    ecipe4.title = @"Accessories";
    ecipe4.prices = @"$5.00";
    ecipe4.imageFile = @"77.jpg";
    
    Recipe *ecipe5 = [Recipe new];
    ecipe5.title = @"Accessories";
    ecipe5.prices = @"$5.00";
    ecipe5.imageFile = @"77.jpg";
    
    Recipe *ecipe6 = [Recipe new];
    ecipe6.title = @"Accessories";
    ecipe6.prices = @"$5.00";
    ecipe6.imageFile = @"77.jpg";
    
    Recipe *ecipe7 = [Recipe new];
    ecipe7.title = @"Accessories";
    ecipe7.prices = @"$5.00";
    ecipe7.imageFile = @"77.jpg";
    
    Recipe *ecipe8 = [Recipe new];
    ecipe8.title = @"Accessories";
    ecipe8.prices = @"$5.00";
    ecipe8.imageFile = @"77.jpg";
    
    Recipe *ecipe9 = [Recipe new];
    ecipe9.title = @"Accessories";
    ecipe9.prices = @"$5.00";
    ecipe9.imageFile = @"77.jpg";
    
    Recipe *ecipe10 = [Recipe new];
    ecipe10.title = @"Accessories";
    ecipe10.prices = @"$5.00";
    ecipe10.imageFile = @"77.jpg";
    
    contenedor6 = [NSArray arrayWithObjects:ecipe1, ecipe2, ecipe3, ecipe4, ecipe5, ecipe6, ecipe7, ecipe8, ecipe9, ecipe10, nil];
    
    //eight
    
    Recipe *cipe1 = [Recipe new];
    cipe1.title = @"Towelling";
    cipe1.prices = @"$3.00";
    cipe1.imageFile = @"88.jpg";
    
    Recipe *cipe2 = [Recipe new];
    cipe2.title = @"Towelling";
    cipe2.prices = @"$3.00";
    cipe2.imageFile = @"88.jpg";
    
    Recipe *cipe3 = [Recipe new];
    cipe3.title = @"Towelling";
    cipe3.prices = @"$3.00";
    cipe3.imageFile = @"88.jpg";
    
    Recipe *cipe4 = [Recipe new];
    cipe4.title = @"Towelling";
    cipe4.prices = @"$3.00";
    cipe4.imageFile = @"88.jpg";
    
    Recipe *cipe5 = [Recipe new];
    cipe5.title = @"Towelling";
    cipe5.prices = @"$3.00";
    cipe5.imageFile = @"88.jpg";
    
    Recipe *cipe6 = [Recipe new];
    cipe6.title = @"Towelling";
    cipe6.prices = @"$3.00";
    cipe6.imageFile = @"88.jpg";
    
    Recipe *cipe7 = [Recipe new];
    cipe7.title = @"Towelling";
    cipe7.prices = @"$3.00";
    cipe7.imageFile = @"88.jpg";
    
    Recipe *cipe8 = [Recipe new];
    cipe8.title = @"Towelling";
    cipe8.prices = @"$3.00";
    cipe8.imageFile = @"88.jpg";
    
    /*Recipe *cipe9 = [Recipe new];
    cipe9.title = @"Towelling";
    cipe9.prices = @"$3.00";
    cipe9.imageFile = @"88.jpg";
    
    Recipe *cipe10 = [Recipe new];
    cipe10.title = @"Towelling";
    cipe10.prices = @"$3.00";
    cipe10.imageFile = @"88.jpg";*/
    
    contenedor7 = [NSArray arrayWithObjects:cipe1, cipe2, cipe3, cipe4, cipe5, cipe6, cipe7, cipe8, nil];
    
    
    //nine
    
    Recipe *ipe1 = [Recipe new];
    ipe1.title = @"Bedding";
    ipe1.prices = @"$4.00";
    ipe1.imageFile = @"99.jpg";
    
    Recipe *ipe2 = [Recipe new];
    ipe2.title = @"Bedding";
    ipe2.prices = @"$4.00";
    ipe2.imageFile = @"99.jpg";
    
    Recipe *ipe3 = [Recipe new];
    ipe3.title = @"Bedding";
    ipe3.prices = @"$4.00";
    ipe3.imageFile = @"99.jpg";
    
    Recipe *ipe4 = [Recipe new];
    ipe4.title = @"Bedding";
    ipe4.prices = @"$4.00";
    ipe4.imageFile = @"99.jpg";
    
    Recipe *ipe5 = [Recipe new];
    ipe5.title = @"Bedding";
    ipe5.prices = @"$4.00";
    ipe5.imageFile = @"99.jpg";
    
    Recipe *ipe6 = [Recipe new];
    ipe6.title = @"Bedding";
    ipe6.prices = @"$4.00";
    ipe6.imageFile = @"99.jpg";
    
    Recipe *ipe7 = [Recipe new];
    ipe7.title = @"Bedding";
    ipe7.prices = @"$4.00";
    ipe7.imageFile = @"99.jpg";
    
    Recipe *ipe8 = [Recipe new];
    ipe8.title = @"Bedding";
    ipe8.prices = @"$4.00";
    ipe8.imageFile = @"99.jpg";
    
    Recipe *ipe9 = [Recipe new];
    ipe9.title = @"Bedding";
    ipe9.prices = @"$4.00";
    ipe9.imageFile = @"99.jpg";
    
    /*Recipe *ipe10 = [Recipe new];
    ipe10.title = @"Bedding";
    ipe10.prices = @"$4.00";
    ipe10.imageFile = @"99.jpg";*/
    
    contenedor8 = [NSArray arrayWithObjects:ipe1, ipe2, ipe3, ipe4, ipe5, ipe6, ipe7, ipe8, ipe9,  nil];
    //ten
    Recipe *pe1 = [Recipe new];
    pe1.title = @"Dining";
    pe1.prices = @"$6.00";
    pe1.imageFile = @"10.jpg";
    
    Recipe *pe2 = [Recipe new];
    pe2.title = @"Dining";
    pe2.prices = @"$6.00";
    pe2.imageFile = @"10.jpg";
    
    Recipe *pe3 = [Recipe new];
    pe3.title = @"Dining";
    pe3.prices = @"$6.00";
    pe3.imageFile = @"10.jpg";
    
    Recipe *pe4 = [Recipe new];
    pe4.title = @"Dining";
    pe4.prices = @"$6.00";
    pe4.imageFile = @"10.jpg";
    
    Recipe *pe5 = [Recipe new];
    pe5.title = @"Dining";
    pe5.prices = @"$6.00";
    pe5.imageFile = @"10.jpg";
    
    Recipe *pe6 = [Recipe new];
    pe6.title = @"Dining";
    pe6.prices = @"$6.00";
    pe6.imageFile = @"10.jpg";
    
    Recipe *pe7 = [Recipe new];
    pe7.title = @"Dining";
    pe7.prices = @"$6.00";
    pe7.imageFile = @"10.jpg";
    
    Recipe *pe8 = [Recipe new];
    pe8.title = @"Dining";
    pe8.prices = @"$6.00";
    pe8.imageFile = @"10.jpg";
    
    Recipe *pe9 = [Recipe new];
    pe9.title = @"Dining";
    pe9.prices = @"$6.00";
    pe9.imageFile = @"10.jpg";
    
    Recipe *pe10 = [Recipe new];
    pe10.title = @"Dining";
    pe10.prices = @"$ 6.00";
    pe10.imageFile = @"10.jpg";
    
    contenedor9 = [NSArray arrayWithObjects:pe1, pe2, pe3, pe4, pe5, pe6, pe7, pe8, pe9, pe10, nil];
    
    
    
    
    
    
    
    
    /*NSArray *pick= [NSArray arrayWithObjects:@"11.jpg", @"22.jpg", @"33.jpg", @"44.jpg", @"55.jpg", @"66.jpg", @"77.jpg", @"88.jpg", @"99.jpg", nil];
    
    images = [NSArray arrayWithObjects:pick, nil];
    
    NSArray * title= [NSArray arrayWithObjects:@"Camisa doblada",@"Falda",@"Traje hombre",@"Traje mujer",@"Pantalon",@"Americana",@"Alfombra de lana",@"Cortina",@"Edredon", nil];
    
    NSArray *prices= [NSArray arrayWithObjects:@"$10.00",@"$5.00",@"$6.00",@"$8.00",@"$4.00",@"$10.00",@"$7.00",@"$9.00", @"$3.00", nil];
    
    labels= [NSArray arrayWithObjects:title, nil];
    labels2 = [NSArray arrayWithObjects:prices,nil];
    
    */
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{


    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    
    
    /*
    
    if ([image isEqualToString:@"11.jpg"]) {
        
        return [contenedor count];
        
    } else if([image isEqualToString:@"22.jpg"]){
        return [contenedor1 count];
        
        
    }else if([image isEqualToString:@"33.jpg"]){
        
        return [contenedor2 count];
        
        
    }else if([image isEqualToString:@"44.jpg"]){
        
        return [contenedor3 count];
        
        
    }else if([image isEqualToString:@"55.jpg"]){
        
        return [contenedor4 count];
        
        
    }else if([image isEqualToString:@"66.jpg"]){
        
        return [contenedor5 count];
        
        
    }else if([image isEqualToString:@"77.jpg"]){
        
        return [contenedor6 count];
        
        
    }else if([image isEqualToString:@"88.jpg"]){
        
        return [contenedor7 count];
        
    }else if([image isEqualToString:@"99.jpg"]){
        
       return [contenedor8 count];
        
        
    }else if([image isEqualToString:@"10.jpg"]){
        
        return [contenedor9 count];
        
    }
    
    
    
    */
    return [contenedor count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
   
    if ([image isEqualToString:@"11.jpg"]){
    
    
        Recipe *recipe = [contenedor objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
        
    
    
    }else if([image isEqualToString:@"22.jpg"])
    
    {
        
    // Display recipe in the table cell
    Recipe *recipe = [contenedor1 objectAtIndex:indexPath.row];
    UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
    recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
    
    UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
    recipeNameLabel.text = recipe.title;
    
    UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
    
    }else if([image isEqualToString:@"33.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor2 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"44.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor3 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"55.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor4 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"66.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor5 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"77.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor6 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"88.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor7 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"99.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor8 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }else if([image isEqualToString:@"10.jpg"])
        
    {
        
        // Display recipe in the table cell
        Recipe *recipe = [contenedor9 objectAtIndex:indexPath.row];
        UIImageView *recipeImageVie = (UIImageView *)[cell viewWithTag:103];
        recipeImageVie.image = [UIImage imageNamed:recipe.imageFile];
        
        UILabel *recipeNameLabel = (UILabel *)[cell viewWithTag:101];
        recipeNameLabel.text = recipe.title;
        
        UILabel *recipeDetailLabel = (UILabel *)[cell viewWithTag:102];
        recipeDetailLabel.text = recipe.prices;
        
    }
    
 /*   // Assign our own background image for the cell
    UIImage *background = [self cellBackgroundForRowAtIndexPath:indexPath];
    
    UIImageView *cellBackgroundView = [[UIImageView alloc] initWithImage:background];
    cellBackgroundView.image = background;
    cell.backgroundView = cellBackgroundView;
    
    */
    return cell;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
