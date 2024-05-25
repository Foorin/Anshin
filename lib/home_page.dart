import 'package:flutter/material.dart';
import 'design/images.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text('Flutter by Anshinnn',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'WixDisplay',
          ),
        ),
      ),
    );
  }
}