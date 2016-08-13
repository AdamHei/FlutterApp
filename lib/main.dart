import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'My Flutter App',
      home: new MyScaffold()));
}

class MyAppBar extends StatelessWidget {
    MyAppBar({ this.title });

    final Widget title;

    @override
    Widget build(BuildContext context) {
        return new Container(
            height: 56.0,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: new BoxDecoration(
                backgroundColor: Colors.blue[500]
            ),
            child: new Row(
                children: <Widget>[
                    new IconButton(icon: new Icon(Icons.menu), tooltip: 'Navigation menu', onPressed: null),
                    new Flexible(child: title),
                    new IconButton(icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
                ]
            )
        );
    }
}

class MyScaffold extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Material(
            child: new Column(
                children: <Widget>[
                    new MyAppBar(
                        title: new Text('Example title', style: Typography.white.title)
                    ),
                    new Flexible(
                        child: new Center(
                            child: new Text("Hello, world!")
                        )
                    )
                ]
            )
        );
    }
}

class FlutterDemo extends StatefulWidget {
  FlutterDemo({Key key}) : super(key: key);

  @override
  _FlutterDemoState createState() => new _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  int _counter = 0;
  var arr = ["Hello", "World"];
  var toDisplay = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      toDisplay = arr[_counter % 2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Flutter Demo')),
        body: new Center(child: new Text('Button tapped $toDisplay.')),
        floatingActionButton: new FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: new Icon(Icons.add)));
  }
}
