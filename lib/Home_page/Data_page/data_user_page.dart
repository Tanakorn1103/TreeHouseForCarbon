import 'package:flutter/material.dart';
import '../home_frist_page.dart';
import '../../page/login_page.dart';
import 'edit_user_page.dart';
import '../group_tree_page/Group_Tree_page.dart';
// import 'package:flutter/services.dart';

class DataUser_Page extends StatelessWidget {
  const DataUser_Page({Key? key});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 2;

    void _onItemTapped(int index) {
      if (index == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Home1_Page()));
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
    color: Colors.white.withOpacity(0.3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: scw / 2,
          alignment: Alignment.bottomRight,
          child: const Text(
            "ID : 00001",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    ),
  );
}

Widget bodyHome(double scw, double sch, BuildContext context) {
  double h = 4;
  double conH = (sch / h) / 4;
  final EdgeInsets edgLeft = EdgeInsets.only(left: 10);
  final EdgeInsets edgAll = EdgeInsets.fromLTRB(10, 10, 0, 0);
  final TextStyle textS = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  final Color translucentWhite = Colors.white.withOpacity(0.8);
  final Alignment AText = Alignment.centerLeft;
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
          width: scw / 1.1,
          height: sch / h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: translucentWhite,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: conH,
                // color: Colors.amber,
                alignment: AText,
                margin: edgLeft,
                child: Row(
                  children: [
                    Icon(Icons.account_circle),
                    SizedBox(width: 8), // ขยับ Icon และ Text ด้วย SizedBox
                    Text(
                      "ชื่อ - นามสกุล : " + "ธนากรณ์ สูนพันโน",
                      style: textS,
                    ),
                  ],
                ),
              ),
              Container(
                height: conH,
                // color: Colors.black,
                alignment: AText,
                margin: edgLeft,
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 8), // ขยับ Icon และ Text ด้วย SizedBox
                    Text(
                      "ชื่อผู้ใช้ : " + "tanakorn",
                      style: textS,
                    )
                  ],
                ),
              ),
              Container(
                height: conH,
                // color: Colors.amber,
                alignment: AText,
                margin: edgLeft,
                child: Row(
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(width: 8), // ขยับ Icon และ Text ด้วย SizedBox
                    Text(
                      "อีเมลล์ : " + "tanakorn@gmail.com",
                      style: textS,
                    )
                  ],
                ),
              ),
              Container(
                height: conH,
                // color: Colors.black,
                alignment: AText,
                margin: edgLeft,
                child: Row(
                  children: [
                    Icon(Icons.phone_android_outlined),
                    SizedBox(width: 8), // ขยับ Icon และ Text ด้วย SizedBox
                    Text(
                      "เบอร์โทร : " + "0935457508",
                      style: textS,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          width: scw / 1.1,
          height: sch / 7,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: translucentWhite,
          ),
          child: Padding(
            padding: edgAll,
            child: Row(
              children: [
                Icon(Icons.home_filled),
                SizedBox(width: 8), // ขยับ Icon และ Text ด้วย SizedBox
                Expanded(
                  child: Text(
                    "257 หมู่ 1 ต. หนองหิน อ. หนองกุงศรี จ. กาฬสินธุ์ 46220",
                    style: textS,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: sch / 4,
          width: scw / 1.1,
          // color: Colors.black,
          child: _Button(scw, sch, context),
        )
      ],
    ),
  );
}

Widget _Button(double scw2, double sch2, BuildContext context) {
  final TextStyle textButton = TextStyle(
    fontSize: 18,
  );
  final BoxDecoration bdButton = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.blue.withOpacity(0.8));
  final ButtonStyle BtS = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  );
  return Container(
    width: scw2,
    height: sch2 / 3,
    // color: Colors.black,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: scw2 / 2,
            decoration: bdButton,
            child: TextButton(
              style: BtS,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Edit_Page()));
                ;
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit), // ไอคอนที่ต้องการใส่
                  Text('แก้ไขข้อมูล', style: textButton),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: scw2 / 2,
            decoration: bdButton,
            child: TextButton(
              style: BtS,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout_rounded), // ไอคอนที่ต้องการใส่
                  Text('ออกจากระบบ', style: textButton),
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Login_Page()));
              },
            ),
          )
        ],
      ),
    ),
  );
}
