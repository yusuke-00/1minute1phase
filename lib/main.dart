import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_minute_one_phrase_app/pod_home_page.dart';

// ignore: missing_return
Future<void> main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  String text = "次へ";

  final myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutterデモ練習アプリ"),
        actions: <Widget>[Icon(Icons.add), Icon(Icons.share)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "テキストの練習",
                  ),
                  onChanged: (text) {
                    print("First text field: $text");
                  },
                ),
                TextField(
                  focusNode: myFocusNode,
                ),
                RaisedButton(
                  child: Text("フォーカス"),
                  onPressed: () {
                    myFocusNode.requestFocus();
                  },
                ),
              ],
            ),
            RaisedButton(
              child: Text("ホーム画面"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PodHomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
