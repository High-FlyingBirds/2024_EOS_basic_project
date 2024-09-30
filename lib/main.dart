import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Pretendard',
        useMaterial3: true,
      ),
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
        backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/img.png'),
      ),
      body: Column(
        children: [
         Container(
             height: 200,
             padding: const EdgeInsets.all(25.0),
             child: Row(
               children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 10,
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/img.png')
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '김성현',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15,),
                      Text('잠오는사람')
                    ],
                  ),
                )
              ],
            )
          ),
          Container(
            height: 500,
            color: Color(0XFFA4C639).withOpacity(0.1),
          )
        ],
      ),
    );
  }
}

