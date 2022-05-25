import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network("https://firebasestorage.googleapis.com/v0/b/bebe-ou-paga-gmms.appspot.com/o/gif.gif?alt=media&token=8ae0a7db-c1f5-45f4-bb32-b13b2239e728");
  }
}
