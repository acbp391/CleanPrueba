//
//  RecipeViewController.h
//  CollectionViewDemo
//
//  Created by Slehyder Martinez on 23/6/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController
//@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleList;


@property (weak, nonatomic) NSString *recipeImageName;

- (IBAction)close:(id)sender;

@end
