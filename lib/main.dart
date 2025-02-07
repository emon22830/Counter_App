import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Counter App",
    home: MyHomePage(),
  );
  }

}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return MyHomePageUI();
  }

}

class MyHomePageUI extends State<MyHomePage>{

int countNumber = 0;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.cyan,
      title: Text('Counter App'),
    ),
    body: Center(
      child: Text(countNumber.toString()),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        setState(() {
          countNumber = countNumber+1;
        });

      },
    ),
  );
  }

}