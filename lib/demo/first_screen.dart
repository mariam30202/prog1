


import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('contaner demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            

            Container(
              //margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
             // height: 200,
             width: double.infinity ,
             decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              //shape: BoxShape.circle,
             
             ),
             
             child: Center(child: Text('hello flutter',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
            ),


Row(
  children: [
    const Text('data'),
  ],
),

Container(
             // margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
             // height: 200,
             width: double.infinity ,
             decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              //shape: BoxShape.circle,
             
             ),
             
             child: Center(child: Text('hello flutter',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
            ),















          ],
        ),
      ),
    );
  }
}