import 'package:flutter/material.dart';
import 'package:worldclock/packages/choose_location.dart';
import 'package:worldclock/packages/loading.dart';
import 'package:worldclock/packages/home.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },
));