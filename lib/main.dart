import 'package:ecommerce_ui_practice_1/account.dart';
import 'package:ecommerce_ui_practice_1/add.dart';
import 'package:ecommerce_ui_practice_1/chat.dart';
import 'package:ecommerce_ui_practice_1/home.dart';
import 'package:ecommerce_ui_practice_1/myAds.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   int _currentIndex = 0 ;
   final _pages = [
     Home(),
     MyAds(),
     Add(),
     Chat(),
     Account(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: _pages[_currentIndex],
      bottomNavigationBar: Card(
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
              setState(() {
                _currentIndex = index ;
              });
          },
          items: [
      
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Home'),
              ),
              
      
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined),
              title: Text('My Ads'),
              ),
              
      
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              title: Text('Add'),
              ),
              
      
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              title: Text('Chat'),
              ),
              
      
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('Account'),
              ),
              
            
          ],
          selectedItemColor: Color(0xff5364F4),
          unselectedItemColor: Color(0xffC4C4C4) ,
          unselectedLabelStyle: TextStyle(
            color: Color(0xffC4C4C4)
          ),
          showUnselectedLabels: true,
          
        ),
      ),
      
    );
  }
}