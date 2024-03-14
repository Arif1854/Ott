import 'package:flutter/material.dart';
import 'package:friendss/home.dart';
import 'package:friendss/video.dart';



class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage('assets/bb.png'),fit: BoxFit.cover)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: IconButton(onPressed: () {
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Homee()));
                                  });
                                }, icon: const Icon(Icons.keyboard_arrow_left,color: Colors.white,))),
                          )
                        ],
                      ),
                    ),
                    IconButton(onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const video()));
                      });
                    }, icon: const Icon(Icons.play_circle,color: Colors.white60,size: 100,))
                  ]
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Breaking Bad',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 30
              ),),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(
                      child: Text('Action',style: TextStyle(
                        color: Colors.white54
                      ),),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(
                      child: Text('Chemistry',style: TextStyle(
                        color: Colors.white54
                      ),),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(
                      child: Text('Thriller',style: TextStyle(
                        color: Colors.white54
                      ),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  SizedBox(width: 10,),
                  Text('About',style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 15
                  ),),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: TextStyle(
                  color: Colors.white38
                ),),
              ),
              const Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Cast',style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 15
                  ),),
                ],
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                  SizedBox(width : 10),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius:40,
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius:40,
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius:40,
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius:40,
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius:40,
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Recommended for you',style: TextStyle(
                color: Colors.white
              ),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 130,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(image: AssetImage('assets/st.png'),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(image: AssetImage('assets/fimage.png'),fit: BoxFit.cover)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
