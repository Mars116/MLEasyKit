//
//  MLViewController.m
//  MLEasyKit
//
//  Created by Mars116 on 11/14/2019.
//  Copyright (c) 2019 Mars116. All rights reserved.
//

#import "MLViewController.h"
#import <MLEasyKit/NSObject+MLAdd.h>
#import <YYKit/YYKit.h>
#import "MLModel.h"

@interface MLViewController ()

@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableDictionary *dic1 = [NSMutableDictionary dictionary];
    [dic1 setObject:@"1" forKey:@"A"];
    [dic1 setObject:@"2" forKey:@"B"];
    [dic1 setObject:@"3" forKey:@"C"];
    
    NSMutableDictionary *dic2 = [NSMutableDictionary dictionary];
    [dic2 setObject:@"1" forKey:@"A"];
    [dic2 setObject:@"3" forKey:@"C"];
    [dic2 setObject:@"2" forKey:@"B"];
    
    MLModel *model1 = [MLModel new];
    model1.info = @"3";
    model1.aUserId = @"1";
    model1.name = @"2";
    model1.dataDic = @{@"A":@"4",@"B":@"5"};
    model1.isTest = YES;
    model1.dataArray = @[@"C",@"D"];
    
    MLModel *model2 = [MLModel new];
    model2.name = @"2";
    model2.aUserId = @"1";
    model2.info = @"3";
    model2.isTest = YES;
    model2.dataArray = @[@"C",@"D"];
    model2.dataDic = @{@"B":@"5",@"A":@"4"};
    
    
    BOOL isEqual = [model1 isEqualToObject:model2];
    
    NSLog(@"isEqual %i",isEqual);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
