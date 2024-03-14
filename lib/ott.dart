import 'package:flutter/material.dart';
import 'package:friendss/front_page.dart';
import 'package:friendss/home.dart';



class OTT extends StatefulWidget {
  const OTT({super.key});

  @override
  State<OTT> createState() => _OTTState();
}

class _OTTState extends State<OTT> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Image(image: AssetImage('assets/friendss.png')),
           const SizedBox(height: 60,),
           Container(
             height: 350,
             width: 350,
             color: Colors.black,
             child: Column(
               children: [
                 Row(
                   children: [
                     GestureDetector(
                       onTap : (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const FrontPage()));
                       } ,
                       child: Container(
                         height: 160,
                         width: 160,
                         decoration: BoxDecoration(
                           color: Colors.white24,
                           borderRadius: BorderRadius.circular(30),
                           image: const DecorationImage(image: AssetImage('assets/profile1.jpg'))
                         ),
                       ),
                     ),
                     const SizedBox(width: 10,),
                     GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Homee()));
                       },
                       child: Container(
                         height: 160,
                         width: 160,
                         decoration: BoxDecoration(
                             color: Colors.white24,
                             borderRadius: BorderRadius.circular(30),
                             image: const DecorationImage(image: AssetImage('assets/profile2.jpg'))
                         ),
                       ),
                     ),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Row(
                   children: [
                     GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Homee()));
                       },
                       child: Container(
                         height: 160,
                         width: 160,
                         decoration: BoxDecoration(
                             color: Colors.white24,

                             borderRadius: BorderRadius.circular(30),
                             image:
                             const DecorationImage(image: AssetImage('assets/profile3.jpg'))
                         ),
                       ),
                     ),
                     const SizedBox(width: 10,),
                     const SizedBox(
                         height: 160,
                         width: 160,
                         child: Icon(Icons.add_circle_outline,size: 100,color: Colors.white54,))
                   ],
                 )
               ],
             ),
           ),
           const SizedBox(height: 50,),
           const Text('Choose Yours',style: TextStyle(
             color: Colors.white,
             fontSize: 35,
             fontWeight: FontWeight.w300,
             fontStyle: FontStyle.italic
           ),)
         ],
       ),
      ),
    );
  }
}
