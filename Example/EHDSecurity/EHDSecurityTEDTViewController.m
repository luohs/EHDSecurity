//
//  EHDSecurityTEDTViewController.m
//  EHDSecurity
//
//  Created by luohuasheng0225@163.com on 09/21/2018.
//  Copyright (c) 2018 luohuasheng0225@163.com. All rights reserved.
//

#import "EHDSecurityTEDTViewController.h"

@interface EHDSecurityTEDTViewController ()

@end

@implementation EHDSecurityTEDTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UIView *aview=[[UIView alloc]initWithFrame:CGRectMake(0, 100, 100, 100)];
    aview.backgroundColor=[UIColor redColor];
    [self.view addSubview:aview];
    
    
    UIView *bview=[[UIView alloc]initWithFrame:CGRectMake(0, 100*2, 100, 100)];
    bview.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:bview];
    
    
    
    UIView *cview=[[UIView alloc]initWithFrame:CGRectMake(0, 100*3, 100, 100)];
    cview.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:cview];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(enterBackground:)
//                                                 name:UIApplicationDidEnterBackgroundNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(resignActive:)
//                                                 name:UIApplicationWillResignActiveNotification object:nil];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(enterForeground:)
//                                                 name:UIApplicationWillEnterForegroundNotification object:nil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
