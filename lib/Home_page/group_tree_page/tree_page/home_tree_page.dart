import 'package:flutter/material.dart';
import '../Group_Tree_page.dart';
// import 'package:flutter/services.dart';

class Home_Tree_Page extends StatelessWidget {
  const Home_Tree_Page({Key? key});

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
              SizedBox(
                height: 30,
              ),
              Heading(scw, sch, context),
              Expanded(
                  child: SingleChildScrollView(
                child: bodyHome(scw, sch, context),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget Heading(double scw, double sch, BuildContext context) {
  final TextStyle textButton = TextStyle(
    fontSize: 14,
  );
  final BoxDecoration bdButton = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.blue.withOpacity(0.8));
  final ButtonStyle BtS = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  );
  return Container(
    width: scw,
    height: sch / 13,
    color: Colors.black.withOpacity(0.1),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: scw / 3,
          height: sch / 20,
          decoration: bdButton,
          child: TextButton(
            style: BtS,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Text('ย้อนกลับ', style: textButton),
              ],
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Group_Tree_Page()));
            },
          ),
        ),
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
  final BorderRadius BRButton = BorderRadius.circular(25);
  final Border BDB = Border.all(color: Colors.black, width: 2);
  List<Widget> widgets = [];
  for (int i = 0; i < 30; i++) {
    if (i == 0) {
      widgets.add(new_tree(scw, sch, BRButton, BDB));
    } else {
      widgets.add(data_tree(scw, sch, BRButton, BDB));
    }
  }
  return Column(
    children: widgets,
  );
}

Widget new_tree(double scw, double sch, BorderRadius BRButton, Border BDB) {
  return TextButton(
      onPressed: () {},
      child: Container(
          width: scw / 1.5,
          height: sch / 15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BRButton,
            border: BDB,
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text(
                "เพิ่มต้นไม้",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ],
          )));
}

Widget data_tree(double scw, double sch, BorderRadius BRButton, Border BDB) {
  return TextButton(
      onPressed: () {},
      child: Container(
          width: scw / 1.5,
          height: sch / 15,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              borderRadius: BRButton,
              border: BDB,
              color: Colors.green.withOpacity(0.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_right),
              Text(
                "ต้นไม้",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ],
          )));
}
