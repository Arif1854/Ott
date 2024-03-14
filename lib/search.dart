import 'package:flutter/material.dart';

class Searchh extends StatefulWidget {
  const Searchh({super.key});

  @override
  State<Searchh> createState() => _SearchhState();
}

class _SearchhState extends State<Searchh> {

  List a = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                height: 55,
                width: double.infinity,
                color: Colors.white24,
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Search....',
                    hintStyle: TextStyle(
                      color: Colors.white60
                    ),
                    prefixIcon: Icon(Icons.search,color: Colors.white54,),
                    suffixIcon: Icon(Icons.cancel_outlined,color: Colors.white54,size: 30,),
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage('assets/st.png'),fit: BoxFit.cover),
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage('assets/bb.png'),fit: BoxFit.cover),
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage('assets/fimage.png'),fit: BoxFit.cover),
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
