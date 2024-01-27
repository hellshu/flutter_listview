import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyWidget(),
    );
  }
}

final List<String> entries = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9'];
final List<int> colorCodes = <int>[900, 800, 700, 600, 500, 400, 300, 200, 100];

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 100,
        child: Align(

alignment: Alignment.centerLeft,
        child: Column(
          children: <Widget>[
            Text('Строка ${entries[index]}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 50,
            ),
            ),
          
            Text('${entries[index]}',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
            ),)
          ],),
        ),
        decoration: BoxDecoration(
          color: Colors.blue[colorCodes[index]],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => SizedBox ( height : 20),
  );
}
}