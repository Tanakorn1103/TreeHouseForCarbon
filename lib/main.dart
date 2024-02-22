import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const Login_Page());
  });
}
