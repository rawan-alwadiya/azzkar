import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print('InitState');
    Future.delayed(Duration(seconds: 3),() {
      // print('Finished');
      // Navigator.pushNamed(context, '/app_screen');
      Navigator.pushReplacementNamed(context, '/app_screen');
      // Navigator.popAndPushNamed(context,'/app_screen' );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // print('build');
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
             colors: [
               Colors.pink.shade100,
               Colors.blue.shade300,
             ],
          )
        ),
        child: Text('مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
