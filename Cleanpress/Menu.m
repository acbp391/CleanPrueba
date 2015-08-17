//
//  Menu.m
//  Cleanpress
//
//  Created by eris ramirez on 6/17/15.
//  Copyright (c) 2015 Eris Ramirez. All rights reserved.
//

#import "Menu.h"
#import <Parse/Parse.h>

@interface Menu ()

@end

@implementation Menu

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)LogOut:(id)sender {
    [PFUser logOut];
    PFUser *currentUser = [PFUser currentUser];
    currentUser = nil;
    [self performSegueWithIdentifier:@"LogOut" sender:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
