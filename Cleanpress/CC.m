//
//  CC.m
//  Cleanpress
//
//  Created by eris ramirez on 6/29/15.
//  Copyright © 2015 Eris Ramirez. All rights reserved.
//

#import "CC.h"

@interface CC ()

@end

@implementation CC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)Next:(id)sender {
    [self performSegueWithIdentifier:@"Tracking" sender:self];
}

@end
