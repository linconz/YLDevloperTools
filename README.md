YLDevloperTools
===
一些常用基类的category，整合了一下。

## 目录
* [Foundation](#foundation)
	* [NSObject](#nsobject)
	* [NSString](#nsstring)
	* [NSDictionary](#nsdictionary)
	* [NSMutableDictionary](#nsmutabledictionary)
* [UIKit](#uikit)
	* [UIView](#uiview)
	* [UIColor](#uicolor)
	* [UIAlertController](#uialertcontroller)


## 使用说明
```objc
// 在你的pch文件或者需要用到的地方引入对应基类的category即可
#import "NSObject+Tools.h"
#import "NSString+Tools.h"
#import "UIView+Tools.h"
#import "UIAlertController+Tools.h"
```

## Foundation
### NSObject
是否是空对象

```objc
if ([NSObject isEmpty:object]) {
	// object is empty
}
```

### NSString
是否是空字符串

```objc
if ([NSString isBlankString:string]) {
	// string is blank
}
```
返回一个安全字符串

```objc
NSString *safeString = [NSString safeString:string];
```
是否是整型数字

```objc
if ([NSString isPureInt:string]) {
	// string is pure int
}
```
是否是浮点数字

```objc
if ([NSString isPureFloat:string]) {
	// string is pure float
}
```
是否是数字

```objc
if ([NSString isNumber:string]) {
	// string is pure float
}
```
URLEncode

```objc
NSString *url = [NSString encodeString:string];
```
URLDecode

```objc
NSString *url = [NSString decodeString:string];
```
删除收尾空格

```objc
NSString *newString = [string trim];
```
删除左侧空格

```objc
NSString *newString = [string ltrim];
```
删除右侧空格

```objc
NSString *newString = [string rtrim];
```
转换为NSDate

```objc
// 必须是 yyyy-MM-dd HH:ii:mm 格式的字符串
NSDate *newString = [string toDate];
```
转换为NSData

```objc
// 转换为UTF8编码的NSData
NSData *newData = [string toData];
```
转换为NSDictionary

```objc
// 把JSON格式的NSString转换为NSDictionary
// 如果不是json格式,返回一个空的字典
NSDictionary *dictionary = [string toDictionary];
```
进行MD5加密

```objc
// 加密为32位小写MD5值
NSString *md5 = [string toMD5];
```
返回字符串需要显示的尺寸

```objc
// 根据提供的最大尺寸和字体大小返回字符串展示后需要的尺寸
CGSize size = [string boundingRectWithSize:CGSizeMake(100, 100) withFont:[UIFont systemFontOfSize:13]];
```
### NSDictionary
检查是否是合法的NSDictionary

```objc
BOOL result = NSDictionary isLegalDictionary:dictionary];

```
检查是否是空的NSDictionary

```objc
BOOL result = [NSDictionary isEmptyDictionary:dictionary];
```
通过安全方式获得一个对象

```objc
NSObject *object = [dictionary safeObjectForKey:@"key"];
```
通过安全方式获得一个NSString

```objc
NSString *string = [dictionary safeValueForKey:@"key"];
```
转为JSON格式的NSData

```objc
NSData *jsonData = [dictionary toData];
```
转为JSON格式的NSString

```objc
NSString *jsonString = [dictionary toString];
```
### NSMutableDictionary
通过安全方式设置一个object

```objc
[dictionary safeSetObject:@"value" forKey:@"key"];
```
通过安全方式移除一个object

```objc
[dictionary safeRemoveObjectForKey:@"key"];
```

## UIKit
### UIView
获取view的x

```objc
// 等于使用view.frame.origin.x
float x = [view x];
```
获取view的y

```objc
// 等于使用view.frame.origin.y
float y = [view y];
```
获取view的width

```objc
// 等于使用view.frame.size.width
float width = [view width];
```
获取view的height

```objc
// 等于使用view.frame.size.height
float height = [view height];
```
获取view的right

```objc
// 等于使用view.frame.origin.x + view.frame.size.width
float right = [view right];
```
获取view的bottom

```objc
// 等于使用view.frame.origin.y + view.frame.size.height
float bottom = [view bottom];
```
获取view的size

```objc
// 等于使用view.frame.size
CGSize size = [view size];
```
获取view的origin

```objc
// 等于使用view.frame.origin
CGPoint origin = [view origin];
```
UIView转为UIImage

```objc
UIImage *image = [view toImage];
```
根据传入的rect裁剪UIView后转为UIImage

```objc
UIImage *image = [view toImageWithRect:CGRectMake(10, 10, 50, 50)];
```
### UIColor
根据16进制字符串转为UIColor

```objc
// 支持 #AARRGGBB 或者 #RRGGBB 格式
NSString *hexString = @"#64191970";
UIColor *hexStringColor = [UIColor colorWithHexString:hexString];
```
根据16进制字符串转为UIColor,数据错误时提供默认颜色

```objc
// 支持 #AARRGGBB 或者 #RRGGBB 格式
NSString *hexString = @"#64191970";
UIColor *hexStringColor = [UIColor colorWithHexString:hexString withDefaultColor:[UIColor redColor]];
```
根据16进制数字转为UIColor,提供颜色透明度

```objc
// 0xRRGGBB
UInt32 hexUint = 0x191970;
UIColor *hexUinColor = [UIColor colorWithHexRRGGBB:hexUint withAlpha:1.0f];
```
根据16进制(含alpha)转为UIColor

```objc
// 0xAARRGGBB
UInt32 hexUint = 0x64191970;
UIColor *hexUinColor = [UIColor colorWithHexAARRGGBB:hexUint];
```

### UIAlertController
忽略必须传入UIViewController的限制,直接show在UIWindow上面

```objc
UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"alert title" message:@"content" preferredStyle:UIAlertControllerStyleAlert];
UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction _Nonnull action) {}];
[alert addAction:cancel];
[alert show];
```
