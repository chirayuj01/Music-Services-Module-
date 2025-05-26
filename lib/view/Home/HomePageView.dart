import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:s_rock_music_app/view/Home/NavBarPages/HomeScreen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';


class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedIndex=0;
  void onItemSelected(int index) {
    selectedIndex=index;
    setState(() {});
  }

  var barItems = [
    BarItem(
      filledIcon: FontAwesomeIcons.home,
      outlinedIcon: FontAwesomeIcons.home,
    ),
    BarItem(
      filledIcon: FontAwesomeIcons.newspaper,
      outlinedIcon: FontAwesomeIcons.newspaper,
    ),
    BarItem(
      filledIcon: FontAwesomeIcons.music,
      outlinedIcon: FontAwesomeIcons.music,
    ),
    BarItem(
      filledIcon: FontAwesomeIcons.briefcase,
      outlinedIcon: FontAwesomeIcons.briefcase,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    var pages=[
      HomePageWidget(context),
      Center(child: Text('Tapped on : news page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      Center(child: Text('Tapped on : TrackBox page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      Center(child: Text('Tapped on : Projects page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF18171C),
      bottomNavigationBar: WaterDropNavBar(
        bottomPadding: h*0.01,
        inactiveIconColor: Colors.grey,
        backgroundColor: const Color(0xFF1D1C21),
        waterDropColor: Colors.white,
        barItems: barItems,
        selectedIndex: selectedIndex,
        onItemSelected: onItemSelected,
      ),
      body: pages[selectedIndex],
    );
  }
}
