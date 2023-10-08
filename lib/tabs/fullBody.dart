import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullBody extends StatelessWidget {
  const FullBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(color: Colors.deepOrange),
    );
  }
}
