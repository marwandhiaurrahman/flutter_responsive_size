import 'package:flutter/material.dart';
import 'package:responsive_size/responsive_size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(
      designWidth: MediaQuery.of(context).size.width,
      designHeight: MediaQuery.of(context).size.height,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              width: getWidth(75),
              height: getHeight(50),
              color: Colors.blue,
            ),
            Container(
              width: widthBlock * 50,
              height: heightBlock * 10,
              color: Colors.red,
              child: Text(
                'Hello world',
                style: TextStyle(
                    fontSize: spBlock *
                        1.1), // spBlock represent 100% of defaultFontSize
              ),
            ),
            Container(
              width: 100.w,
              height: 120.h,
              color: Colors.amber,
              child: Text(
                'Hello world',
                style: TextStyle(
                    fontSize:
                        getSp(12)), // spBlock represent 100% of defaultFontSize
              ),
            )
          ],
        ));
  }
}
