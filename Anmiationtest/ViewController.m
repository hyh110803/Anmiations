//
//  ViewController.m
//  Anmiationtest
//
//  Created by fitouch666 on 2017/7/4.
//  Copyright © 2017年 fitouch666. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel *timeLabe;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    
    
    UILabel *timeLable = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 60)];
    
    timeLable.font=[UIFont systemFontOfSize:30];
    [self.view addSubview:timeLable];
    self.timeLabe=timeLable;

}

NSString *dateStringsss;

-(void)updateTime{

    NSDate *currentDate = [NSDate date];
    
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc]init];
    
    [dataFormatter setDateFormat:@"HH : mm : ss"];
    
    NSString *dateString = [dataFormatter stringFromDate:currentDate];
    NSLog(@"%@",dateString);
    
    if (![dateStringsss isEqualToString:dateString]) {
        NSLog(@"---");
        dateStringsss=dateString;
    }
    
    self.timeLabe.text = dateString;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
