import 'package:bebe_ou_paga/utils/theme.dart';
import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regras do jogo'),
      ),
      body: Column(
        children: const [
          ExpansionTile(
            title: Text("Como joga?"),
            children: [
              Text("Cada jogador joga 1 rodada por vez. A regra é simples: Você receberá um desafio, se você cumpri-lo, passa o celular para o próximo amiguinho, mas se você for bunda mole e não cumprir o desafio, bebe a quantidade de bebida indicada e passa para o próximo jogador", style: styleRules,),
            ],
          ),
          ExpansionTile(
            title: Text("Qual bebida usar?"),
            children: [
              Text("Já fiz o jogo, façam alguma coisa e decidam!", style: styleRules,),
            ],
          ),
          ExpansionTile(
              title: Text("Tem limite de jogadores?"),
              children: [
                Text("A regra é clara: quanto mais gente, melhor", style: styleRules,),
              ],
          ),
          ExpansionTile(
            title: Text("Quantas rodadas são?"),
            children: [
              Text("Há mais de 50 desafios aleatórios, portanto jogue até sobrar o último em pé", style: styleRules),
            ],
          ),
          ExpansionTile(
            title: Text("O que são os conselhos no jogo?"),
            children: [
              Text("Conselhos que te tornará milionário(a) em dias", style: styleRules),
            ],
          ),
        ],
      ),
    );
  }
}
