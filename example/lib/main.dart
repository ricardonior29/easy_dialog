import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Dialog Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Easy Dialog Examples'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
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
        title: const Text(
          "Basic Easy Dialog Title",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        description: const Text(
          "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        )).show(context);
  }

  // Easy Dialog using title, description, topImage and height
  void _basicImageEasyDialog() {
    EasyDialog(
      title: const Text(
        "Basic Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      description: const Text(
        "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: const NetworkImage(
          "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      height: 180,
    ).show(context);
  }

  // Easy Dialog using title, description, topImage, height and contentList
  void _basicContentEasyDialog() {
    EasyDialog(
        title: const Text(
          "Basic Easy Dialog Title",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        description: const Text(
          "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        ),
        topImage: const NetworkImage(
            "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
        height: 220,
        contentList: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.lightBlue),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Accept",
                    textScaleFactor: 1.2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.lightBlue),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Cancel",
                    textScaleFactor: 1.2,
                  ),
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
        height: 230,
        title: const Text(
          "Custom Easy Dialog Title",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        descriptionPadding:
            const EdgeInsets.only(left: 17.5, right: 17.5, bottom: 15.0),
        description: const Text(
          "This is a custom dialog. Easy Dialog helps you easily create basic or custom dialogs.",
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        ),
        topImage: const NetworkImage(
            "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
        contentPadding:
            const EdgeInsets.only(top: 12.0), // Needed for the button design
        contentList: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child: const Text(
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
        height: 230,
        contentPadding:
            const EdgeInsets.only(top: 12.0), // Needed for the button design
        contentList: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(left: 30.0)),
                const Text(
                  "Rate",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.3,
                ),
                const Padding(padding: EdgeInsets.only(left: 10.0)),
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
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add review",
                  ),
                ),
              )),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child: const Text(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _emptyEasyDialog,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Empty Dialog",
                textScaleFactor: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _basicEasyDialog,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Basic 1 Dialog",
                textScaleFactor: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _basicImageEasyDialog,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Basic 2 Dialog",
                textScaleFactor: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _basicContentEasyDialog,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Basic 3 Dialog",
                textScaleFactor: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _customButtonEasyDialog,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Custom 1 Dialog",
                textScaleFactor: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _customRateEasyDialog,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                "Custom 2 Dialog",
                textScaleFactor: 1.2,
              ),
            ),
          ),
        ],
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
