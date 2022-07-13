import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BallHomePage(
        title: 'Ask Me Anything [Home Page]',
      ),
    );
  }
}

class BallHomePage extends StatefulWidget {
  const BallHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BallHomePage> createState() => _BallHomePageState();
}

class _BallHomePageState extends State<BallHomePage> {
/*
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 200.0,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  color: Colors.black,
                ),
              ),
/*
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Sentence',
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
*/
            ],
          ),
        ),
      ),
/*
        floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
*/
    );
  }
}
