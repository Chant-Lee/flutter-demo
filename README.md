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
* 6.Icon:图标显示组件
* 7.RaisedButton：按钮组件
* 8.Scaffold ：脚手架，实现了Material Design 风格视图,提供了APIs用来实现抽屉效果（drawers），快捷导航（snack bars），以及底部导航（bottom sheets）

Scaffold 包含下面几个主要属性： 
```
appBar：显示在界面顶部的一个 AppBar，也就是 Android 中的 ActionBar 、Toolbar

body：当前界面所显示的主要内容 Widget

floatingActionButton：Material设计中所定义的 FAB，界面的主要功能按钮

persistentFooterButtons：固定在下方显示的按钮，比如对话框下方的确定、取消按钮

drawer：侧边栏控件

backgroundColor： 内容的背景颜色，默认使用的是 ThemeData.scaffoldBackgroundColor 的值

bottomNavigationBar： 显示在页面底部的导航栏

resizeToAvoidBottomPadding：类似于 Android 中的 android:windowSoftInputMode=”adjustResize”，控制界面内容 body 是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true。
```
* 9.Appbar:Material Design风格的头部应用栏，能够直接添加对应动作按钮Button

AppBar包含下面这些属性

```
leading：在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮

title： Toolbar 中主要内容，通常显示为当前界面的标题文字

actions：一个 Widget 列表，代表 Toolbar 中所显示的菜单，对于常用的菜单，通常使用 IconButton 来表示；对于不常用的菜单通常使用 PopupMenuButton 来显示为三个点，点击后弹出二级菜单

bottom：一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏

elevation：纸墨设计中控件的 z 坐标顺序，默认值为 4，对于可滚动的 SliverAppBar，当 SliverAppBar 和内容同级的时候，该值为 0， 当内容滚动 SliverAppBar 变为 Toolbar 的时候，修改 elevation 的值 
flexibleSpace：一个显示在 AppBar 下方的控件，高度和 AppBar 高度一样，可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用

backgroundColor：APP bar 的颜色，默认值为 ThemeData.primaryColor。改值通常和下面的三个属性一起使用

brightness：App bar 的亮度，有白色和黑色两种主题，默认值为 ThemeData.primaryColorBrightness

iconTheme：App bar 上图标的颜色、透明度、和尺寸信息。默认值为 ThemeData.primaryIconTheme

textTheme： App bar 上的文字样式。默认值为 ThemeData.primaryTextTheme

centerTitle： 标题是否居中显示，默认值根据不同的操作系统，显示方式不一样
```
* 10.Padding:可以使子Widget根据给出的padding显示
* 11.Center:可以使子Widget在其中居中显示
* 12.Align：可以使子Widget按照设置的对齐方式，并且根据子View的大小调整自己的大小。
* 13.SizedBox:指定大小的Widget，强制子Widget使用这个指定大小
* 14.ListView:类似Android中的ListView
* 15.Expanded：自动扩张widget，会自动扩张到剩余空间大小
* 16.GestureDetector：该widget可以拦截相关的手势及操作事件，一般用来包装需要有交互动作的widget

### 组件demo案例
✅ Tabs
✅ Image
✅ Container

### 个人开发感想
#### 样式方面
因为自己是前端方向，习惯了css布局。但在flutter中是没有css这个概念，布局和样式可能会是一个组件或者是组件里面的属性所定义的样式，对于习惯写样式的前端同学要适应一下。

想想为啥flutter没有抽离css样式？

我们知道在浏览器里面JS，CSS，HTML各司其职：行为，表现和结构，已经深入人心，也被很多人所推崇。但是Flutter好像反其道而行之，样式糅合在结构里面，这样有什么好处呢？

其一我觉得是性能，浏览器解析css是一个性能消耗点。
其二再想想css，css也有明显的缺点：
* 作用域全局性
* 代码冗余，难以模块化。修修补补，又创造了less，sass等工具帮助我们去解决问题

而在Flutter，没有了CSS，以上的问题自然荡然无存，那么描述样式会不会变得很麻烦？大道行之，我们的前辈们早就在代码上总结出很多设计模式或者技术去解决代码重用，代码冗余，模块化的问题，为什么我们不去用已经存在很久而且行之有效的技术去解决问题尼。自然把样式糅合进结构会增加信息量，对我们阅读代码可能会是一个小小的挑战，但是应该也会很快适应下来的，我相信。

我们很多时候都在创造新的工具的解决问题，其实也有可能创造出新的问题，有时候回归根本，不一定是一件坏事。

##### Padding
前端每个元素都基本会有border, margin, padding，但是在Flutter里面可能不得不吐槽连padding都要用个控件，未免太过于麻烦。对于此框架的开发者们也有自己一套看法，在Flutter里面组合简单的控件去实现复杂的控件，而不是通过继承去实现可以说是Flutter的主要设计思想，所以你会发现尽管Container控件提供了padding的参数，但其实它也背后也是通过创建Padding控件来实现效果的。

```
  padding: const EdgeInsets.all(20.0)
  padding: const EdgeInsets.only(bottom: 1.0)
```
