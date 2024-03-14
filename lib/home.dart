import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:friendss/mov_des/description.dart';
import 'package:friendss/mov_des/fdescription.dart';
import 'package:friendss/mov_des/sdescription.dart';
import 'package:friendss/see_more/see_more.dart';
import 'package:friendss/see_more/see_tv.dart';


class Homee extends StatefulWidget {

  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}



class _HomeeState extends State<Homee> {

  bool isDarkMode = true;

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }
  
  int currentIndex = 0;

  List a = [
    'assets/fimage.png',
    'assets/bb.png',
    'assets/st.png',
  ];

  List b = [
    'assets/profile1.jpg',
    'assets/profile2.jpg',
    'assets/profile3.jpg',
  ];

  List c = [
    const FDescription(),
    const Description(),
    const SDescription()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white60,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 5,),
                  CarouselSlider.builder(

                      itemCount: a.length,
                      itemBuilder: (BuildContext context, int index, pageIndex){
                        return GestureDetector(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => c[index]));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black,
                                width: 2
                              ),
                                image: DecorationImage(image: AssetImage(a[index]),
                                    fit: BoxFit.cover)
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                          height: 450,
                          aspectRatio: 8/9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration: const Duration(milliseconds: 300),
                          autoPlayCurve: Curves.linear,
                          enlargeCenterPage: true,
                          enlargeFactor: 0,

                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          }
                      )),
                  const SizedBox(height: 30,),
                  IconButton(
                    onPressed: _toggleTheme,
                    icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode_rounded),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: isDarkMode ? Colors.white : Colors.black)
                        ),
                        child: const Center(
                          child: Text('Movies',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 30
                          ),),
                        ),
                      ),
                      TextButton(onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SeeMore()));
                        });
                      }, child: Text('See More',style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black
                      ),))
                    ],
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 10,),
                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(image: AssetImage('assets/st.png'),fit: BoxFit.cover)
                        ),
                      ),
                      const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(image: AssetImage('assets/fimage.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(image: AssetImage('assets/bb.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(image: AssetImage('assets/st.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(image: AssetImage('assets/fimage.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(image: AssetImage('assets/bb.png'),fit: BoxFit.cover)
                          ),
                        ),
                    ],),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: isDarkMode ? Colors.white : Colors.black)
                    ),
                    child: const Center(
                      child: Text('Language',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 30
                      ),),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 5,),
                        Container(
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                              color: isDarkMode ? Colors.white38 : Colors.black38,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(
                            child: Text('TAMIL',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                              color: isDarkMode ? Colors.white38 : Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(
                            child: Text('ENGLISH',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                               color: isDarkMode ? Colors.white38 : Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(
                            child: Text('MALAYALAM',style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 5,),
                        // SizedBox(width: 10,),
                        // Container(
                        //   height: 170,
                        //   width: 150,
                        //   color: Colors.white24,
                        // ),
                        // SizedBox(width: 10,),
                        // Container(
                        //   height: 170,
                        //   width: 150,
                        //   color: Colors.white24,
                        // ),
                        // SizedBox(width: 10,),
                      ],),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2,color: isDarkMode ? Colors.white : Colors.black)
                        ),
                        child: const Center(
                          child: Text('TV shows',style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontSize: 30
                          ),),
                        ),
                      ),
                      TextButton(onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SeeTv()));
                        });
                      }, child: Text('See More',style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black
                      ),))
                    ],
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 10,),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage('assets/bb.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/st.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/fimage.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/bb.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/st.png'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/fimage.png'),fit: BoxFit.cover)
                          ),
                        ),
                      ],),
                  ),
                  const SizedBox(height: 30,)
                ],
              ),
            ),
          ),

      ),
    );
  }
}
