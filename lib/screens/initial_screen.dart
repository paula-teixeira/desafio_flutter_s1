import 'package:desafio_s1/components/button.dart';
import 'package:desafio_s1/screens/interactive_screen.dart';
import 'package:flutter/material.dart';

const _title = 'Descobrir como você starhoje nunca foi tão fácil!';
const _subtitle =
    'Saber como você está hoje é fundamental para organizar o trabalho com o time e garantir o aprendizado em equipe';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                _title,
                style: TextStyle(
                  fontFamily: 'StarJedi',
                  fontSize: 28.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
              child: Text(
                _subtitle,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 80.0),
              child: PrincipalButton(
                buttonTextHeight: 15.0,
                buttonText: 'COMECE A USAR',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InteractiveScreen();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
