import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:azzkar/screens/about_app_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  int _counter = 0;
  String _content = 'استغفر الله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(()=>_counter++);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(
          color: Colors.black,
         ),
        ),
        actions: [
          IconButton(
              onPressed: ()=>Navigator.push(context,
                MaterialPageRoute(builder: (context)=> AboutAppScreen(
                  massage: 'تطبيق أذكار',
                ),
               ),
              ),
              icon: const Icon(Icons.info),
          ),
          PopupMenuButton<String>(
            onSelected:(String value){
             if(value != _content) {
               setState(() {
                 _content = value;
                 _counter = 0;
               });
             }
            },
              onCanceled:(){},
              itemBuilder: (context){
            return [
               PopupMenuItem(
                value: 'استغفر الله',
                 height:20,
                child: Text(
                  'استغفر الله',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 13,
                    color:Colors.black,),
                ),
               ),
              PopupMenuDivider(),
               PopupMenuItem(
                value: 'الحمد لله',
                height:20,
                child:  Text(
                  'الحمد لله',
                  style: GoogleFonts.arefRuqaa(
                  fontSize: 13,
                  color:Colors.black,),
                ),
              ),
              PopupMenuDivider(),
               PopupMenuItem(
                value: 'سبحان الله',
                height:20,
                child: Text(
                  'سبحان الله',
                  style: GoogleFonts.arefRuqaa(
                  fontSize: 13,
                  color:Colors.black,),
                ),
              ),
            ];
          }
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue.shade100,
              Colors.pink.shade100,
            ],
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.grey,
                // shape: BoxShape.rectangle,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: const NetworkImage('https://cdn.salla.sa/gDZb/RwJ5QK6iS4lNTkJYDQOS4lSIXYF5YzmrBowKojl5.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Card(
              margin: const EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
              bottom: 15,
              ),
              clipBehavior: Clip.antiAlias,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                   Expanded(
                    child: Text(
                      _content,
                    textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: Text(
                        _counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                     Expanded(
                       flex: 2,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary:Colors.teal.shade800,
                           shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadiusDirectional.only(
                               bottomStart: Radius.circular(10),
                             ),
                           ),
                         ),
                          onPressed: (){
                            // _counter+=1;
                            setState(()=>++_counter);
                            print('Counter:$_counter');
                          },
                          child: Text(
                              'تسبيح',
                            style: GoogleFonts.arefRuqaa(),
                          ),
                    ),
                     ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade200,
                        shape:  const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: (){
                        setState(()=>_counter=0);
                      },
                      child: Text(
                        'اعادة',
                        style: GoogleFonts.arefRuqaa(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
