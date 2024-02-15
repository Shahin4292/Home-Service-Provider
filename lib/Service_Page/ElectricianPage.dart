import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_service_provider/Service_Page/ElectricianService.dart';
import 'package:home_service_provider/Widgets/Screens.dart';

import '../Service_Page/CleaningPage.dart';

class Electricians extends StatefulWidget {
  const Electricians({super.key});

  @override
  State<Electricians> createState() => _ElectriciansState();
}

class _ElectriciansState extends State<Electricians> {
  int currentIndex = 3;
  final cleaning = [
    const HomeScreen(),
    const CleaningScreen(),
    const PaintingScreen(),
    const ElectricianScreen(),
  ];
  List<String> screentitle = ['Home', 'Cleaning', 'Painting', 'Electrician'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(screentitle [currentIndex]),
          titleSpacing: 10,
          toolbarHeight: 60,
          toolbarOpacity: 1,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          elevation: 10,
          child: const Icon(Icons.add),
          onPressed: () {  },
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 10,
          currentIndex: currentIndex,
          onTap: (value){
            currentIndex=value;
            setState(() {

            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",backgroundColor: Colors.blue,),
            BottomNavigationBarItem(icon: Icon(Icons.cleaning_services),label: "Cleaning",backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.plumbing),label: "Painting",backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.electrical_services),label: "Electrician",backgroundColor: Colors.blue),

          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(child: Text("Shahin")),

              ListTile(title: Text("Home"),leading: Icon(Icons.home),),
              ListTile(title: Text("Profile"),leading: Icon(Icons.person),),
              ListTile(title: Text("Phone"),leading: Icon(Icons.numbers),),
              ListTile(title: Text("Rating"),leading: Icon(Icons.rate_review),),
            ],
          ),
        ),
        body: IndexedStack(index: currentIndex,children: cleaning)
    );
  }
}
