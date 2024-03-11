
import 'package:flutter/material.dart';
import 'package:prog1/bmi_calculator/home_view.dart';



void main(List<String> args) {
  runApp(const MyApp ());
  
}
class MyApp extends StatelessWidget{
const MyApp    ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeView(),
    );
    
    
  }

}




  
