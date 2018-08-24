//
//  ZFViewController.m
//  ZFCheckBox
//
//  Created by 670608142 on 08/24/2018.
//  Copyright (c) 2018 670608142. All rights reserved.
//

#import "ZFViewController.h"
#import "ZFCheckBox.h"

@interface ZFViewController ()

@end

@implementation ZFViewController

- (void)viewDidLoad
{
    ZFCheckBox *cb = [[ZFCheckBox alloc]initWithFrame:CGRectMake(100, 100, 30, 30)];
    [cb onClickWithBlock:^{
        // TODO..
    }];
    [cb setCornerRadius:3.0f];
    [cb setBorderWidth:2.0f];
    [cb setTickLineWidth:2.0f];
    [cb setTickColor:[UIColor redColor]];
    [cb setSelected:YES];
    [cb isSelected];
    [self.view addSubview:cb];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
