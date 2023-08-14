import 'package:flutter/material.dart';

class Userposts extends StatelessWidget {
  final String name;

  Userposts({required this.name});

  @override
  

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //profile photo
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          
          height: 400,
          color: Colors.grey[300],
        ),
        //comments below the post
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                   Icon(Icons.share),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(Icons.bookmark),
                   ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('liked by '),
              Text('sally',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Text('and'),
              Text('others',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('sussane '),
              Text('sally',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Text('~ ~'),
            ],
              ),),
      ],
    );
  
  }
}