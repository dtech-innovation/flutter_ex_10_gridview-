import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 3, // 3 columns
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: List.generate(40, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.green),
          );
        }),
      ),
    );
  }
}
