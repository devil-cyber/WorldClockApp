import 'package:flutter/material.dart';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void  setupWorldTime() async {
    WorldTime world= WorldTime(location:'India',flag:'india.png',url:'Asia/Kolkata');
    await world.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments:{
      'location': world.location,
      'flag': world.flag,
      'time': world.time,
      'isDayTime' : world.isDayTime,

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Center(
        child:SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ) ,
      )
    );
  }
}
