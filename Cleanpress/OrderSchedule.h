//
//  OrderSchedule.h
//  Cleanpress
//
//  Created by eris ramirez on 6/29/15.
//  Copyright © 2015 Eris Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderSchedule : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

{
    UIDatePicker *datePickerOne;
    UIDatePicker *datePickerTwo;
    UIPickerView *TimePickerOne;
    UIPickerView *TimePickerTwo;
   
}

@property(nonatomic, weak) id< UIPickerViewDataSource > dataSource;


@property (weak, nonatomic) IBOutlet UITextField *DateOne;

@property (weak, nonatomic) IBOutlet UITextField *DateTwo;

@property (weak, nonatomic) IBOutlet UITextField *TimeOne;

@property (weak, nonatomic) IBOutlet UITextField *TimeTwo;

@property (weak, nonatomic) IBOutlet UITextField *TextSpecialInstruct;

@property (weak, nonatomic) IBOutlet UIButton *PlacerOrderBtn;

@property (weak, nonatomic) IBOutlet UITextField *weekdayOne;

@property (weak, nonatomic) IBOutlet UITextField *weekdayTwo;

@end
