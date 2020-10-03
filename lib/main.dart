import 'package:flutter/material.dart';
import 'package:learn_flutter/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List students;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
      ),
      //wrap body column in singlechildscrollview to enable scrolling
      body: SingleChildScrollView(
        child: Column(
            children: studentsList.map((element) {
          return GestureDetector(
              onLongPress: () {
                studentsList.removeAt(0);
                setState(() {
                  print('removed');
                });
              },
              onTap: () {
                print('DP Thomas tapped');
              },
              onHorizontalDragUpdate: (details) {
                if (details.delta.dx > 10) {
                  print('Swipe right');
                } else if (details.delta.dx < 10){
                    print('Swipe left');
                }
              },
              child: ListTile(
                onTap: () {
                  print('onTap ed');
                },
                title: Text(element.name),
                subtitle: Text(element.subject),
                leading: CircleAvatar(),
              ));
        }).toList()

            // [
            //   ListTile(
            //     onTap: () {
            //       print("Tapped");
            //     },
            //     title: Text(studentsList[0].name),
            //     subtitle: Text(studentsList[0].subject),
            //     leading: GestureDetector(
            //         onTap: () {
            //           print('DP Thomas tapped');
            //         },
            //         child: CircleAvatar()),
            //   ),
            // ],
            ),
      ),
    );
  }
}
