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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigationbuttonNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
          ],
          ),
    );
  }
}
