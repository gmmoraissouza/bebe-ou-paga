import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class CardDrink extends StatelessWidget {
  final String text, desafio, qtd;

  const CardDrink({Key? key, required this.text, required this.desafio, required this.qtd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(desafio,
                    style: headingStyle),
                const Divider(color: Colors.black),
                const Spacer(),
                const Text(
                  "Conselho via API:",
                  style: headingStyle,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ou beba: ' + qtd,
                        style: headingStyle
                    ),
                    const Icon(Icons.local_drink)
                  ],
                )
              ],
            ),
          ),
    );
  }
}
