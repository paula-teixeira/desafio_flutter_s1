import 'package:desafio_s1/components/star_card.dart';
import 'package:desafio_s1/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:desafio_s1/components/constants.dart';

class InteractiveScreen extends StatelessWidget {
  const InteractiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Define as false to hide the back button
        automaticallyImplyLeading: true,
        title: Text(kInteractiveScreenTitle),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
            child: Center(
              child: Text(
                kInteractiveScreenSubTitle,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[0].resultNumber,
                        resultScreen: ResultScreen(kResults[0]),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[1].resultNumber,
                        resultScreen: ResultScreen(kResults[1]),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[2].resultNumber,
                        resultScreen: ResultScreen(kResults[2]),
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[3].resultNumber,
                        resultScreen: ResultScreen(kResults[3]),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[4].resultNumber,
                        resultScreen: ResultScreen(kResults[4]),
                      ),
                    ),
                    Expanded(
                        child: StarCard(
                          imageNumber: kResults[5].resultNumber,
                          resultScreen: ResultScreen(kResults[5]),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[6].resultNumber,
                        resultScreen: ResultScreen(kResults[6]),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: kResults[7].resultNumber,
                        resultScreen: ResultScreen(kResults[7]),
                      ),
                    ),
                    Expanded(
                        child: StarCard(
                          imageNumber: kResults[8].resultNumber,
                          resultScreen: ResultScreen(kResults[8]),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
