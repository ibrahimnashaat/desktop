// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }
//
//
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//
//
//     setState(() {
//       _counter++;
//     });
//     sendData();
//     getData();
//
//   }
//
//   sendData() async{
//     http.post(
//         Uri.parse(
//             "https://noro-14113-default-rtdb.firebaseio.com/userprofile.json"),
//         body: json.encode({
//           'firstName': "b",
//           'lastName': "c",
//           'email': "f",
//         }));
//
//
//
//
//   }
//
//   var a ;
//   getData()async{
//
//     http.StreamedRequest('',
//         Uri.parse("https://noro-14113-default-rtdb.firebaseio.com/Signals.json"),
//
//
//     ).send().asStream().listen((event) {
//       a = event;
//     });
//     print(a);
//
//
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("app"),
//       ),
//       body: new Center(
//         child: new Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Text(
//               'You have pushed the button this many times:',
//             ),
//             new Text(
//               '$a',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: new Icon(Icons.add),
//       ),
//     );
//   }
// }
//
//






//1

//import 'package:firebase_core/firebase_core.dart';

import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

import 'layouts/main_home.dart';
import 'package:http/http.dart' as http;

const projectId = "noro-14113";
const apiKey = "AIzaSyDjan3X86EnK2UCibt6SO39yo66MDABK0A";

// علشان تكمل يبقا اسمع الفيديو دا
//https://www.youtube.com/watch?v=Tw7L2NkhwPc

//البيانات الخاصه بالفاير بيز بتاعك
/*const firebaseConfig = {
  apiKey: "AIzaSyDjan3X86EnK2UCibt6SO39yo66MDABK0A",
  authDomain: "noro-14113.firebaseapp.com",
  databaseURL: "https://noro-14113-default-rtdb.firebaseio.com",
  projectId: "noro-14113",
  storageBucket: "noro-14113.appspot.com",
  messagingSenderId: "761578432013",
  appId: "1:761578432013:web:175bc5a9ef337580a75744",
  measurementId: "G-WPM8CBFMJJ"
};*/
void main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await DesktopWindow.setFullScreen(true);
    if(Platform.isWindows) {
      await DesktopWindow.setMinWindowSize(const Size(1000, 500));
    }
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}





//2

//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }
//
//
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   int _displayText = 0;
//
//   void _incrementCounter()  {
//     setState(() {
//       _counter++;
//     });
//     var i =  getRandomNumberFact() ;
//     print (i);
//   }
//   int? b;
//
//      Stream<http.Response> getRandomNumberFact() async* {
//        yield* Stream.periodic(Duration(seconds: 5), (_) {
//          return http.get(     Uri.parse(
//              "https://noro-14113-default-rtdb.firebaseio.com/Signals.json"),);
//        }).asyncMap((event) async {
//          Object responseData = json.decode(event.toString());
//
//           b = int.parse('$responseData');
//          print (b);
//          print(event);
//          return await event;
//
//        });
//      }
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("app"),
//       ),
//       body: new Center(
//         child: new Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Text(
//               'You have pushed the button this many times:',
//             ),
//             new Text(
//               '$b',
//               style: Theme.of(context).textTheme.headline3,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: new Icon(Icons.add),
//       ),
//     );
//   }
// }
