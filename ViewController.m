//
//  ViewController.m
//  1111
//
//  Created by weibin on 14-7-8.
//  Copyright (c) 2014年 cwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *b =[UIButton buttonWithType:UIButtonTypeContactAdd];
    b.frame = CGRectMake(30, 40, 200, 40);
    [b addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onClick
{
    NSUserDefaults *d = [NSUserDefaults standardUserDefaults];
    
    [d setObject:@[@"123",@"23",@"333"] forKey:@"in4"];
    [d synchronize];
    NSLog(@"11111111=---%@",NSHomeDirectory());
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
