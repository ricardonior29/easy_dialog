import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Dialog Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Easy Dialog Examples'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Easy Dialog without using parameters
  void _emptyEasyDialog() {
    EasyDialog().show(context);
  }

  // Easy Dialog using title and description
  void _basicEasyDialog() {
    EasyDialog(
      title: Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      description: Text(
        "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      )).show(context);
  }

  // Easy Dialog using title, description, topImage and height
  void _basicImageEasyDialog() {
    EasyDialog(
      title: Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      description: Text(
        "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: NetworkImage(
          "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      height: 180,
    ).show(context);
  }

  // Easy Dialog using title, description, topImage, height and contentList
  void _basicContentEasyDialog() {
    EasyDialog(
      title: Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      description: Text(
        "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: NetworkImage(
          "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
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
              child: new Text(
                "Accept",
                textScaleFactor: 1.2,
              ),
            ),
            new FlatButton(
              padding: const EdgeInsets.only(top: 8.0),
              textColor: Colors.lightBlue,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text(
                "Cancel",
                textScaleFactor: 1.2,
              ),
            ),
          ],
        )
      ]).show(context);
  }

  void _customButtonEasyDialog() {
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
        "This is a custom dialog. Easy Dialog helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: NetworkImage(
          "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
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
              Navigator.of(context).pop();
            },
            child: Text(
              "Okay",
              textScaleFactor: 1.3,
            ),
          ),
        ),
      ]).show(context);
  }

  void _customRateEasyDialog() {
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
              Text(
                "Rate",
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
              )
            ],
          ),
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
            child: Text(
              "Rate",
              textScaleFactor: 1.3,
            ),
          ),
        ),
      ]).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: _emptyEasyDialog,
            child: new Text(
              "Empty Dialog",
              textScaleFactor: 1.2,
            ),
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: _basicEasyDialog,
            child: new Text(
              "Basic 1 Dialog",
              textScaleFactor: 1.2,
            ),
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: _basicImageEasyDialog,
            child: new Text(
              "Basic 2 Dialog",
              textScaleFactor: 1.2,
            ),
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: _basicContentEasyDialog,
            child: new Text(
              "Basic 3 Dialog",
              textScaleFactor: 1.2,
            ),
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: _customButtonEasyDialog,
            child: new Text(
              "Custom 1 Dialog",
              textScaleFactor: 1.2,
            ),
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: _customRateEasyDialog,
            child: new Text(
              "Custom 2 Dialog",
              textScaleFactor: 1.2,
            ),
          )
        ],
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
