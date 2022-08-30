import 'package:flutter/material.dart';



class NeuBox extends StatelessWidget {
  final child;



  NeuBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300],
        boxShadow: [
          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(-5, -5),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}