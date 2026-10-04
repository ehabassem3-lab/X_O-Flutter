  
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasketBall extends StatefulWidget {
  BasketBall ({super.key});

  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int scoreTeamA = 0; 
  int scoreTeamB = 0; 
  int totalA = 0;
  int totalB = 0;
  int winningScore = 30;
  void _addPoints(bool isTeamA, int points) {
    setState(() {
      if (isTeamA) {
        scoreTeamA += points;
        if (scoreTeamA >= winningScore) {
          totalA += 1;
          _showWinnerDialog('Team A');
        }
      } else {
       
        scoreTeamB += points;
        if (scoreTeamB  >= winningScore) {
           totalB += 1;
          _showWinnerDialog('Team B');
        }
      }
    });
  }
  void _showWinnerDialog(String teamName) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Game Over!'),
        content: Text('$teamName won by reaching $winningScore points!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                scoreTeamA = 0;
                scoreTeamB  = 0;
              });
            },
            child: Text('Play Again'),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
            SigleCustomBasketBall(score: scoreTeamA, teamName: 'Team A',onAddPoints: (points) => _addPoints(true, points), totalScore: totalA ,),
            Container(width: 5 , decoration: BoxDecoration(
              color: Colors.amber,
            ),), 
            SigleCustomBasketBall(score: scoreTeamB, teamName: 'Team B',onAddPoints: (points) => _addPoints(false, points), totalScore: totalB ,),
         ],
      ) ,
    );
  }
}

class SigleCustomBasketBall extends StatelessWidget {
  final int score ;  
  final String teamName ; 
  final int  totalScore ;
  final Function(int) onAddPoints;
  
   SigleCustomBasketBall({super.key, required this.score, required this.teamName, required this.onAddPoints , required this.totalScore});
     

      
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  EdgeInsets.only(top: 200, bottom: 0, left: 10, right: 10),
          child:Column(
    
      children: [
        Container(
          width: 150,
          height: 100,
         
          child: Center(
            child: Text(
              'Total Score :  $totalScore',
              style: TextStyle(fontSize: 24, color: Colors.white , fontWeight: FontWeight.bold),
            ),
          ),
        ),
       
        Container(
          width: 100,
          height: 100,
         
          child: Center(
            child: Text(
              '$score',
              style: TextStyle(fontSize: 44, color: Colors.white , fontWeight: FontWeight.bold),
            ),
          ),
        ),

        SizedBox(height: 16),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: ()  => onAddPoints(1) ,
          
          child: Text('Add  Point' , style: TextStyle(color: Colors.white)),
        ),


          SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () =>  onAddPoints(2),
          child: Text('Add 2 Points' , style: TextStyle(color: Colors.white)),
        ),
          SizedBox(height: 16),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: ()  => onAddPoints(3), 
          child: Text('Add 3 Points' , style: TextStyle(color: Colors.white)),
        ),
      ],
    )   ,
        );  ;
  }
}
// class SigleCustomBasketBall extends StatefulWidget {
//   final  int score  ;
//   final String teamName ; 
// final Function(int) onAddPoints;
//   SigleCustomBasketBall ({
//      required this.teamName,
//     required this.score,
//     required this.onAddPoints, 
//     super.key
//     });

//   @override
//   State<SigleCustomBasketBall> createState() => _SigleCustomBasketBallState();
// }

// class _SigleCustomBasketBallState extends State<SigleCustomBasketBall> {
//   @override
//   Widget build(BuildContext context) {

//     return   Padding(
//           padding:  EdgeInsets.only(top: 200, bottom: 100, left: 20, right: 20),
//           child:Column(
    
//       children: [
       
//         Container(
//           width: 100,
//           height: 100,
         
//           child: Center(
//             child: Text(
//               '$widget.score',
//               style: TextStyle(fontSize: 44, color: Colors.white , fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),

//         SizedBox(height: 16),

//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           onPressed: () {
//             setState(() {
//               _score+=1;
//             });
//           },
//           child: Text('Add  Point' , style: TextStyle(color: Colors.white)),
//         ),


//           SizedBox(height: 16),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           onPressed: () {
//             setState(() {
//               _score+=2;
//             });
//           },
//           child: Text('Add  2  Points' , style: TextStyle(color: Colors.white)),
//         ),
//           SizedBox(height: 16),

//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           onPressed: () {
//             setState(() {
//               _score+=3;
//             });
//           },
//           child: Text('Add 3 Points' , style: TextStyle(color: Colors.white)),
//         ),
//       ],
//     )   ,
//         );
      
//   }
// }

