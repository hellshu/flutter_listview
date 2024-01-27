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

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('1ИСП11-37'),
        ),
        body: Center(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return   Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[colorCodes[index]],
                        borderRadius: BorderRadius.only(
// Верхний левый угол
                          topLeft : Radius.circular(25),
// Нижний левый угол
                          bottomLeft : Radius.circular(25),
// Верхний правый угол
                          topRight : Radius.circular(25),
// Нижний првый угол
                          bottomRight : Radius.circular(25),
                        ),
                        border:Border.all(
                          width:2,
                          color:Color.fromARGB(255, 65, 88, 103),
                        )
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(40),
                    margin: EdgeInsets.only(top:30),
                    width:(200),
                    height:(100),
                    child: Row(
                      children: [
                        Container(
                          child:Align(
                    alignment: Alignment.centerLeft,
                      child: Text(
                              'Строка ${entries[index]}',
                              textAlign: TextAlign.left,
                              style:TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        ),
                        ),
                        Container(
                          child:Align(
                        alignment: Alignment.bottomRight,
                child: Text('${entries[index]}',
                              style:TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        ),
                        )
                      ],
                    )

                );
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox ( height : 20),
            )
        )
    );
  }
}
