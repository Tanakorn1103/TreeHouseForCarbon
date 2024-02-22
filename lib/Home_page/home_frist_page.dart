import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'Data_page/data_user_page.dart';
import 'create_join_page/create_group_page.dart';
import 'create_join_page/join_group_page.dart';
import 'group_tree_page/Group_Tree_page.dart';
// import 'package:flutter/services.dart';

class Home1_Page extends StatelessWidget {
  const Home1_Page({Key? key});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;

    void _onItemTapped(int index) {
      if (index == 2) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DataUser_Page()));
      } else if (index == 0) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Group_Tree_Page()));
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
              Heading(scw, sch),
              bodyHome(scw, sch, context)
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
    color: Colors.black.withOpacity(0.2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: scw / 2,
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "THC",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )),
        Container(
          width: scw / 2,
          alignment: Alignment.bottomRight,
          child: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Text(
              "ธนากรณ์ สูนพันโน",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget bodyHome(double scw, double sch, BuildContext context) {
  final Color colorCon = Colors.white.withOpacity(0.7);
  return Container(
    height: sch - (sch / 4.5),
    width: scw,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white.withOpacity(0.4),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: sch / 2.5,
          width: scw / 1.1,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: colorCon,
          ),
          child: InteractiveViewer(child: circularBarChart(scw, sch)),
        ),
        const SizedBox(
          height: 20,
        ),
        carbon_me(scw, sch, colorCon),
        const SizedBox(
          height: 40,
        ),
        _Button(scw, sch, context),
        // const SizedBox(
        //   height: 10,
        // ),
        // detail_group(scw, sch, colorCon)
      ],
    ),
  );
}

Widget carbon_me(double scw, double sch, Color colorCon) {
  return Container(
    height: sch / 8,
    width: scw / 1.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: colorCon,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "ค่าร์บอนเครดิตของฉัน",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: scw / 3,
          height: sch / 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.green,
          ),
          child: const Text(
            "520 / Kco2",
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}

Widget _Button(double scw, double sch, BuildContext context) {
  final TextStyle textButton = TextStyle(
    fontSize: 18,
  );
  final BoxDecoration bdButton = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.blue.withOpacity(0.8));
  final ButtonStyle BtS = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  );
  double widthButton = scw / 2.5;
  return Container(
      height: sch / 10,
      width: scw / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        // color: Colors.white,
      ),
      child: Container(
        width: scw,
        height: sch / 3,
        // color: Colors.black,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: widthButton,
                decoration: bdButton,
                child: TextButton(
                  style: BtS,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Create_Page()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.create_outlined),
                      Text('สร้างกลุ่ม', style: textButton),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: widthButton,
                decoration: bdButton,
                child: TextButton(
                  style: BtS,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.group_add),
                      Text('เข้าร่วมกลุ่ม', style: textButton),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Join_Page()));
                  },
                ),
              )
            ],
          ),
        ),
      ));
}

Widget circularBarChart(double scw, double sch) {
  final BorderRadius borderRadius = BorderRadius.circular(2);
  final titles = [
    '',
    'เรารักต้นไม้',
    'ต้นไม้เพื่อโลก',
    'ต้นไม้ของเรา',
    'บ้านท่าข้องเหล็ก',
    'ธกส',
  ];
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: AspectRatio(
      aspectRatio: 2.5,
      child: Container(
        width: 3000,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          // color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              barGroups: [
                BarChartGroupData(x: 1, barRods: [
                  BarChartRodData(
                      y: 10000,
                      width: 30,
                      colors: [Colors.blue],
                      borderRadius: borderRadius),
                ]),
                BarChartGroupData(x: 2, barRods: [
                  BarChartRodData(
                      y: 14000,
                      width: 30,
                      colors: [Colors.green],
                      borderRadius: borderRadius),
                ]),
                BarChartGroupData(x: 3, barRods: [
                  BarChartRodData(
                      y: 13000,
                      width: 30,
                      colors: [Colors.orange],
                      borderRadius: borderRadius),
                ]),
                BarChartGroupData(x: 4, barRods: [
                  BarChartRodData(
                      y: 12700,
                      width: 30,
                      colors: [Colors.black],
                      borderRadius: borderRadius),
                ]),
                BarChartGroupData(x: 5, barRods: [
                  BarChartRodData(
                      y: 14500,
                      width: 30,
                      colors: [Colors.grey],
                      borderRadius: borderRadius),
                ]),
              ],
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  margin: 10,
                  getTitles: (double value) {
                    if (value.toInt() >= 0 && value.toInt() < titles.length) {
                      return titles[value.toInt()];
                    }
                    return '';
                  },
                ),
                rightTitles: SideTitles(showTitles: false),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget detail_group(double scw, double sch, Color colorCon) {
  List<PieChartSectionData> pieChartData = [
    PieChartSectionData(
      value: 4000, // Value of this section
      color: Colors.blue.withOpacity(0.7), // Color of this section
      title: 'คาร์บอนของฉัน\n' + "4000", // Optional title for this section
      radius: 80, // Radius of this section
      titleStyle: TextStyle(color: Colors.white), // Style for the title
    ),
    PieChartSectionData(
      value: 10000,
      color: Colors.green,
      title: 'คาร์บอนของกลุ่ม\n' + '6000',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
  ];
  return Container(
    height: sch / 3,
    width: scw / 1.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: colorCon,
    ),
    child: PieChart(
      PieChartData(sections: pieChartData),
    ),
  );
}
