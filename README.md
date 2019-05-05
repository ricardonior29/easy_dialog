<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImage.png" height="100" alt="logo"/>

[![pub package](https://img.shields.io/pub/v/easy_dialog.svg?color=orange&logo=flutter&logoColor=white)](https://pub.dartlang.org/packages/easy_dialog)&nbsp; [![GitHub stars](https://img.shields.io/github/stars/ricardonior29/easy_dialog.svg?color=blue&label=Stars&logo=GitHub)](https://github.com/ricardonior29/easy_dialog)&nbsp; [![GitHub](https://img.shields.io/github/license/ricardonior29/easy_dialog.svg?color=darkred&label=License)](https://github.com/ricardonior29/easy_dialog/blob/master/LICENSE) &nbsp; &nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-RN-informational.svg?logo=LinkedIn&color=0077b5)](https://www.linkedin.com/in/ricardo-ni%C3%B1o-113507183/)&nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-JD-informational.svg?logo=LinkedIn&color=0077b5)](https://www.linkedin.com/in/javier-duarte-269b82181/)
<br>[![Open Source Love](https://badges.frapsoft.com/os/v3/open-source.png?v=103)](https://opensource.org/) 

[comment]: # (https://github.com/ellerbrock/open-source-badges/)

---
Easy Dialog package helps you easily create basic or custom dialogs.
For extended  [documentation](https://pub.dartlang.org/documentation/easy_dialog/latest/easy_dialog/easy_dialog-library.html) visit project pub package.

#### Star ⭐  this repo if you like our project. We would love your support.

# 💾 Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  easy_dialog: <latest version>
```

# 📦 Usage

### Import this class

```dart
import 'package:easy_dialog/easy_dialog.dart';
```
### Basic structure
```dart
EasyDialog(
        title: Text("Basic Easy Dialog Title"),
        description: Text("This is a basic dialog")).show(context);
```

# 🎯 Examples

Let start creating simple but beautiful dialogs. 
<br>[Here](https://github.com/ricardonior29/easy_dialog/tree/master/example) you have some basic examples of what can you build and let your creativity fly.

<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/examples_gif.gif" align = "" height = "500" alt="Network">



# 🎨 Customization and Attributes

All customizable [attributes](https://pub.dartlang.org/documentation/easy_dialog/latest/easy_dialog/EasyDialog-class.html) for easy_dialog

<table>
    <th>Attribute Name</th>
    <th>Example Value</th>
    <th>Description</th>
    <tr>
        <td>topImage</td>
        <td>AssetImage("assets/topImage.png")</td>
        <td>Top image for decoration purpose with rounded top corners</td>
    </tr>
    <tr>
        <td>title</td>
        <td>Text("Alert")</td>
        <td>Dialog title, located under topImage if exists</td>
    </tr>
    <tr>
        <td>tittlePadding</td>
        <td>EdgeInsets.only(left: 8.0,right: 8.0)</td>
        <td>Title padding</td>
    </tr>
    <tr>
        <td>description</td>
        <td>Text("Connection error")</td>
        <td>Dialog description, located between title and contentList</td>
    </tr>
    <tr>
        <td>descriptionPadding</td>
        <td>EdgeInsets.only(left: 8.0,right: 8.0)</td>
        <td>Description padding</td>
    </tr>
    <tr>
        <td>contentList</td>
        <td>[<br>
              Text("This is an extra text line"),
              FlatButton(onPressed: () {},<br>
              &nbsp; child: Text("Okay"),),<br>
              ]
        </td>
        <td>Optional widget list, located in order before description</td>
    </tr>
    <tr>
        <td>contentPadding</td>
        <td>EdgeInsets.all(12.0)</td>
        <td>Content padding. It wraps all widgets including title and description</td>
    </tr>
    <tr>
        <td>height</td>
        <td>200</td>
        <td>Dialog height</td>
    </tr>
    <tr>
        <td>width</td>
        <td>250</td>
        <td>Dialog width</td>
    </tr>
    <tr>
        <td>cornerRadius</td>
        <td>15.0</td>
        <td>Dialog corner radius</td>
    </tr>
    <tr>
        <td>fogOpacity</td>
        <td>0.5</td>
        <td>Fog opacity, sets the black fog opacity behind our dialog from 0 to 1</td>
    </tr>
    <tr>
        <td>closeButton</td>
        <td>false</td>
        <td>Close button enable/disable</td>
    </tr>
</table>

# 🧱 How to Contribute
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request


# 📃 MIT License

    Copyright (c) 2019 ricardonior29

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).