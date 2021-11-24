import 'package:desafio_s1/components/star_card.dart';
import 'package:desafio_s1/screens/result_screen.dart';
import 'package:flutter/material.dart';

class InteractiveScreen extends StatelessWidget {
  const InteractiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // Define as false to hide the back button
        title: Text('StarToday'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
            child: Center(
              child: Text(
                'De 1 até 9, como você se sente hoje?',
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
                        imageNumber: '1',
                        resultScreen: ResultScreen('Anakin', '1', 'Você está pegando fogo hoje!'),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: '2',
                        resultScreen: ResultScreen('Han Solo', '2', 'Malandro'),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: '3',
                        resultScreen: ResultScreen('Baby Yoda', '3', 'Fofo'),
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
                        imageNumber: '4',
                        resultScreen: ResultScreen('Luke', '4', 'Carregando o time nas costas'),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: '5',
                        resultScreen: ResultScreen('Princesa Leia', '5', 'Bela e pronta para atirar no primeiro que discordar'),
                      ),
                    ),
                    Expanded(
                        child: StarCard(
                          imageNumber: '6',
                          resultScreen: ResultScreen('Stormtrooper', '6', 'Não sabendo que era impossível errar, foi lá e errou'),
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
                        imageNumber: '7',
                        resultScreen: ResultScreen('R2D2 e C3PO', '7', 'Uma máquina de produtividade!'),
                      ),
                    ),
                    Expanded(
                      child: StarCard(
                        imageNumber: '8',
                        resultScreen: ResultScreen('Darth Vader', '8', 'A ponto de estrangular alguém'),
                      ),
                    ),
                    Expanded(
                        child: StarCard(
                          imageNumber: '9',
                          resultScreen: ResultScreen('Palpatine', '9', 'Destruído por fora, mas feliz por dentro'),
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
