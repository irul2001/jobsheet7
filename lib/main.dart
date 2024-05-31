import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override

  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Muhammad Khoerul Anam',
    'Lukman Faozi',
    'Niam Abdullah Nawaf',
    'Titin Sulistiyaningsih',
    'Umu Hanifah',
  ];
  var listWarna = [
    Colors.blue,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.indigo,
    Colors.deepPurple,
    Colors.orange,
    Colors.red,
    Colors.yellow
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(70, 60), // horizontal and vertical offset

            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Perkenalkan Nama Saya',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              color: Color(0xD5010324),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length],
            ),
          )
        ],
      ),
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Bismillah',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          title: const Text(
            'Alhamdulillah',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
        ),
      )));
}

column({required List<TeksUtama> children}) {}
