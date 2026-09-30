import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // Fixed constructor syntax (added const and semicolon)
  const Home({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xFF00D2FF),
              Color(0xFF3A7BD5),] ,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )

          ) ,
         child: Column(
           mainAxisSize: MainAxisSize.max,


           children: [
             Stack(
               children: [
                 Align(
                   child: Image.asset("assets/images/main_illustarion.png"),
                 ),
                 Align(
                   alignment: Alignment.center,
                   child: Transform.translate(
                     offset: Offset(0, 370), // Moves it 150 pixels down from the center
                     child: Text(
                       "Tic Tac Toe",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 60,
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ),
               ],
             ) ,
             Padding(padding: EdgeInsets.all(20)) ,
             Text(
                 "Pick Who Goes First" ,
               style: TextStyle(fontWeight: FontWeight.normal , fontSize: 30 , color: Colors.white),
             ) ,
             Padding(padding: EdgeInsets.all(5)) ,
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white ,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        )  ,
                        width: 170,
                        height: 170,
                        padding: EdgeInsets.all(30),
                        child: Image.asset("assets/images/X.png" )
                        
                      ) ,
                 Container(
                     decoration: BoxDecoration(
                         color: Colors.white ,
                         borderRadius: BorderRadius.all(Radius.circular(30))
                     )  ,
                     width: 170,
                     height: 170,
                     padding: EdgeInsets.all(30),
                     child: Image.asset("assets/images/O.png" )

                 )
               ],
             )






           ],
       ) ,


       ) ,

     );


  }
}