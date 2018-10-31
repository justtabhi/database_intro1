import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:database_intro/utils/database_helper.dart';
import 'package:database_intro/models/user.dart';
void main() async{

  var db=new DatabaseHelper();

  //Add user

  int savedUser=await db.saveUser(new User("Abhinav","123456"));
  print("User Saved $savedUser");



  runApp(new MaterialApp(
    home: new Home(),
    title: "Database",
  ));
}

class Home extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Database"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
      );
    }
}