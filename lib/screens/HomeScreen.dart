import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 368,
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Center(
            child: Image.asset("images/tr.png", height: 300,
                width: 300),
          ),
          Container(
            width: 368,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffffd500),
            ),
            padding: const EdgeInsets.only(top: 17, bottom: 15, ),
            child: ElevatedButton(
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context,'/thirds');
              },
              child: const Text('Sign up',style:TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xffffd500),
                elevation: 0
              )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 368,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffffd500),
            ),
            padding: const EdgeInsets.only(top: 17, bottom: 15, ),
            child: ElevatedButton(
              // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Sign in',style:TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xffffd500),
                    elevation: 0
                )
            ),
          ),
        ],
      ),
    );
  }
}

