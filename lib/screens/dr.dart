import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assigned extends StatelessWidget {

  const Assigned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
      body: Row(
        children: [
          Container(
            width: 216,
            height: 53,
            color: Color(0xffd9d9d9),
            child: ElevatedButton(
              // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/assign');
                },
                child: const Text('Assigned',style:TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.black,
                    elevation: 0
                )
            ),
          ),
          Container(
            width: 216,
            height: 53,
            color: Color(0xffd9d9d9),
            child: ElevatedButton(
              // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Unassigned',style:TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xffffd500),
                    elevation: 0
                )
            ),
          )
          //
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffffd500),
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}