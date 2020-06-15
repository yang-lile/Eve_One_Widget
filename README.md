# Eve_One_Widget-

用最好的代码实现每一个flutter widget。

## 现已实现控件

1. SafeArea
2. Expanded
3. Wrap
4. AnimatedContainer
5. Opacity
83. AboutDialog

## 每次更新需要修改的位置

假设新增控件widget，
1. 需在`lib\pages`里实现，写出逐字稿和翻译
2. 将`img\resource`里的对应图片重命名为该控件的全小写下划线命名，并转移到`assets\images`目录下
3. 在`lib\entity\WidgetModel.dart`的`WidgetNames`内添加控件的全大写下划线命名
4. 复制枚举类型`WidgetNames`到`test\routes_generate.dart`里，运行程序，生成字符串到路由的列表，复制到`lib\Routes.dart`下，
5. 修改`lib\main.dart`里`_MyHomePageState`类里的`subtitlesIndex`子标题属性，注意下标