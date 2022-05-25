import 'package:bebe_ou_paga/components/button_game.dart';
import 'package:bebe_ou_paga/model/get_advice.dart';
import 'package:bebe_ou_paga/view/game/widget/card_drink.dart';
import 'package:bebe_ou_paga/view/home/home.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  Game({Key? key, required this.conselho,}) : super(key: key);
  final String conselho;
  final GetAdvice get = GetAdvice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 40.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardDrink(text: conselho),

                  ButtonGame(text: 'Próxima carta',
                      onPressed: () async {
                        await get.getAdvice();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Game(conselho: get.advice,)),
                              (Route<dynamic> route) => false,
                        );
                      }
                      ),
                  ButtonGame(text: 'Sair',
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const Home())
                        );
                      }
                  )
                ],
              ),
            )
        )
    );
  }
}
