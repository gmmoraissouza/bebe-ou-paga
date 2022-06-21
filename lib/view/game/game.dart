import 'dart:math';

import 'package:bebe_ou_paga/components/button_game.dart';
import 'package:bebe_ou_paga/model/get_advice.dart';
import 'package:bebe_ou_paga/view/game/widget/card_drink.dart';
import 'package:bebe_ou_paga/view/home/home.dart';
import 'package:flutter/material.dart';

import '../../components/desafios.dart';

class Game extends StatefulWidget {
  Game({Key? key, required this.conselho,}) : super(key: key);
  final String conselho;

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  final GetAdvice get = GetAdvice();

  final Desafios desafios = Desafios();

  @override
  Widget build(BuildContext context) {
    var numero = Random().nextInt(desafios.data.length);

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 40.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardDrink(
                    text: widget.conselho,
                    desafio: desafios.data[numero]['desafio']!,
                    qtd: desafios.data[numero]['qtd']!
                  ),
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
