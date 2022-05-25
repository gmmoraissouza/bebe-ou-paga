import 'dart:math';

import 'package:bebe_ou_paga/utils/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CardDrink extends StatelessWidget {
  final String text;

  CardDrink({Key? key, required this.text})
      : super(key: key);
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    CollectionReference desafio = firestore.collection('basics');
    var numero = Random().nextInt(63);


    return
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                FutureBuilder<DocumentSnapshot>(
                  future: desafio.doc('$numero').get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text("ERROR - Feche a abra o jogo");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return const Text("Sem desafio pra você. Próximo!");
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Text(data['desafio'], style: styleDesafio,);
                    }

                    return const CircularProgressIndicator();
                  },
                ),
                const Divider(color: Colors.black),
                const Spacer(),
                const Text(
                  "Conselho pra sua vida ruim:",
                  style: styleLetter,
                ),
                Text(text,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    )),
                const Spacer(),
                const Divider(color: Colors.black),
                Row(
                  children: [
                    FutureBuilder<DocumentSnapshot>(
                      future: desafio.doc('$numero').get(),
                      builder: (BuildContext context,
                          AsyncSnapshot<DocumentSnapshot> snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                          return Text("ou beba: " + data['qtd'].toString(), style: styleLetter,);
                        }

                        return const Text('carregando..');
                      },
                    ),
                    const Icon(Icons.local_drink),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
