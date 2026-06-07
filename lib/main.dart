import 'package:flutter/material.dart';

void main(){
  runApp(ListViewExample());
}

class ListViewExample extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ListViewExample",
      theme: ThemeData(
        primaryColorDark: Colors.grey
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollView',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin : EdgeInsets.all(9.0),
                    height: 150,
                    width: 100,
                    color:  Colors.deepOrange,
                  ),
                  Container(
                    margin : EdgeInsets.all(9.0),
                    height: 150,
                    width: 100,
                    color:  Colors.purple,
                  ),
                  Container(
                    margin : EdgeInsets.all(9.0),
                    height: 150,
                    width: 100,
                    color:  Colors.redAccent,
                  ),
                  Container(
                    margin : EdgeInsets.all(9.0),
                    height: 150,
                    width: 100,
                    color:  Colors.blue,
                  ),
                  Container(
                    margin : EdgeInsets.all(9.0),
                    height: 150,
                    width: 100,
                    color:  Colors.yellow,
                  ),
                ],
              ),
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.purple,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.redAccent,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.blue,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.yellow,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.green,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.grey,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.tealAccent,
            ),
            Container(
              margin : EdgeInsets.all(9.0),
              height: 150,
              color:  Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}