YLDevloperTools
===
开发工具库
## 使用说明
```objc
// 在你的pch文件或者需要用到的地方引入对应基类的category即可
#import 'NSObject+Tools.h'
#import 'NSString+Tools.h'
```

### NSObject
是否是空对象
```objc
if ([NSObject isEmpty:object]) {
	// object is empty
}
```
### NSString
* 是否是空字符串
```objc
if ([NSString isBlankString:string]) {
	// string is blank
}
```
* 返回一个安全字符串
```objc
NSString *safeString = [NSString safeString:string];
```
* 是否是整型数字
```objc
if ([NSString isPureInt:string]) {
	// string is pure int
}
```
* 是否是浮点数字
```objc
if ([NSString isPureFloat:string]) {
	// string is pure float
}
```
* 是否是数字
```objc
if ([NSString isNumber:string]) {
	// string is pure float
}
```
* URLEncode
```objc
NSString *url = [NSString encodeString:string];
```
* URLDecode
```objc
NSString *url = [NSString decodeString:string];
```
* 删除收尾空格
```objc
NSString *newString = [string trim];
```
* 删除左侧空格
```objc
NSString *newString = [string ltrim];
```
* 删除右侧空格
```objc
NSString *newString = [string rtrim];
```
* 转换为NSDate
```objc
// 必须是 yyyy-MM-dd HH:ii:mm 格式的字符串
NSDate *newString = [string toDate];
```
* 转换为NSData
```objc
// 转换为UTF8编码的NSData
NSData *newData = [string toData];
```
* 转换为NSDictionary
```objc
// 把JSON格式的NSString转换为NSDictionary
// 如果不是json格式,返回一个空的字典
NSDictionary *dictionary = [string toDictionary];
```
* 进行MD5加密
```objc
// 加密为32位小写MD5值
NSString *md5 = [string toMD5];
```
* 返回字符串需要显示的尺寸
```objc
// 根据提供的最大尺寸和字体大小返回字符串展示后需要的尺寸
CGSize size = [string boundingRectWithSize:CGSizeMake(100, 100) withFont:[UIFont systemFontOfSize:13]];
```
