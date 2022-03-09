import 'package:audioplayers/audioplayers.dart';
import 'package:belajarflutter/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  AudioPlayer audioPlayer = AudioPlayer();
  String durasi = "00:00:00";
  String name = "Tri Suaka - Aku Bukan Jodohnya";
  _MusicPlayerState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.seek(Duration(seconds: 0));
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Music Player"),
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  playSound(
                      "https://s21.aconvert.com/convert/p3r68-cdx67/ecs5u-cn998.mp3");
                },
                child: const Text("Play")),
            ElevatedButton(
                onPressed: () {
                  pauseSound();
                },
                child: const Text("Pause")),
            ElevatedButton(
                onPressed: () {
                  stopSound();
                },
                child: const Text("Stop")),
            ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: const Text("Resume")),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              durasi,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => const Home());
                  Navigator.push(context, route);
                },
                child: const Text("Home")),
          ],
        ),
      ),
    ));
  }
}
