YLDevloperTools
===
开发工具库
## 使用说明
```objc
// 在你的pch文件或者需要用到的地方引入对应基类的category即可
#import 'NSObject+Tools.h'
#import 'NSString+Tools.h'
```
[TOC]

## 1.NSObject
### 1.1是否是空对象
```objc
if ([NSObject isEmpty:object]) {
	// object is empty
}
```
## 2.NSString
### 2.1是否是空字符串
```objc
if ([NSString isBlankString:string]) {
	// string is blank
}
```
### 2.2返回一个安全字符串
```objc
NSString *safeString = [NSString safeString:string];
```
### 2.3是否是整型数字
```objc
if ([NSString isPureInt:string]) {
	// string is pure int
}
```
### 2.4是否是浮点数字
```objc
if ([NSString isPureFloat:string]) {
	// string is pure float
}
```
### 2.4是否是数字
```objc
if ([NSString isNumber:string]) {
	// string is pure float
}
```
### 2.5URLEncode
```objc
NSString *url = [NSString encodeString:string];
```
### 2.6URLDecode
```objc
NSString *url = [NSString decodeString:string];
```
### 2.7删除收尾空格
```objc
NSString *newString = [string trim];
```
### 2.8删除左侧空格
```objc
NSString *newString = [string ltrim];
```
### 2.9删除右侧空格
```objc
NSString *newString = [string rtrim];
```
### 2.10转换为NSDate
```objc
// 必须是 yyyy-MM-dd HH:ii:mm 格式的字符串
NSDate *newString = [string toDate];
```
### 2.11转换为NSData
```objc
// 转换为UTF8编码的NSData
NSData *newData = [string toData];
```
### 2.12转换为NSDictionary
```objc
// 把JSON格式的NSString转换为NSDictionary
// 如果不是json格式,返回一个空的字典
NSDictionary *dictionary = [string toDictionary];
```
### 2.13进行MD5加密
```objc
// 加密为32位小写MD5值
NSString *md5 = [string toMD5];
```
### 2.14返回字符串需要显示的尺寸
```objc
// 根据提供的最大尺寸和字体大小返回字符串展示后需要的尺寸
CGSize size = [string boundingRectWithSize:CGSizeMake(100, 100) withFont:[UIFont systemFontOfSize:13]];
```
