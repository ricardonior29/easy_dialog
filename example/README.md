<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImage.png" height="100" alt="logo"/>

[![pub package](https://img.shields.io/pub/v/easy_dialog.svg?color=orange&logo=flutter&logoColor=white)](https://pub.dartlang.org/packages/easy_dialog)&nbsp; [![GitHub stars](https://img.shields.io/github/stars/ricardonior29/easy_dialog.svg?color=blue&label=Stars&logo=GitHub)](https://github.com/ricardonior29/easy_dialog)&nbsp; [![GitHub](https://img.shields.io/github/license/ricardonior29/easy_dialog.svg?color=darkred&label=License)](https://github.com/ricardonior29/easy_dialog/blob/master/LICENSE) &nbsp; &nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-RN-informational.svg?logo=LinkedIn&color=0077b5)](https://www.linkedin.com/in/ricardo-ni%C3%B1o-113507183/)&nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-JD-informational.svg?logo=LinkedIn&color=0077b5)](https://www.linkedin.com/in/javier-duarte-269b82181/)
<br>[![Open Source Love](https://badges.frapsoft.com/os/v3/open-source.png?v=103)](https://opensource.org/) 

[comment]: # (https://github.com/ellerbrock/open-source-badges/)

---
Easy Dialog package helps you easily create basic or custom dialogs.
For extended  [documentation](https://pub.dartlang.org/documentation/easy_dialog/latest/easy_dialog/easy_dialog-library.html) visit project pub package.

#### Star ⭐  this repo if you like our project. We would love your support.

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

# 🎯 Examples

### Import this class

```dart
import 'package:easy_dialog/easy_dialog.dart';
```

### Basic Dialog 1

<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/example1.png" align = "right" height = "427" alt="Network">

```dart
EasyDialog(

      title: Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      
      description: Text(
        "This is a basic dialog. Easy Dialog helps 
        	you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      )
      
    ).show(context);
              
       
       
              
```

### Basic Dialog 2

<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/example2.png" align = "right" height = "427" alt="Network">

```dart
EasyDialog(

      title: Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      
      description: Text(
        "This is a basic dialog. Easy Dialog helps 
        	you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      
      topImage: NetworkImage("https://raw.githubusercontent.com/
      	ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      height: 180,
      
    ).show(context);
```

### Basic Dialog 3

<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/example3.png" align = "right" height = "427" alt="Network">

```dart
EasyDialog(
      title: Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      description: Text(
        "This is a basic dialog. Easy Dialog helps 
        	you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: NetworkImage("https://raw.githubusercontent.com/
          	ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      height: 220,
      contentList: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new FlatButton(
              padding: const EdgeInsets.only(top: 8.0),
              textColor: Colors.lightBlue,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text("Accept",
                textScaleFactor: 1.2,
              ),),
            new FlatButton(
              padding: const EdgeInsets.only(top: 8.0),
              textColor: Colors.lightBlue,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text("Cancel",
                textScaleFactor: 1.2,
              ),),
           ],)
      ]).show(context);
```

### Custom Dialog 1

<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/example4.png" align = "right" height = "427" alt="Network">

```dart
EasyDialog(
      closeButton: false,
      cornerRadius: 10.0,
      fogOpacity: 0.1,
      width: 280,
      height: 220,
      title: Text(
        "Custom Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      descriptionPadding:
          EdgeInsets.only(left: 17.5, right: 17.5, bottom: 15.0),
      description: Text(
        "This is a custom dialog. Easy Dialog 
        	helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: NetworkImage(
          "https://raw.githubusercontent.com/
          	ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      contentPadding:
          EdgeInsets.only(top: 12.0), // Needed for the button design
      contentList: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0))),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();},
            child: Text("Okay",
              textScaleFactor: 1.3,
            ),),
        ),
      ]).show(context);
```

### Custom Dialog 2

<img src="https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/example5.png" align = "right" height = "427" alt="Network">

```dart
EasyDialog(
      cornerRadius: 15.0,
      fogOpacity: 0.1,
      width: 280,
      height: 180,
      contentPadding:
          EdgeInsets.only(top: 12.0), // Needed for the button design
      contentList: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 30.0)),
              Text("Rate",
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.3,
              ),
              Padding(padding: EdgeInsets.only(left: 10.0)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) {
                  return Icon(
                    index < 3 ? Icons.star : Icons.star_border,
                    size: 30.0,
                    color: Colors.orange,
                  );
                }),
              )],),
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Add review",
                ),
              ),
            )),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0))),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Rate",
              textScaleFactor: 1.3,
            ),),
        ),
      ]).show(context);
```


## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).