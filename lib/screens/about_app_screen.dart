import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAppScreen extends StatefulWidget {
  /*const*/ AboutAppScreen({Key? key,required this.massage}) : super(key: key);

  final String massage;
  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  // String massage = 'No Massage';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print('initState-1');
    // Future.delayed(Duration.zero,(){
    //   print('initState-2');
    //   ModalRoute? modalRoute =ModalRoute.of(context);
    //   // Flow Analysis
    //   if(modalRoute!=null) {
    //     // if (modalRoute.settings.arguments is Map<String, dynamic>) {
    //     Map<String, dynamic> map = modalRoute.settings.arguments as Map<
    //         String,
    //         dynamic>;
    //     if (map.containsKey('massage')) {
    //       setState(()=> massage = map['massage']);
    //     }
    //     // }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    // print('build');
    // ModalRoute? modalRoute =ModalRoute.of(context);
    // // Flow Analysis
    // if(modalRoute!=null) {
    //   // if (modalRoute.settings.arguments is Map<String, dynamic>) {
    //     Map<String, dynamic> map = modalRoute.settings.arguments as Map<
    //         String,
    //         dynamic>;
    //     if (map.containsKey('massage')) {
    //       massage = map['massage'];
    //     }
    //   // }
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'عن التطبيق',
          style: GoogleFonts.arefRuqaa(),
        ),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Center(
        child: Text(
            widget.massage,
          style: GoogleFonts.arefRuqaa(
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
