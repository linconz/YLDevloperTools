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

    NSString *json1 = @"{\"key1\":\"value\",\"count\":100}";
    NSDictionary *dict = [json1 toDictionary];
    NSLog(@"toDictionary:%@", dict);

    NSString *md5 = [@"test" toMD5];
    NSLog(@"md5:%@", md5);

    CGSize size = [md5 boundingRectWithSize:CGSizeMake(100, 100) withFont:[UIFont systemFontOfSize:13]];
    NSLog(@"md5 size is: width:%f height:%f", size.width, size.height);

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [label setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:label];
    float x = [label x];
    float y = [label y];
    float width = [label width];
    float height = [label height];
    float right = [label right];
    float bottom = [label bottom];
    NSLog(@"label.x is: %f, label.y is: %f, label.width is: %f, label.height is: %f", x, y, width, height);
    NSLog(@"label right is: %f, label bottom is: %f", right, bottom);

    NSString *hexString = @"#64191970";
    UIColor *hexStringColor = [UIColor colorWithHexString:hexString];
    NSLog(@"hexStringColor: %@", hexStringColor);

    UInt32 hexUint = 0x64191970;
    UIColor *hexUinColor = [UIColor colorWithHexAARRGGBB:hexUint];
    NSLog(@"hexUinColor: %@", hexUinColor);

    NSMutableDictionary *dictionary = (NSMutableDictionary *)[[NSObject alloc] init];
    BOOL dictionaryIsLegal = [NSDictionary isLegalDictionary:dictionary];
    if (!dictionaryIsLegal) {
        NSLog(@"dictionary not legal!");
    }

    dictionary = [[NSMutableDictionary alloc] init];
    [dictionary safeSetObject:@"value" forKey:@"key1"];
    [dictionary safeSetObject:@"http://www.google.com" forKey:@"url"];
    NSString *url = [dictionary safeValueForKey:@"url"];
    if ([url isEqualToString:@"http://www.google.com"]) {
        NSLog(@"get url:%@", url);
    }
    NSObject *object = [dictionary safeObjectForKey:@"object"];
    if (object) {
        NSLog(@"get object:%@", object);
    }
    NSString *json2 = [dictionary toString];
    NSLog(@"json is:%@", json2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
