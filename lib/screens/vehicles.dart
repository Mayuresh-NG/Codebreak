import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: const FabExample(),
    );
  }
}

class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left:10),
          child: const Text('Add/Register vehicle',style: TextStyle(color: Colors.white),),
        ),
      ),
      body: const Center(child: Text('')),
      // An example of the floating action button.
      //
      // https://m3.material.io/components/floating-action-button/specs
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  TextEditingController nameController = TextEditingController();

  void addItemToList(){
    setState(() {
      names.insert(0,nameController.text);
      msgCount.insert(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - googleflutter.com'),
        ),
        body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contact Name',
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          color: msgCount[index]>=10? Colors.blue[400]:
                          msgCount[index]>3? Colors.blue[100]: Colors.grey,
                          child: Center(
                              child: Text('${names[index]} (${msgCount[index]})',
                                style: TextStyle(fontSize: 18),
                              )
                          ),
                        );
                      }
                  )
              )
            ]
        )
    );
  }
}