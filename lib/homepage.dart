import 'package:flutter/material.dart';
import './main.dart';
import './account.dart';
import './home.dart';
import './search.dart';
import './reels.dart';
import './add.dart';
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
  int selectedIndex =0;

  void navigationbuttonNavBar(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  //different pages to navigate to
  final List<Widget> children=[
    userhome(),
    usersearch(),
    useradd(),
    usereels(),
    userAccount(),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text('body here')),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigationbuttonNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.black,),label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call,color: Colors.black,),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'profile'),
          ],
          ),
    );
  }
}
