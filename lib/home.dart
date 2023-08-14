import 'package:first_flutterapp/bubble_stories.dart';
import 'package:flutter/material.dart';
import './homepage.dart';
import './main.dart';
import './user_post.dart';


class userhome extends StatelessWidget {
  final List people=[
    'smith',
    'obama',
    'simon',
    'susan',
    'mitch',
  ];
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('instagram',
            style:TextStyle(color:Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),

                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                
                 Icon(Icons.share),
             
              ],

            )
            
          ],
        ),
      ),
      body:  Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:people.length,
            itemBuilder:(context,index){
              return Bubblestories(Text:people[index]);
            }),
            ),

            //POSTS
            Userposts(name:'SMITH'),

           ],
      ),     
    );
  }
}
