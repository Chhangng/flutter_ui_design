import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Expanded(
            child: Container(
              height: 200,
              color: Colors.black,
            ),
          ),
          Spacer(
            flex: 2,
          ),
           Expanded(
             child: Container(
              height: 200,
              color: const Color.fromARGB(255, 193, 14, 14),
                     ),
           ),
           Container(
            height: 200,
            color: const Color.fromARGB(255, 90, 52, 52),
          ),
      ],
    );
  }
}