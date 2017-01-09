//
//  ViewController.m
//  DeveloperTools
//
//  Created by zhang on 2017/1/9.
//  Copyright © 2017年 YLDeveloperTools. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string = @"";
    if ([NSString isBlankString:string]) {
        NSLog(@"string is blank");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
