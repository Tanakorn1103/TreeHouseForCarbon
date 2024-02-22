import 'package:flutter/material.dart';
import '../home_frist_page.dart';
import '../Data_page/data_user_page.dart';
import 'tree_page/home_tree_page.dart';
// import 'package:flutter/services.dart';

class Group_Tree_Page extends StatelessWidget {
  const Group_Tree_Page({Key? key});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      if (index == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Home1_Page()));
      } else if (index == 2) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DataUser_Page()));
      }
    }

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/forest.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const _MyAppHpmPage(),
        ),
        bottomNavigationBar: SafeArea(
            child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.grade_rounded), label: 'กลุ่ม / ต้นไม้'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'หน้าหลัก'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'ข้อมูลส่วนตัว'),
            ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.greenAccent,
                onTap: _onItemTapped,
                selectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
                unselectedItemColor: Colors.white,
                backgroundColor: Colors.black.withOpacity(0.8))),
      ),
    );
  }
}

class _MyAppHpmPage extends StatefulWidget {
  const _MyAppHpmPage({Key? key});

  @override
  State<_MyAppHpmPage> createState() => __MyAppHpmPageState();
}

class __MyAppHpmPageState extends State<_MyAppHpmPage> {
  @override
  Widget build(BuildContext context) {
    double scw = MediaQuery.of(context).size.width;
    double sch = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: scw,
        height: sch,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              bodyHome(scw, sch, context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Heading(double scw, double sch) {
  return Container(
    width: scw,
    height: sch / 15,
    alignment: Alignment.center,
    color: Colors.white.withOpacity(0),
    child: Text(
      "ข้อมูล",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
    ),
  );
}

Widget bodyHome(double scw, double sch, BuildContext context) {
  final BorderRadius BRButton = BorderRadius.circular(25);
  final Border BDB = Border.all(color: Colors.black, width: 2);
  return Container(
    height: sch - (sch / 4.5),
    width: scw,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white.withOpacity(0.4),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Heading(scw, sch),
        Tree_Button(scw, sch, BRButton, BDB, context),
        SizedBox(
          height: 30,
        ),
        Plot_Button(scw, sch, BRButton, BDB),
        SizedBox(
          height: 30,
        ),
        Group_Button(scw, sch, BRButton, BDB)
      ],
    ),
  );
}

Widget Tree_Button(double scw, double sch, BorderRadius BRButton, Border BDB,
    BuildContext context) {
  return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Home_Tree_Page()));
      },
      child: Container(
          width: scw / 1.1,
          height: sch / 7,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BRButton,
            border: BDB,
            image: DecorationImage(
                image: AssetImage("Images/tree.jpg"), fit: BoxFit.cover),
          ),
          child: Container(
            width: scw / 3,
            height: sch / 16,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BRButton, border: BDB, color: Colors.white),
            child: Text(
              "ต้นไม้",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Colors.green),
            ),
          )));
}

Widget Plot_Button(double scw, double sch, BorderRadius BRButton, Border BDB) {
  return TextButton(
      onPressed: () {},
      child: Container(
          width: scw / 1.1,
          height: sch / 7,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BRButton,
            border: BDB,
            image: DecorationImage(
                image: AssetImage("Images/plot.jpg"), fit: BoxFit.cover),
          ),
          child: Container(
            width: scw / 3,
            height: sch / 16,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BRButton, border: BDB, color: Colors.white),
            child: Text(
              "แปลง",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey),
            ),
          )));
}

Widget Group_Button(double scw, double sch, BorderRadius BRButton, Border BDB) {
  return TextButton(
      onPressed: () {},
      child: Container(
          width: scw / 1.1,
          height: sch / 7,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BRButton,
            border: BDB,
            image: DecorationImage(
                image: AssetImage("Images/group.jpg"), fit: BoxFit.cover),
          ),
          child: Container(
            width: scw / 3,
            height: sch / 16,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BRButton, border: BDB, color: Colors.white),
            child: Text(
              "กลุ่ม",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue),
            ),
          )));
}
