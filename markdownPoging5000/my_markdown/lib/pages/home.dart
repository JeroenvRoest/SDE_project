import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

// import '../expansionpanel.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Home',
//         ),
//         centerTitle: true,
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: RaisedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (BuildContext context) =>
//                                   Expansionpanel()));
//                     },
//                     child: Text('Zuid-afrika'),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//----------------------------------------------------
var file;

class Markfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Markdown"),
      ),
      body: FutureBuilder(
          future: rootBundle.loadString('zuidafrika.md'),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              //test = 'markdown vol';
              var test = Markdown(data: snapshot.data!);
              return test;
            } else {
              file = 'bestand = null';
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

//----------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Homepagina'),
              bottom: TabBar(
                tabs: [
                  Tab(text: 'Startpagina'),
                  Tab(text: 'Moldavië'),
                  Tab(text: 'Tanzania'),
                  Tab(text: 'Roemenië'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                    child: Text('Welkom op de Livingstone Infoapp!',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Center(child: Text(file)),
                Center(child: Text('page 2: Tanzania')),
                Center(child: Text('page 3: roemenië')),
              ],
            )),
      );
}
