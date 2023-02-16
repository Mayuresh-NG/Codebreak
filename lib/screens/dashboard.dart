import 'package:codebreakk/screens/dr.dart';
import 'package:codebreakk/screens/vehicles.dart';
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
              leading: const Icon(Icons.account_box_outlined, color: Colors.black,),
              title: const Text('driver details'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Assigned(),
                  ),
                );
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
      body: SingleChildScrollView(
        child: Column(
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
                 Container(
                  height: 20,
                 color: Colors.black,),
                Container(
                  color: Colors.black,
                  child: const TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                        color: Colors.black
                    ),
                    decoration: InputDecoration(
                      hintText: 'From',
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: 20,
                ),
                const TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black
                  ),
                  decoration: InputDecoration(
                    hintText: 'To',
                    filled: true,
                    fillColor: Colors.grey,
                     enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Colors.black,
              height: 10,
            ),
            Container(
              color: Colors.black,
              width: 500,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {},

                child: const Text('Search',style: TextStyle(fontSize: 18),),
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
                  hintText: 'Truck id',
                  filled: true,
                  fillColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 380,
              child: TextField(
                cursorColor: Colors.black,
                style: const TextStyle(
                    color: Colors.black
                ),
                decoration: InputDecoration(
                  hintText: 'Dispatch time',
                  filled: true,
                  fillColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 380,
              child: TextField(
                cursorColor: Colors.black,
                style: const TextStyle(
                    color: Colors.black
                ),
                decoration: InputDecoration(
                  hintText: 'Arrival time',
                  filled: true,
                  fillColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 380,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {},

                child: const Text('Submit',style: TextStyle(fontSize: 18),),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              height: 200,
              width: double.maxFinite,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Stack(
                      children: const <Widget>[
                        Icon(Icons.account_box_outlined),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Driver Performance analytics',style: TextStyle(fontSize: 20)),
                        )
                      ]),
                ),
                elevation: 5,
              ),
            ),
          ],

        ),
      ),
    );
  }
}
