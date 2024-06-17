import 'package:flutter/material.dart';
class UserApiHomePage extends StatelessWidget {
  const UserApiHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text('User\'s data Form API'),
      ),
    );
  }
}
