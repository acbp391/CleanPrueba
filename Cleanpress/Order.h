//
//  Order.h
//  Cleanpress
//
//  Created by eris ramirez on 6/17/15.
//  Copyright (c) 2015 Eris Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Order : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate>


@property(nonatomic, weak) id< UIPickerViewDataSource > dataSource;
@property (strong, nonatomic) IBOutlet UIScrollView *Scroll;
@property (strong, nonatomic) IBOutlet UIView *Window;
@property (strong, nonatomic) IBOutlet UIButton *NewAddress;
@property (strong, nonatomic) IBOutlet UILabel *Addresstitle;
@property (strong, nonatomic) IBOutlet UIButton *SameAddressDelivery;
@property (strong, nonatomic) IBOutlet UITextField *PickupAddress;
@property (strong, nonatomic) IBOutlet UITextField *PickupUnitSuite;
@property (strong, nonatomic) IBOutlet UITextField *PickupZipcode;
@property (strong, nonatomic) IBOutlet UIButton *CurrentLocationButton;
@property (strong, nonatomic) IBOutlet UIButton* buttonAddress;
@property (strong, nonatomic) IBOutlet UILabel *DeliLabel;
@property (strong, nonatomic) IBOutlet UITextField *DeliAddress;
@property (strong, nonatomic) IBOutlet UILabel *DeliLabel1;
@property (strong, nonatomic) IBOutlet UILabel *DeliLabel2;
@property (strong, nonatomic) IBOutlet UILabel *DeliLabel3;
@property (strong, nonatomic) IBOutlet UILabel *DeliLabel4;
@property (strong, nonatomic) IBOutlet UILabel *DeliLabel5;
@property (strong, nonatomic) IBOutlet UITextField *DeliAddress1;
@property (strong, nonatomic) IBOutlet UITextField *DeliAddress2;
@property (strong, nonatomic) IBOutlet UITextField *DeliAddress3;
@property (strong, nonatomic) IBOutlet UILabel *DeliAddress4;
@property (strong, nonatomic) IBOutlet UITextField *DeliAddress5;
@property (strong, nonatomic) IBOutlet UITextField *TextLocation;
@property (strong, nonatomic) IBOutlet UITextField *TextLocation1;
@property (strong, nonatomic) IBOutlet UIImageView *Bluearrow1;

@property (strong, nonatomic) IBOutlet UILabel *BlueLine;
@property (strong, nonatomic) UIColor * __null_unspecified tintColor;

@end