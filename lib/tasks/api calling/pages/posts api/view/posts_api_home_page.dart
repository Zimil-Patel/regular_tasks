import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/api%20calling/pages/posts%20api/provider/post_api_provider.dart';

class PostsApiHomePage extends StatelessWidget {
  const PostsApiHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final providerT = context.watch<PostApiProvider>();

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text('Post\'s data Form API'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Column(
              children: [
                Text('Total: ${providerT.posts.total}'),
                Text('Skips: ${providerT.posts.skip}'),
                Text('Limit: ${providerT.posts.limit}'),
              ],
            ),
          ),
          ...List.generate(
            providerT.posts.postList.length,
            (index) => ListTile(
              // id, user id
              leading: Column(
                children: [
                  Text(
                    '${providerT.posts.postList[index].id}',
                  ),
                  Text(
                    '${providerT.posts.postList[index].userId}',
                  ),
                ],
              ),
              // title
              title: Text(
                overflow: TextOverflow.ellipsis,
                providerT.posts.postList[index].title,
              ),

              // body, tags
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    providerT.posts.postList[index].body,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '# ${providerT.posts.postList[index].tags.join(', ')}',
                  ),
                ],
              ),

              // reactions, view
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    'L: ${providerT.posts.postList[index].reactions.likes.toString()}',
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    'D: ${providerT.posts.postList[index].reactions.dislikes.toString()}',
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    'V: ${providerT.posts.postList[index].views.toString()}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
