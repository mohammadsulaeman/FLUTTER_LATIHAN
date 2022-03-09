import 'package:belajarflutter/image.dart';
import 'package:belajarflutter/inputan.dart';
import 'package:belajarflutter/musicplayer.dart';
import 'package:belajarflutter/operator.dart';
import 'package:belajarflutter/popup.dart';
import 'package:belajarflutter/videoplayer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const Inputan());
                    Navigator.push(context, route);
                  },
                  child: const Text("Menerima Inputan")),
              ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const OperatorCalc());
                    Navigator.push(context, route);
                  },
                  child: const Text("Berhitung")),
              ElevatedButton(
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => const Popup());
                    Navigator.push(context, route);
                  },
                  child: const Text("PopUp")),
              ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const ImagesGallery());
                    Navigator.push(context, route);
                  },
                  child: const Text("Menampilkan Image")),
              ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const MusicPlayer());
                    Navigator.push(context, route);
                  },
                  child: const Text("Menampilkan Music")),
              ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const MyVideoPlayer());
                    Navigator.push(context, route);
                  },
                  child: const Text("Menampilkan Video"))
            ],
          ),
        ),
      ),
    );
  }
}
