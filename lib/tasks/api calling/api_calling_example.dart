import 'package:flutter/material.dart';
import 'package:regular_tasks/tasks/api%20calling/users%20api/home%20page/view/user_api_home_page.dart';

class ApiCallingExample extends StatelessWidget {
  const ApiCallingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('API\'s'),
        ),

        body: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserApiHomePage(),));
              },
              tileColor: Theme.of(context).colorScheme.secondary,
              title: const Text('Users API'),
            ),
          ],
        ),
      );
  }
}
