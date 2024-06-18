import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regular_tasks/tasks/api%20calling/pages/pixabay%20api/provider/pixabary_provider.dart';
TextEditingController controller = TextEditingController();

class PixabayHomePage extends StatelessWidget {
  const PixabayHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PixabayProvider>();
    final providerF = context.read<PixabayProvider>();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
        ),
        actions: [
          IconButton(
            onPressed: (){
              providerF.fetchData(controller.text);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: provider.isLoading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : GridView.builder(
        itemCount: provider.model!.hits.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Card(
            child: Image.network(
                fit: BoxFit.cover,
                '${provider.model!.hits[index].largeImageURL}')),
      ),
    );
  }
}
