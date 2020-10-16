import 'package:HappyApp/data/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: MyHomePage(title: 'Happy'),
      ),
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
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/images/logos/icon.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(widget.title),
            ],
          ),
        ),
        body: Container());
  }
}
