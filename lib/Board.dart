

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget{
   Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
         body: Container(
          width: double.infinity, 
          height: double.infinity,
           decoration: BoxDecoration( color: Colors.blue) ) ,
         ) ;
  }
}
