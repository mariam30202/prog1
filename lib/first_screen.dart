import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 105, 18, 101),
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 45,
          ),
          centerTitle: true,
          title: const Text(
            'My First App',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(Icons.settings)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

children:[
const CircleAvatar(
radius: 100,
backgroundColor: Colors. blueGrey,
backgroundImage: AssetImage('assets/ogo.jpeg')

),

              Text (
                'Mariam Maher Abdullah',
                style: TextStyle(
                  color: Color.fromARGB(255, 133, 50, 181),
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                ),
              ),


              Row(
                children: [
                   IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook_rounded),
                    color: Colors.blue,
                  ),
                  Text(
                    '@Mariam Maher Abdullah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   IconButton(
                    onPressed: () {},
                    icon:  Icon(Icons.arrow_forward_ios_outlined),
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),




 Row(
                children: [
                   IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt),
                    color: Colors.blue,
                  ),
                  Text(
                    '@Mariam Maher Abdullah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   IconButton(
                    onPressed: () {},
                    icon:  Icon(Icons.arrow_forward_ios_outlined),
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),





       Row(
                children: [
                   IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.music_note_outlined),
                    color: Colors.blue,
                  ),
                  Text(
                    '@Mariam Maher Abdullah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   IconButton(
                    onPressed: () {},
                    icon:  Icon(Icons.arrow_forward_ios_outlined),
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),       




               Row(
                children: [
                   IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.snapchat),
                    color: Colors.blue,
                  ),
                  Text(
                    '@Mariam Maher Abdullah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   IconButton(
                    onPressed: () {},
                    icon:  Icon(Icons.arrow_forward_ios_outlined),
                    color: Colors.amber,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),


            ]

          )
        )  
        );
        
  }
}