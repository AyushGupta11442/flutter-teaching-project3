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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var names = ['ayush ', 'mausam', 'amit'];
    int curindex = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app 3"),
      ),
      // list view
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(names[index]);
        },
        itemCount: names.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 10,
            thickness: 10,
            color: Colors.black,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person)),
            BottomNavigationBarItem(icon: Icon(Icons.settings)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
          ],
          onTap: (value) => setState(() {
                curindex = value;
              })),
    );
  }
}


// listview.builder
// ListView.builder(
        // itemBuilder: (context, index) {
        //   return Text(names[index]);
        // },
        // itemCount: names.length,
        // itemExtent: 100,
        // scrollDirection: Axis.horizontal,
//       ),


// listview

//  ListView(
//         padding: EdgeInsets.all(10),
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 50,
//               width: 100,
//               color: Colors.black,
//               child: Center(
//                 child: Text(
//                   "container 1",
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//                 height: 50,
//                 width: 100,
//                 color: Colors.blue,
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Text("container 2",
//                       style: TextStyle(color: Colors.white, fontSize: 20)),
//                 )),
//           ),
//         ],
//       ),