import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                        Text('창소프 A+를 꿈꾼다.')
                      ],
                    ),
                  )
                ],
              )
          ),
          Stack(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFA4C639).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)
                ),
              )
              ),
              Positioned(
                top: 20,
                left: MediaQuery.of(context).size.width / 2 -75,
                child: Container(
                  width: 150,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Color(0xFFA4C639).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                child: Center(
                  child: Text(
                    "To do list",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
