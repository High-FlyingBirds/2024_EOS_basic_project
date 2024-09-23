import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('EOS ToDoList'),
        leading: Icon(Icons.check_box_outlined),
      ),
      body: Container(
        height: 200,
        color: Colors.lightGreen.withOpacity(0.3),
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 10,
                  color: Colors.grey
                )
              ),
              child: Icon(
                Icons.person,
                size: 100,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('EOS'),
                Text(
                  '김성현',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text('롯데 자이언츠 가을 야구 갈 수 있을까요.')
              ],
            )
          ],
        )
      ),
    );
  }
}
