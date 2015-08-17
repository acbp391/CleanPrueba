//
//  OrderSchedule.m
//  Cleanpress
//
//  Created by eris ramirez on 6/29/15.
//  Copyright © 2015 Eris Ramirez. All rights reserved.
//

#import "OrderSchedule.h"

@interface OrderSchedule ()

@end

@implementation OrderSchedule
NSArray *datapicker1;
NSArray *datapicker2;
NSString *textpicker1;
NSString *textpicker2;
NSDate *fecha;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.PlacerOrderBtn.enabled = FALSE;
    self.PlacerOrderBtn.backgroundColor = [UIColor colorWithRed:0.329 green:0.408 blue:0.475 alpha:0.5];
    datapicker1=@[@"8:00-8:30",@"9:00-9:30",@"10:00-10:30",@"11:00-11:30",@"12:00-12:30",@"13:00-13:30",@"14:00-14:30",@"15:00-15:30",@"16:00-16:30", @"17:00"];
    datapicker2=@[@"8:00-8:30",@"9:00-9:30",@"10:00-10:30",@"11:00-11:30",@"12:00-12:30",@"13:00-13:30",@"14:00-14:30",@"15:00-15:30",@"16:00-16:30", @"17:00"];
    
    
    datePickerOne=[[UIDatePicker alloc]init];
    datePickerOne.datePickerMode=UIDatePickerModeDate;
    [self.DateOne setInputView:datePickerOne];
    datePickerTwo=[[UIDatePicker alloc]init];
    datePickerTwo.datePickerMode=UIDatePickerModeDate;
    [self.DateTwo setInputView:datePickerTwo];
    
    TimePickerOne=[[UIPickerView alloc]init];
    TimePickerOne.tag=1;
    TimePickerOne.delegate=self;
    TimePickerOne.dataSource=self;
    [self.TimeOne setInputView:TimePickerOne];
    [self.TimeTwo setInputView:TimePickerOne];
    
    UIToolbar *toolbar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolbar setTintColor:[UIColor cyanColor]];
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(showSelectedDateOne)];
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolbar setItems:[NSArray arrayWithObjects:space,doneBtn, nil]];
    [self.DateOne setInputAccessoryView:toolbar];
   //************************************************
    UIToolbar *toolba=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolba setTintColor:[UIColor cyanColor]];
    UIBarButtonItem *doneBt=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(showSelectedDateTwo)];
    UIBarButtonItem *spac=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolba setItems:[NSArray arrayWithObjects:spac,doneBt, nil]];
    [self.DateTwo setInputAccessoryView:toolba];
    //************************************************
    UIToolbar *toolb=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolba setTintColor:[UIColor cyanColor]];
    UIBarButtonItem *doneB=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(showSelectedTimeOne)];
    UIBarButtonItem *spa=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolb setItems:[NSArray arrayWithObjects:spa,doneB, nil]];
    [self.TimeOne setInputAccessoryView:toolb];
    [self. TimeTwo setInputAccessoryView:toolb];
    // Do any additional setup after loading the view.
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if(pickerView.tag==1){
        
        
     return [datapicker1 count];
    
    
    }else {
    
        return [datapicker2 count];
    
    }
    
    
}

-(void)pickerView:(nonnull UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if ([_TimeOne isFirstResponder]) {
        _TimeOne.text = datapicker1[row];
    }else if ([_TimeTwo isFirstResponder]){
        _TimeTwo.text = datapicker2[row];
    }
    

}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if(pickerView.tag==1){
        
        
        return datapicker1[row];
        
        
    }else {
        
        return datapicker2[row];
        
    }
    
            }

/*

- (NSInteger)pickerVie:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return datapicker2.count;
}


-(NSString *)pickerVie:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return datapicker2[row];
    
}*/

-(void)showSelectedDateOne{
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MM/YYYY"];
    self.DateOne.text=[NSString stringWithFormat:@"%@",[formatter stringFromDate:datePickerOne.date]];
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"EEEE"];
    self.weekdayOne.text=[NSString stringWithFormat:@"%@", [format stringFromDate:datePickerOne.date]];
    fecha=datePickerOne.date;
    [self.DateOne resignFirstResponder];

}
-(void)showSelectedDateTwo{
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MM/YYYY"];
    self.DateTwo.text=[NSString stringWithFormat:@"%@",[formatter stringFromDate:datePickerTwo.date]];
    
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"EEEE"];
    self.weekdayTwo.text=[NSString stringWithFormat:@"%@", [format stringFromDate:datePickerTwo.date]];
    
    [self.DateTwo resignFirstResponder];
    
}
-(void)showSelectedTimeOne{
    
    
    [self.TimeOne resignFirstResponder];
      [self.TimeTwo resignFirstResponder];
    
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

- (IBAction)Change {
    
    
    //date one
    NSDateFormatter * dateFormatter = [[ NSDateFormatter alloc ] init ];
    [ dateFormatter setDateFormat : @ "dd-MM-yyyy" ];
    NSString * strDate = [ dateFormatter stringFromDate : datePickerOne.date ];
    
    NSDateFormatter *dateFormatte = [[NSDateFormatter alloc] init];
    // this is imporant - we set our input date format to match our input string
    // if format doesn't match you'll get nil from your string, so be careful
    [dateFormatte setDateFormat:@"dd-MM-yyyy"];
    NSDate *dateFromString = [[NSDate alloc] init];
    // voila!
    dateFromString = [dateFormatte dateFromString:strDate];
    
    //date two
    
    NSDateFormatter * dateForma = [[ NSDateFormatter alloc ] init ];
    [ dateForma setDateFormat : @ "dd-MM-yyyy" ];
    NSString * strDa = [ dateForma stringFromDate : datePickerTwo.date ];
    
    NSDateFormatter *dateForm = [[NSDateFormatter alloc] init];
    // this is imporant - we set our input date format to match our input string
    // if format doesn't match you'll get nil from your string, so be careful
    [dateForm setDateFormat:@"dd-MM-yyyy"];
    NSDate *dateFromStr = [[NSDate alloc] init];
    // voila!
    dateFromStr = [dateForm dateFromString:strDa];
    
    
    //today date
NSDate *now = [NSDate date];
   
    
    NSDateFormatter * dateFormatt = [[ NSDateFormatter alloc ] init ];
    [ dateFormatt setDateFormat : @ "dd-MM-yyyy" ];
    NSString * strDat = [ dateFormatter stringFromDate : now];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    // this is imporant - we set our input date format to match our input string
    // if format doesn't match you'll get nil from your string, so be careful
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *dateFromStrin = [[NSDate alloc] init];
    // voila!
    dateFromStrin = [dateFormat dateFromString:strDat];

    
    
  // NSLog(@"date picker %@  hoy %@",dateFromString,dateFromStrin);
  
    
   /*NSComparisonResult *result;
  result =  [ dateFromStrin compare: dateFromString];*/
  // NSLog(@" %@  JO %@", fecha, now);
    //if (![dateFromStrin isEqualToDate:dateFromString]) {
    if([dateFromStrin compare:dateFromString]==NSOrderedAscending){
        
        
           if([dateFromString compare:dateFromStr]==NSOrderedAscending){
        
        
        self.PlacerOrderBtn.backgroundColor = [UIColor greenColor];
        self.PlacerOrderBtn.enabled = TRUE;
        
           }else if([dateFromString compare:dateFromStr]==NSOrderedDescending){
               
               self.PlacerOrderBtn.backgroundColor = [UIColor colorWithRed:0.329 green:0.408 blue:0.475 alpha:0.5];
               self.PlacerOrderBtn.enabled = FALSE;
               
               
               
           }
        

  
        }else if([dateFromStrin compare:dateFromString]==NSOrderedDescending){
           
            self.PlacerOrderBtn.backgroundColor = [UIColor colorWithRed:0.329 green:0.408 blue:0.475 alpha:0.5];
            self.PlacerOrderBtn.enabled = FALSE;
 
           
            
        }else{
            
            if([dateFromString compare:dateFromStr]==NSOrderedAscending){
                
                
                self.PlacerOrderBtn.backgroundColor = [UIColor greenColor];
                self.PlacerOrderBtn.enabled = TRUE;
                
            }else if([dateFromString compare:dateFromStr]==NSOrderedDescending){
                
                self.PlacerOrderBtn.backgroundColor = [UIColor colorWithRed:0.329 green:0.408 blue:0.475 alpha:0.5];
                self.PlacerOrderBtn.enabled = FALSE;
                
                
                
            }
            
        
        
        }
        
    }
    



- (IBAction)Place:(id)sender {
    
    

    
    
    
    
    [self performSegueWithIdentifier:@"Ccinfo" sender:self];
}

@end
