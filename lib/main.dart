import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/views/favorite.dart';
import 'package:instagram/views/home.dart';
import 'package:instagram/views/reels.dart';
import 'package:instagram/views/search.dart';
import 'package:instagram/views/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200,),
              Container(
                margin: EdgeInsets.only(left: 120),
                alignment: Alignment.center,
                height: 150,
                width: 150,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(height: 170,),
              Container(
                margin: EdgeInsets.only(left: 120),
                child: Text("From",style: TextStyle(
                  fontSize: 18,
                ),),
              ),
              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(left: 130),
                child: Text("FACEBOOK",style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 5
                ),),
              )
            ],
          ),
        )
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  List<Widget> _widgets = <Widget>
  [
    home(),
    search(),
    reels(),
    fav(),
    user(),
  ];
  int _selectedIndex  = 0;
  bool flag = false;
  void _onTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 2)
        {
          flag = true;
        }
      else{
        flag = false;
      }
    });
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(FontAwesomeIcons.plusSquare,color: Colors.black,size: 25,),
            title: Container(
              alignment: Alignment.center,
              child: Image.asset("assets/name.png",height: 200,width: 150,),
            ),
            actions: [
              Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(width: 15,)
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: _onTapped,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 25),
              label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,size: 25,),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/reel.png",height: 20,width: 20,color: flag? Colors.red : Colors.black),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ""
              ),
            ],
          ),
          body: _widgets[_selectedIndex],
        ));
  }
}



