//
//  Signup.m
//  Cleanpress
//
//  Created by eris ramirez on 6/15/15.
//  Copyright (c) 2015 Eris Ramirez. All rights reserved.
//

#import "Signup.h"
#import <Parse/Parse.h>

@interface Signup (){

    NSString *acep;

}

@end

@implementation Signup



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.CreateAcc.enabled = FALSE;
    self.CreateAcc.backgroundColor = [UIColor colorWithRed:0.329 green:0.408 blue:0.475 alpha:0.5];
    
    /*PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
     testObject[@"foo"] = @"nuevaPrueba";
     [testObject saveInBackground];*/
    
    // Do any additional setup after loading the view, typically from a nib.
}



-(BOOL)validatefields : (NSString *) candidate{
    NSString *regex = @"[a-zA-Z]{1,}";
    NSPredicate *Fieldtest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [Fieldtest evaluateWithObject:candidate];
}
-(BOOL)validateEmail : (NSString *) ema{
    NSString *regex = @"[A-Z0-9a-z@.]{2,}";
    NSPredicate *Fieldtest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [Fieldtest evaluateWithObject: ema];
}


-(BOOL)validatePw : (NSString *) PW{
    NSString *regex = @"[A-Z0-9a-z]{1,}";
    NSPredicate *Fieldtest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [Fieldtest evaluateWithObject: PW];
}







-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.Name) {
        [self.LName becomeFirstResponder];
    }else if (textField == self.LName){
        [self.EmailSign becomeFirstResponder];
    }else if (textField == self.EmailSign){
        [self.ConfirmEmail becomeFirstResponder];
    }else if (textField == self.ConfirmEmail){
        [self.CPw becomeFirstResponder];
    }else if (textField == self.CPw){
        [textField resignFirstResponder];
    }
    
    return YES;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_LName resignFirstResponder];
}

- (IBAction)Change {
    
    
    if ([self validatefields:[_Name text]]==1 && [self validatefields:[_LName text]]==1  && [self validatePw:[_CPw text]]==1 && [self validatePw:[_Pw text]]==1  && [self validateEmail:[_EmailSign text]] == 1 &&  [self validateEmail:[_ConfirmEmail text]] == 1  )   {
       
        
        self.CreateAcc.backgroundColor = [UIColor greenColor];
        self.CreateAcc.enabled = TRUE;
    }else{
        
        
            self.CreateAcc.backgroundColor = [UIColor colorWithRed:0.329 green:0.408 blue:0.475 alpha:0.5];
            self.CreateAcc.enabled = FALSE;
        
        }
    
    
    
}
- (IBAction)Validateconnection:(id)sender {
    NSString *email = self.EmailSign.text;
    NSString *emailcon = self.ConfirmEmail.text;
    if (![email isEqualToString:emailcon]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"Please verify if both email are equals" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
        //[alert release];
    }else if (![self.Pw.text isEqualToString:self.CPw.text]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"Please verify if both passwords are equals" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
    }else if (![email containsString:@"@"]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"The email is wrong" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        [alert show];
    }else if([email isEqualToString:emailcon] && [self.Pw.text isEqualToString:self.CPw.text] && [email containsString:@"@"]){
        PFUser *user = [PFUser user];
        user.username = email;
        user.password = self.Pw.text;
        user.email = email;
        user[@"FirstName"] = self.Name.text;
        user[@"LastName"] = self.LName.text;
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error){
            if (!error) {
                [self performSegueWithIdentifier:@"SignupSucceeded" sender:self];
            }else{
                NSString *errorString = [error userInfo][@"error"];
                // Show the errorString somewhere and let the user try again.
                
                // Create alert.
                UIAlertView *errorMessage = [[UIAlertView alloc] initWithTitle:@"Error" message:errorString delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                
                // Display the alert.
                [errorMessage show];
            }
            
        }];
    }
}

@end
