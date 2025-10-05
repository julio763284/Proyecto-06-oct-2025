import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(200, 0, 0, 10)),
            )
          ),
          Center(
            child: SizedBox(
              height: 100.00,
              width: 100.0,
              child: CircularProgressIndicator(color: Colors.white,),
              ),
            )
        ],
    );
  }
}