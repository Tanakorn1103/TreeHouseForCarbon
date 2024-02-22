import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import '../home_frist_page.dart';

class Create_Page extends StatelessWidget {
  const Create_Page({Key? key});

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 60),
              Login_data(scw, sch, context),
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
    // color: Colors.amberAccent,
    child: const Center(
      child: Text(
        "สร้างกลุ่ม",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget Login_data(double scw, double sch, BuildContext context) {
  double scw2 = scw;
  double sch2 = sch - (sch / 5.4);
  return SingleChildScrollView(
    child: Container(
      width: scw2,
      height: sch2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white.withOpacity(0.4),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Heading(scw, sch),
            data_register(scw2, sch2),
            const SizedBox(
              height: 30,
            ),
            _Button(scw2, sch2, context),
          ],
        ),
      ),
    ),
  );
}

Widget data_register(double scw2, double sch2) {
  final BoxDecoration BDText = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white.withOpacity(0.7),
  );
  return Container(
    width: scw2,
    height: sch2 / 1.5,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: scw2 / 1.5,
            decoration: BDText,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'ชื่อกลุ่ม',
                prefixIcon: Icon(Icons.group_work),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: scw2 / 1.5,
            decoration: BDText,
            child: TextField(
              controller: TextEditingController(text: 'AbcD123'),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                labelText: 'รหัสอ้างอิง',
                prefixIcon: Icon(Icons.tag),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
              ),
              readOnly: true,
            ),
          )
        ],
      ),
    ),
  );
}

Widget _Button(double scw2, double sch2, BuildContext context) {
  final TextStyle textButton = TextStyle(
    fontSize: 20,
  );
  final BorderRadius borderradius = BorderRadius.circular(15);
  final BoxDecoration bdButton =
      BoxDecoration(borderRadius: borderradius, color: Colors.white);
  final ButtonStyle BtS = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  );
  return Container(
    height: sch2 / 7,
    // color: Colors.black,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: scw2 / 2.5,
                decoration: bdButton,
                child: TextButton(
                  style: BtS,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home1_Page()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      Text('ย้อนกลับ', style: textButton),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Container(
                width: scw2 / 2.5,
                decoration: bdButton,
                child: TextButton(
                  style: BtS,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.create), // ไอคอนที่ต้องการใส่
                      Text('สร้างกลุ่ม', style: textButton),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
