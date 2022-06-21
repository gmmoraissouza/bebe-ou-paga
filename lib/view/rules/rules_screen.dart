import 'package:flutter/material.dart';

import '../../utils/constants.dart';

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
            title: Text("Como joga?", style: rulesStyle),
            children: [
              Text("Cada rodade você receberá um desafio, se você cumpri-lo, passe o celular para o próximo amiguinho; se você foi bunda mole e não quis cumprir o desafio, beba a quantidade de bebida indicada e passa para o próximo jogador", style: rulesStyle,),
            ],
          ),
          ExpansionTile(
            title: Text("Qual bebida usar?", style: rulesStyle),
            children: [
              Text("Já fiz o jogo, decidam aí!", style: rulesStyle,),
            ],
          ),
          ExpansionTile(
              title: Text("Tem limite de jogadores?", style: rulesStyle),
              children: [
                Text("A regra é clara: quanto mais gente, melhor", style: rulesStyle,),
              ],
          ),
          ExpansionTile(
            title: Text("Quantas rodadas são?", style: rulesStyle),
            children: [
              Text("Há mais de 50 desafios aleatórios, portanto jogue até sobrar o último em pé", style: rulesStyle),
            ],
          ),
          ExpansionTile(
            title: Text("O que são os conselhos no jogo?", style: rulesStyle),
            children: [
              Text("Conselhos que te tornará milionário(a) em dias", style: rulesStyle),
            ],
          ),
        ],
      ),
    );
  }
}
