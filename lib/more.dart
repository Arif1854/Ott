import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:friendss/picker.dart';
import 'package:image_picker/image_picker.dart';

class Moree extends StatefulWidget {
  const Moree({super.key});

  @override
  State<Moree> createState() => _MoreeState();
}

class _MoreeState extends State<Moree> {

  Uint8List? _image;

  void selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 10,),
              Column(
                children: [
                  Stack(
                    children: [
                      if (_image != null) Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: MemoryImage(_image!),
                                fit: BoxFit.cover
                              )
                            ),
                          ) else Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage('assets/profile1.jpg'),),
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      Positioned(bottom: -10,child: IconButton(
                          onPressed: selectImage,
                          icon: const Icon(Icons.add_a_photo_rounded,color: Colors.blueGrey,),
                      ),
                      ),

                    ]
                  ),
                  const SizedBox(height: 10,),
                  const Text('Arif',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage('assets/profile1.jpg'),),
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Niyas',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Icon(Icons.add,color: Colors.white60,size: 50,),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Add Profile',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),)
                ],
              ),
              const SizedBox(width: 10,)
            ],
          ),
          const SizedBox(height: 30,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 100,),
              Icon(Icons.edit,color: Colors.white60,),
              Text('Manage Profile',style: TextStyle(
                color: Colors.white60,
                fontSize: 20
              ),),
              SizedBox(width: 100,)
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.white24,
            child: TextButton(onPressed: (){}, child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My List',style: TextStyle(
                  color: Colors.white54,
                  fontSize: 20
                ),),
                Icon(Icons.keyboard_arrow_right,color: Colors.white54,size: 20,)
              ],
            )),
          ),
          const SizedBox(height: 5,),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.white24,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('App Settings',style: TextStyle(
                    color: Colors.white60,
                    fontSize: 25
                  ),),
                  SizedBox(height: 30,),
                  Text('Privacy',style: TextStyle(
                    color: Colors.white60,
                    fontSize: 25
                  ),),
                  SizedBox(height: 30,),
                  Text('Help',style: TextStyle(
                    color: Colors.white60,
                    fontSize: 25
                  ),),
                  SizedBox(height: 30,),
                  Text('Sign Out',style: TextStyle(
                    color: Colors.white60,
                    fontSize: 25
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
