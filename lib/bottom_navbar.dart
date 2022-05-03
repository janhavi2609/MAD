import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExploreState();
  }

}

class _ExploreState extends State<Explore> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    Column(    //Explore
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0)
        ),
        Center(
          child: Text(
          'Explore',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 100),
      ],
    ),
    Column(    //Learn
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0) ),
        SizedBox(height: 30),
        Text(
          'Learn',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          'Keep learning to make progress!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.values[300],
          ),
          textAlign: TextAlign.left,
        ),
        Center(
          child: Column(
          children: [
            SizedBox(height: 80),
            Image.asset("assets/book.png",
              height: 120),
            SizedBox(height: 10),
            Text(
              'Enroll in a course to view your progress',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Start by enrolling in a course and learn something new.',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
          ),
        ),
      ],
    ),
    Column(    //Downloads
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0)),
        SizedBox(height: 30),
        Text(
          'Downloads',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              Image.asset("assets/download.png",
                  height: 120),
              SizedBox(height: 10),
              Text(
                'Learn anywhere, anytime',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'You can download your favorite courses and learn anywhere, \n anytime--even when your internet connection is unreliable--and \n your downalods willshow up here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              )
            ],
          ),
        ),
      ],
    ),
    Column(    //Account
      children: [
        Center(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0) ),
              Text(
                'Account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 100),
              Text(
                'My Cousera',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        // iconSize: 40,
        onTap: _onItemTapped,
        // elevation: 5
      ),
    );
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}
