import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'registter_page.dart';
import '../Home_page/home_frist_page.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

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
                    image: AssetImage("Images/forest.jpg"), fit: BoxFit.cover)),
            child: const _MyAppHpmPage()),
      ),
    );
  }
}

class _MyAppHpmPage extends StatefulWidget {
  const _MyAppHpmPage({super.key});

  @override
  State<_MyAppHpmPage> createState() => __MyAppHpmPageState();
}

class __MyAppHpmPageState extends State<_MyAppHpmPage> {
  @override
  Widget build(BuildContext context) {
    double scw = MediaQuery.of(context).size.width;
    double sch = MediaQuery.of(context).size.height / 1.2;
    return Center(
        child: Container(
      width: scw,
      height: sch,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Heading(scw, sch),
            Login_data(scw, sch, context),
          ],
        ),
      ),
    ));
  }
}

Widget Heading(double scw, double sch) {
  return Container(
      width: scw,
      height: sch / 5,
      child: const Center(
        child: Text(
          "THC",
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ),
      ));
}

Widget Login_data(double scw, double sch, BuildContext context) {
  double scw2 = scw;
  double sch2 = sch - (sch / 5);
  return Container(
      width: scw2,
      height: sch2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white.withOpacity(0.4)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [mail_password(scw2, sch2), _Button(scw2, sch2, context)],
        ),
      ));
}

Widget mail_password(double scw2, double sch2) {
  final EdgeInsets EIText = EdgeInsets.symmetric(horizontal: 16);
  final InputBorder IBText = InputBorder.none;
  final TIF = <TextInputFormatter>[
    FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9]+$'))
  ];
  final BoxDecoration BDText = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white.withOpacity(0.7),
  );
  return Container(
      width: scw2,
      height: sch2 / 1.5,
      // color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            //E_mail /////////////////////////////////////////////////////
            Container(
              width: scw2 / 1.1,
              decoration: BDText,
              child: TextField(
                inputFormatters: TIF,
                decoration: InputDecoration(
                  labelText: 'ชื่อผู้ใช้',
                  prefixIcon: Icon(Icons.person),
                  contentPadding: EIText,
                  border: IBText,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // Password /////////////////////////////////////////////////////
            Container(
              width: scw2 / 1.1,
              decoration: BDText,
              child: TextField(
                inputFormatters: TIF,
                decoration: InputDecoration(
                  labelText: 'รหัสผ่าน',
                  prefixIcon: Icon(Icons.password),
                  contentPadding: EIText,
                  border: IBText,
                ),
                obscureText: true,
                obscuringCharacter: '*',
              ),
            ),
          ],
        ),
      ));
}

Widget _Button(double scw2, double sch2, BuildContext context) {
  final TextStyle textButton = TextStyle(
    fontSize: 25,
  );
  final BoxDecoration BDButton = BoxDecoration(
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: scw2 / 1.5,
            decoration: BDButton,
            child: TextButton(
              style: BtS,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home1_Page()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login), // ไอคอนที่ต้องการใส่
                  Text('เข้าสู่ระบบ', style: textButton),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: scw2 / 1.5,
            decoration: BDButton,
            child: TextButton(
              style: BtS,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.assignment_ind_outlined), // ไอคอนที่ต้องการใส่
                  Text('สมัครสมาชิก', style: textButton),
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Register_Page()));
              },
            ),
          )
        ],
      ),
    ),
  );
}
