import 'package:flutter/material.dart';

class BGImage extends StatelessWidget {
  const BGImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/images/lottery.png"));
  }
}
