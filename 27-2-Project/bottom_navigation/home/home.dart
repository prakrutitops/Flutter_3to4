
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../../../constants.dart';

class AdminHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AdminHomePage();
  }
}

class AdminHomePage extends State<AdminHome> {

  @override
  Widget build(BuildContext context) {

      return Scaffold
      (
        backgroundColor: kLightGold,
      );
  }
}
