//
//  Order.m
//  Cleanpress
//
//  Created by eris ramirez on 6/17/15.
//  Copyright (c) 2015 Eris Ramirez. All rights reserved.
//



#import "Order.h"
#import <Parse/Parse.h>
#import "QuartzCore/QuartzCore.h"
long img= 0;

@interface Order ()

@end

@implementation Order
NSArray *pickerData;
UIPickerView *Picker;

- (void)viewDidLoad {
    
    [super viewDidLoad];
         pickerData=@[@"Home",@"Work",@"Other"];
    Picker = [[UIPickerView alloc]init];
    Picker.backgroundColor = [UIColor whiteColor];
    Picker.dataSource = self;
    Picker.delegate = self;
    [self.TextLocation setInputView:Picker];
    [self.TextLocation1 setInputView:Picker];
    
    self.Scroll.contentSize = CGSizeMake(self.view.frame.size.width, 1214);
    
       /*if(self.Window.frame.size.height <= 480 ){
                  self.Scroll.contentSize = CGSizeMake(self.view.frame.size.width, 1214);
              }else if (self.Window.frame.size.height > 480 && self.Window.frame.size.height <= 568 ){
                  self.Scroll.contentSize = CGSizeMake(self.view.frame.size.width, 1214);
              }else if (self.Window.frame.size.height > 568 && self.Window.frame.size.height <= 667){
                  self.Scroll.contentSize = CGSizeMake(self.view.frame.size.width, 1214);
             }else if (self.Window.frame.size.height > 667 && self.Window.frame.size.height <= 736){
                  self.Scroll.contentSize = CGSizeMake(self.view.frame.size.width, 1214);
             }*/
        pickerData=@[@"Home",@"Work",@"Other"];
        self.BlueLine.layer.zPosition = 2;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:@"UIKeyboardWillShowNotification"
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidHide:)
                                                 name:@"UIKeyboardDidHideNotification"
                                               object:nil];
    
    UIToolbar *tool = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.Window.frame.size.height, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(HideKeyboard)];
    [tool setItems:[NSArray arrayWithObject:done]];
    [self.TextLocation setInputAccessoryView:tool];
    [self.TextLocation1 setInputAccessoryView:tool];
    self.DeliLabel.hidden = TRUE;
    self.DeliLabel1.hidden = TRUE;
    self.DeliLabel2.hidden = TRUE;
    self.DeliLabel3.hidden = TRUE;
    self.DeliLabel4.hidden = TRUE;
    self.DeliLabel5.hidden = TRUE;
    self.DeliAddress.hidden = TRUE;
    self.DeliAddress1.hidden = TRUE;
    self.DeliAddress2.hidden = TRUE;
    self.DeliAddress3.hidden = TRUE;
    self.DeliAddress4.hidden = TRUE;
    self.DeliAddress5.hidden = TRUE;
    self.TextLocation1.hidden = TRUE;
    self.Bluearrow1.hidden = TRUE;
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return pickerData.count;
}


-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return pickerData[row];
    
}
-(void)HideKeyboard{
    if([_TextLocation isFirstResponder]){
        [_TextLocation resignFirstResponder];
        
    }else if ([_TextLocation1 isFirstResponder]){
        [_TextLocation1 resignFirstResponder];
    }
    
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.PickupAddress) {
        [_PickupAddress resignFirstResponder];
    }else if (textField == self.PickupUnitSuite){
        [_PickupUnitSuite resignFirstResponder];
    }
    
    return YES;
}

-(void)pickerView:(nonnull UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if([_TextLocation isFirstResponder]){
        _TextLocation.text = pickerData[row];
        
    }else if ([_TextLocation1 isFirstResponder]){
        _TextLocation1.text = pickerData[row];
    }
    
    
}

- (void) keyboardWillShow:(NSNotification *)note {
    NSDictionary *userInfo = [note userInfo];
    CGSize kbSize = [[userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    //NSLog(@"Keyboard Height: %f Width: %f", kbSize.height, kbSize.width);
    
    // move the view up by 30 pts
    CGRect frame = self.view.frame;
    frame.origin.y = -kbSize.height;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.view.frame = frame;
    }];
}

- (void) keyboardDidHide:(NSNotification *)note {
    
    // move the view back to the origin
    CGRect frame = self.view.frame;
    frame.origin.y = 0;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.view.frame = frame;
    }];
}



- (IBAction)Address:(id)sender {
    
    NSString *Btitle = self.buttonAddress.currentTitle;
    if([Btitle  isEqual: @"Save Addresses"] && ![_TextLocation.text isEqualToString:@"Select"]){
        PFObject *Pickup = [PFObject objectWithClassName:@"Addresses"];
        PFUser *Cuser = [PFUser currentUser];
        
        
        //Pickup[@""] = Cuser;
        // PFRelation *rel = [Cuser relationForKey:@"username"];
        
        Pickup[@"username"] = Cuser[@"username"];
        Pickup[@"Location"] = self.TextLocation.text;
        Pickup[@"Address"] = self.PickupAddress.text;
        Pickup[@"Unit_Suite"] = self.PickupUnitSuite.text;
        Pickup[@"ZipCode"] = self.PickupZipcode.text;
        [Pickup saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if(succeeded){
                [self.buttonAddress setTitle:@"Continue" forState:0];
            }else{
                
            }
        }];
        
    }else if ([Btitle isEqual:@"Continue"]){
        [self performSegueWithIdentifier:@"ToSchedule" sender:self];
    }
}

- (IBAction)DeliveryAddress:(id)sender {
    [_SameAddressDelivery setTitle:@"Use my current location for delivery" forState:0];
    
        _SameAddressDelivery.frame = CGRectMake(_SameAddressDelivery.frame.origin.x-20, _SameAddressDelivery.frame.origin.y, _SameAddressDelivery.frame.size.width+50,_SameAddressDelivery.frame.size.height);
        self.buttonAddress.frame = CGRectMake(self.buttonAddress.frame.origin.x , 920, self.buttonAddress.frame.size.width , self.buttonAddress.frame.size.height);
        self.Scroll.contentSize = CGSizeMake(320, 1417);
    self.NewAddress.hidden = TRUE;
    self.DeliLabel.hidden = FALSE;
    self.DeliLabel1.hidden = FALSE;
    self.DeliLabel2.hidden = FALSE;
    self.DeliLabel3.hidden = FALSE;
    self.DeliLabel4.hidden = FALSE;
    self.DeliLabel5.hidden = FALSE;
    self.DeliAddress.hidden = FALSE;
    self.DeliAddress1.hidden = FALSE;
    self.DeliAddress2.hidden = FALSE;
    self.DeliAddress3.hidden = FALSE;
    self.DeliAddress4.hidden = FALSE;
    self.DeliAddress5.hidden = FALSE;
    self.TextLocation1.hidden = FALSE;
    self.Bluearrow1.hidden = FALSE;
}

- (IBAction)ChangeImg:(id)sender {
    
    if (img == 0) {
        [_CurrentLocationButton setImage:[UIImage imageNamed:@"check2"] forState:0];
        img = 1;
        
    }else{
        [_CurrentLocationButton setImage:[UIImage imageNamed:@"check1"] forState:0];
        img = 0;
    }
    
    
    
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
