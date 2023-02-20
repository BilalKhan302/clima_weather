import 'package:flutter/material.dart';
import 'location_screen.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  State<LoadingScreen> createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    super.initState();
    getLocation();
  }
  void getLocation()async{
   Location location=Location();
   await location.getCurrentLocation();
   print(location.latitude);
   print(location.longitude);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
