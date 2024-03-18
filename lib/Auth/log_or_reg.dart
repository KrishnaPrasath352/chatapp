import 'package:chatapp/pages/loginpage.dart';
import 'package:chatapp/pages/registerpage.dart';
import 'package:flutter/material.dart';

class LogOrReg extends StatefulWidget {
  const LogOrReg({super.key});

  @override
  State<LogOrReg> createState() => _LogOrRegState();
}

class _LogOrRegState extends State<LogOrReg> {
  @override
  bool showloginpage=true;

  void togglepage()
  {
    setState(() {
      showloginpage=!showloginpage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showloginpage)
      {
        return loginPage(onTap: togglepage,);
      }
    else
      {
        return RegisterPage(onTap: togglepage,);
      }
  }
}

