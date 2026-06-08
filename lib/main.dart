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

    var ArrNames = ["Bhagyashree", "Vishnu", "Rahul", "Priya", "Ananya", "Rohan", "Sneha", "Karan", "Neha", "Arjun",
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
          int n = index+1;
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/contactLogo.png'),
              backgroundColor: Colors.cyan,
            ),
            title: Text(ArrNames[index],style: TextStyle(
              fontFamily: 'newItalianFont',
              fontWeight: FontWeight.w900,
              fontSize: 30
            ),),
            subtitle: Text("Number",style: TextStyle(
              fontSize: 20
            ),),
            trailing: Icon(Icons.arrow_forward,color: Colors.grey,size: 20),
          );
        },
            itemCount: ArrNames.length,
           separatorBuilder: (context, index) {
          return Divider(height: 30,thickness: 2);
          },
            ),
      )
    );
  }
}