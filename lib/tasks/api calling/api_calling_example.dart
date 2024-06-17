import 'package:flutter/material.dart';
import 'package:regular_tasks/tasks/api%20calling/users%20api/home%20page/view/user_api_home_page.dart';

class ApiCallingExample extends StatelessWidget {
  const ApiCallingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          centerTitle: false,
          title: const Text('API\'s'),
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UserApiHomePage(),));
                },
                tileColor: Theme.of(context).colorScheme.onSecondary,
                title: const Text('Users API'),
              ),
            ),
          ],
        ),
      );
  }
}
