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

    var ArrNames = ["Aarav", "Vishnu", "Rahul", "Priya", "Ananya", "Rohan", "Sneha", "Karan", "Neha", "Arjun",
                    "Pooja", "Aditya", "Meera", "Vikram", "Kavya", "Siddharth", "Aisha", "Nikhil", "Riya", "Dev"];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(itemBuilder: (context,index) {
          return Text(ArrNames[index], style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),);
        },
            itemCount: ArrNames.length,
           separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 30,thickness: 2);
          },
            ),
      )
    );
  }
}