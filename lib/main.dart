import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildColumnbutton("COMMENT", Icons.comment, Colors.blue),
          _buildColumnbutton("SHARE", Icons.share, Colors.blue),
        ],
      ),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
          "Dans un monde fantastique semblable à la Terre et peuplé de créatures plus étranges"
          "les unes que les autres, un petit garçon à la force herculéenne et doté d’une queue de singe croise un jour la route"
          " d’une jeune fille. \n\nCelle-ci s’est lancée à la recherche de sept mystérieuses boules de cristal."
          " Car il est dit que quiconque les réunira pourra appeler le dragon sacré et exaucer son voeu le plus cher.\n\n"
          " En chemin, ce duo d’aventuriers peu commun se heurte à un cochon transformiste usant de ses dons pour kidnapper"
          " les jeunes filles d’un village, puis à un vagabond solitaire adepte des arts martiaux que la simple vue d’une jeune"
          " femme suffit à tétaniser sur place.\n\nCe n’est que le début d’une grande aventure riche en péripéties, en humour"
          " et en combats extraordinaires...",
          style: TextStyle(fontSize: 16),
          softWrap: true),
    );

    return MaterialApp(
        title: 'Flutter POC',
        debugShowCheckedModeBanner: false,
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
            body: ListView(children: [
              Stack(children: [
               const SizedBox(
                 width: 600,
                 height: 240,
                 child: Center(
                   child: CircularProgressIndicator(),
                 )
               ),
                FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://www.japscan.ws/imgs/mangas/dragon-ball.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ]),
                titleSection,
                buttonSection,
                descriptionSection,
              ]) // This trailing comma makes auto-formatting nicer for build methods.
          )
        );
  }

  Column _buildColumnbutton(String label, IconData icon, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)),
        Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            )),
      ],
    );
  }
}
