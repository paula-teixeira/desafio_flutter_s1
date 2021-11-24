import 'package:desafio_s1/screens/result_screen.dart';
import 'package:flutter/material.dart';

class StarCard extends StatelessWidget {

  final String imageNumber;
  final ResultScreen resultScreen;

  StarCard({required this.imageNumber, required this.resultScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return resultScreen;
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset('images/$imageNumber.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(imageNumber, style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
