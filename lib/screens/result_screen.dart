import 'package:desafio_s1/components/results.dart';
import 'package:flutter/material.dart';
import 'package:desafio_s1/components/button.dart';

class ResultScreen extends StatelessWidget {
  final Results results;

  ResultScreen(this.results);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(results.resultName),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('images/${results.resultNumber}.jpg'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  results.resultText,
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
                Navigator.pop(context);
              },
              buttonTextHeight: 20.0,
              buttonText: 'Tentar de Novo')
        ],
      ),
    );
  }
}
