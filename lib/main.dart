import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text("Dragon Ball Z",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            Text("by Akira Toriyama",
                style: TextStyle(color: Colors.grey[500], fontSize: 18)),
          ],
        )),
        const Icon(Icons.favorite, color: Colors.red),
        const Text("100")
      ]),
    );

    return MaterialApp(
      title: 'Flutter POC',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Text("Mes mangas"),
          ),
          body: Column(children: [
            titleSection
          ]) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}
