import 'package:flutter/material.dart';

class Bubblestories extends StatelessWidget {
  final  Text;
  Bubblestories({this.Text});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('NAME'),
              ],
            ),
            );
  }
}