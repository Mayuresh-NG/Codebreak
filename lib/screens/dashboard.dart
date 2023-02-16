import 'package:codebreakk/screens/vehicles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(child: Text('user',style: TextStyle(color: Colors.white,fontSize: 20),)),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.black,),
              title: const Text('Dashboard'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(Icons.gas_meter_rounded, color: Colors.black,),
              title: const Text('Fill-ups'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_repair_service, color: Colors.black,),
              title: const Text('Services'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Other Expenses'),
              leading: const Icon(Icons.attach_money, color: Colors.black,),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(Icons.trip_origin_sharp, color: Colors.black,),
              title: const Text('Trips'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(Icons.electric_car_outlined, color: Colors.black,),
              title: const Text('Daily Mileage'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(Icons.analytics, color: Colors.black,),
              title: const Text('Vehicle inspection'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: const Icon(Icons.fire_truck, color: Colors.black,),
              title: const Text('Vehicles'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Vehicle(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on_outlined, color: Colors.black,),
              title: const Text('Live location'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 216,
                    height: 53,
                    color: const Color(0xffd9d9d9),
                    child: ElevatedButton(
                      // Within the `FirstScreen` widget
                        onPressed: () {
                          // Navigate to the second screen using a named route.
                          Navigator.pushNamed(context, '/dashboard');
                        },
                        child: const Text('Dashboard',style:TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.black,
                            elevation: 0
                        )
                    ),
                  ),
                  Container(
                    width: 216,
                    height: 53,
                    color: const Color(0xffd9d9d9),
                    child: ElevatedButton(
                      // Within the `FirstScreen` widget
                        onPressed: () {
                          // Navigate to the second screen using a named route.
                          Navigator.pushNamed(context, '/stats');
                        },
                        child: const Text('Stats',style:TextStyle(color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:const Color(0xffffd500),
                            elevation: 0
                        )
                    ),
                  )

                  //
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 380,
                child: TextField(
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      color: Colors.black
                  ),
                  decoration: InputDecoration(
                    hintText: 'From',
                    filled: true,
                    fillColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 380,
                child: TextField(
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      color: Colors.black
                  ),
                  decoration: InputDecoration(
                    hintText: 'To',
                    filled: true,
                    fillColor: Colors.grey,
                     enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.black),
                         borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {},

              child: const Text('Search',style: TextStyle(fontSize: 18),),
            ),
          ),

        ],

      ),
    );
  }
}
