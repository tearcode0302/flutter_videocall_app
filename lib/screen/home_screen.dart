import 'package:flutter/material.dart';

import 'cam_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100]!,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(child: _Logo()),
                Expanded(child: _Image()),
                Expanded(child: _EntryButton()),
              ],
            ),
          ),
        ));
  }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blue[300]!,
            blurRadius: 12.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.videocam,
              color: Colors.white,
              size: 40.0,
            ),
            SizedBox(
              width: 12.0,
            ),
            Text(
              'Live',
              style: TextStyle(
                  color: Colors.white, fontSize: 30.0, letterSpacing: 4.0),
            )
          ],
        ),
      ),
    ));
  }
}

class _Image extends StatelessWidget {
  const _Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('asset/img/home_img.png'),
    );
  }
}

class _EntryButton extends StatelessWidget {
  const _EntryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const CamScreen(),
              ),
            );
          },
          child: const Text('입장하기'),
        ),
      ],
    );
  }
}
