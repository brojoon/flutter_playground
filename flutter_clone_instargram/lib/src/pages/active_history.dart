import 'package:flutter/material.dart';

import '../components/avatar_widget.dart';

class ActiveHistory extends StatelessWidget {
  const ActiveHistory({super.key});

  Widget _activeitemOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            size: 40,
            thumbPath: '',
          ),
          const SizedBox(width: 10),
          const Expanded(
              child: Text.rich(TextSpan(
                  text: '준님',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                TextSpan(
                  text: '님이 회원님의 게시물을 좋아합니다.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                    text: ' 5 일전',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black54,
                    ))
              ])))
        ],
      ),
    );
  }

  Widget _newRecentlyActiveView(String title) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 16,
                )),
            const SizedBox(height: 15),
            _activeitemOne(),
            _activeitemOne(),
            _activeitemOne(),
            _activeitemOne(),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(f
            elevation: 0,
            centerTitle: true,
            title: const Text('활동',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
        body: SingleChildScrollView(
            child: Column(
          children: [
            _newRecentlyActiveView('오늘'),
            _newRecentlyActiveView('이번주'),
            _newRecentlyActiveView('이번달'),
          ],
        )));
  }
}
