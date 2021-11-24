import 'package:flutter/material.dart';
import 'package:desafio_s1/components/button.dart';

import 'interactive_screen.dart';

class ResultScreen extends StatelessWidget {

  final String resultImageNumber;
  final String resultText;
  final String resultTitle;

  ResultScreen(this.resultTitle, this.resultImageNumber, this.resultText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resultTitle),
          automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('images/$resultImageNumber.jpg'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  resultText,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          PrincipalButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return InteractiveScreen();
                }));
              },
              buttonTextHeight: 20.0,
              buttonText: 'Tentar de Novo')
        ],
      ),
    );
  }
}
