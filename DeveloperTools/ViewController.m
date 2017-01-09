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

    NSString *stringLeftBlock = @"   左边一个空格";
    NSLog(@"string:%@", [stringLeftBlock ltrim]);

    NSString *stringRightBlock = @"右边有空格  ";
    NSLog(@"string:%@....", [stringRightBlock rtrim]);

    NSString *json = @"{\"key1\":\"value\",\"count\":100}";
    NSDictionary *dict = [json toDictionary];
    NSLog(@"toDictionary:%@", dict);

    NSString *md5 = [@"test" toMD5];
    NSLog(@"md5:%@", md5);

    CGSize size = [md5 boundingRectWithSize:CGSizeMake(100, 100) withFont:[UIFont systemFontOfSize:13]];
    NSLog(@"md5 size is: width:%f height:%f", size.width, size.height);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
