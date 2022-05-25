import 'package:bebe_ou_paga/components/button_game.dart';
import 'package:bebe_ou_paga/model/get_advice.dart';
import 'package:bebe_ou_paga/view/game/game.dart';
import 'package:bebe_ou_paga/view/rules/rules_screen.dart';
import 'package:flutter/material.dart';

import 'widget/image_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GetAdvice get = GetAdvice();
  bool pressed = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ImageWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    ButtonGame(
                      text: 'Começar',
                      onPressed: () async{
                        await get.getAdvice();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Game(conselho: get.advice),
                            ));
                      },
                    ),
                    const SizedBox(height: 10),
                    ButtonGame(
                      text: 'Regras',
                      onPressed: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RulesScreen(),
                          )),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}