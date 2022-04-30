import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

void main() {
  runApp(JsonViewApp());
}

class JsonViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json View',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('flutter_json_view 0.3.0')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: JsonView.string(
            '{"author":{"name": "Vishnu", "lastName": "Sivan", "githubLogin": "codemaker2015", "age": 27, "man": true, "height": 160}}',
          ),
        ),
      ),
    );
  }
}
