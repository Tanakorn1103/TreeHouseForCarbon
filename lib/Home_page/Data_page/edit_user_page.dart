import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data_user_page.dart';

class Edit_Page extends StatelessWidget {
  const Edit_Page({Key? key});

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
        "แก้ไขข้อมูล",
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
      color: Colors.white.withOpacity(0.7));
  return Container(
    width: scw2,
    height: sch2 / 1.5,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: scw2 / 2.3,
                decoration: BDText,
                child: TextField(
                  controller: TextEditingController(text: 'ธนากรณ์'),
                  decoration: InputDecoration(
                    labelText: 'ชื่อ',
                    prefixIcon: Icon(Icons.account_circle),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: scw2 / 2.3,
                decoration: BDText,
                child: TextField(
                  controller: TextEditingController(text: 'สูนพันโน'),
                  decoration: InputDecoration(
                    labelText: 'นามสกุล',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: scw2 / 1.1,
            decoration: BDText,
            child: TextField(
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9]+$')),
              ],
              decoration: const InputDecoration(
                labelText: 'รหัสผ่านใหม่',
                prefixIcon: Icon(Icons.password),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
              ),
              obscureText: true,
              obscuringCharacter: '*',
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: scw2 / 1.1,
            decoration: BDText,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(text: 'tanakorn@gmail.com'),
              decoration: const InputDecoration(
                labelText: 'อีเมลล์',
                prefixIcon: Icon(Icons.email_outlined),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: scw2 / 1.7,
                decoration: BDText,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  controller: TextEditingController(text: '0935457508'),
                  decoration: const InputDecoration(
                    labelText: 'เบอร์โทร',
                    prefixIcon: Icon(Icons.phone_android_outlined),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: scw2 / 3.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'ส่ง',
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: scw2 / 1.7,
                height: sch2 / 15,
                decoration: BDText,
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  maxLines: 1,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: const InputDecoration(
                      labelText: 'รหัสยืนยัน',
                      prefixIcon: Icon(Icons.check),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: InputBorder.none,
                      counterText: ''),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: scw2 / 3.3,
                height: sch2 / 15,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: scw2 / 1.1,
            height: sch2 / 8,
            decoration: BDText,
            child: TextField(
              maxLines: null,
              controller: TextEditingController(
                  text:
                      '257 หมู่ 1 ต. หนองหิน อ. หนองกุงศรี จ. กาฬสินธุ์ 46220'),
              decoration: InputDecoration(
                labelText: 'ที่อยู่',
                prefixIcon: Icon(Icons.home_filled),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: InputBorder.none,
              ),
            ),
          ),
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
                          builder: (context) => const DataUser_Page()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back), // ไอคอนที่ต้องการใส่
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
                      Icon(Icons.save_as_outlined), // ไอคอนที่ต้องการใส่
                      Text('แก้ไข', style: textButton),
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
