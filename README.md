# demo

A new Flutter project.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## demo运行
```
flutter run
```
如果你未装flutter，参考官方文档[https://flutterchina.club/setup-macos/](https://flutterchina.club/setup-macos/)
```
git clone -b beta https://github.com/flutter/flutter.git

export PUB_HOSTED_URL=https://pub.flutter-io.cn //国内用户需要设置

export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn //国内用户需要设置

export PATH=`pwd`/flutter/bin:$PATH

flutter doctor 
```

## 简单上手

首先要了解两大类型widget：StatelessWidget和StatefulWidget

`StatelessWidget`:没有状态的组件，也即是静态组件，内容不能动态修改，初始化之后组件内容不在更改，该类型组件只需复写build方法返回相关自定义的组件内容即可

`StatefulWidget`:有状态的组件，该组件需要覆写createState()方法 返回一个State类型的对象，并且需要在该State对象中复写其build()方法，自定义组件主要在该方法中实现根据不同的数据进行相应的交互及渲染逻辑，达到动态交互的效果

控件组合，在Flutter框架中布局文件没有像在Android里面使用XML，而是直接在代码中使用各种Layout+各种组件代码实现布局，这使得复杂布局在Flutter中显得过于复杂，且不直观，在后期修改时势必增加难度。
### dart数据类型

* int：整形
* double：双精度
* String：字符串
* bool ： 布尔类型
* []:数组
* Map：字典集合

### 变量声明

```
final String a = "adad" ✅
//必须赋值
final String a1 ❎

String b = "adad" ✅
String b1 ✅
```

### 主要控件

对应详细属性可以参照：https://flutter.io/widgets/layout/

* 1.Container：一个可以设置位置，大小的控件
* 2.Row：使子Widget横向排列的组件，默认子Widget竖直居中
* 3.Column：使子Widget纵向排列的组件，默认子Widget横向居中
* 4.Image：用来显示图片的组件，可以设置大小，也可以直接从网络加载图片
* 5.Text：字符显示组件
* 6.Icon :图标显示组件
* 7.RaisedButton：按钮组件
* 8.Scaffold ：脚手架，实现了Material Design 风格视图,提供了APIs用来实现抽屉效果（drawers），快捷导航（snack bars），以及底部导航（bottom sheets）
* 9.Appbar:Material Design风格的头部应用栏，能够直接添加对应动作按钮Button
* 10.Padding:可以使子Widget根据给出的padding显示
* 11.Center:可以使子Widget在其中居中显示
* 12.Align：可以使子Widget按照设置的对齐方式，并且根据子View的大小调整自己的大小。
* 13.SizedBox:指定大小的Widget，强制子Widget使用这个指定大小
* 14.ListView:类似Android中的ListView
* 15.Expanded：自动扩张widget，会自动扩张到剩余空间大小
* 16.GestureDetector：该widget可以拦截相关的手势及操作事件，一般用来包装需要有交互动作的widget