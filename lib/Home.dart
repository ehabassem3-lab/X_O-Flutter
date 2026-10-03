import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_o/Board.dart';

class Home extends StatelessWidget {
  // Fixed constructor syntax (added const and semicolon)
  const Home({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
        width: double.infinity,
        height: double.infinity,
       decoration: BoxDecoration(
        gradient: LinearGradient(
           colors: [
              Color(0xFF00D2FF),
              Color(0xFF3A7BD5),] ,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
        )
       ) ,
          child:  Column(
            children: [
              Stack( 
               children : [
                 Image.asset('assets/images/main_illustarion.png',  height: 560 ),
                 Transform.translate(
                  offset: Offset(50, 400),
                  child: Text(' Tec Tac Tao ' , style : TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),)
                 ),
                  Transform.translate(
                  offset: Offset(120, 500),
                  child: Text(' Pick Your Symbol ' , style : TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                 ),
            
              


                

               ]

              ) ,
                   Row(
                 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                          
                  child : Container(
                    decoration: BoxDecoration(
                     
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150, 
                    height: 150, 
                    child: IconButton(
                      icon: Image.asset('assets/images/X.png' , width: 100, height: 100,),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Board()),
                        );
                        // Handle cross button press
                      },
                    ),
                  ) ,
                  
                 
                   ) ,  
                   SizedBox(width: 30,) ,
                      Container(
                  // offset: Offset(0, 550) ,
                  child : Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150, 
                    height: 150, 
                    child: IconButton(
                      icon: Image.asset('assets/images/O.png' , width: 100, height: 100,),
                      onPressed: () {
                        print('Circle button pressed');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Board()),
                        );
                      },
                    ),
                  ) ,
                 
                   )
                   
                  ],
                 ) ,
            ],
           

          ),
        )
      ) ;


  }
}