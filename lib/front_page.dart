import 'package:flutter/material.dart';
import 'package:friendss/home.dart';
import 'package:friendss/more.dart';
import 'package:friendss/search.dart';


class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {

  int values = 0;

  List screens = [
    const Homee(),
    const Searchh(),
    const Moree()
  ];

  void press (a){
    setState(() {
      values = (a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: screens[values],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.cyan,
        backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.search),label: 'Search'),

            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.menu),label: 'More'),
          ],
              currentIndex: values,
        onTap: press,
      ),
    );
  }
}
