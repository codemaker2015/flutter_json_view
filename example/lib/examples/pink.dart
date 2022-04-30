import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

void main() {
  runApp(JsonViewApp());
}

class JsonViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json View Theme',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('flutter_json_view 0.3.0')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: JsonView.string(
            '{"people":{"name": "Vishnu", "lastName": "Sivan", "githubLogin": "codemaker2015", "age": 27, "man": true, "height": 160}}',
            theme: JsonViewTheme(
              keyStyle: TextStyle(
                color: Colors.deepPurple,
              ),
              stringStyle: TextStyle(
                color: Colors.pink,
              ),
              intStyle: TextStyle(
                color: Colors.purple,
              ),
              doubleStyle: TextStyle(
                color: Colors.purple,
              ),
              boolStyle: TextStyle(
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
