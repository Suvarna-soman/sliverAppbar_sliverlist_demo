import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Sliver Appbar'),
            centerTitle: true,
            pinned: true,
            shadowColor: Colors.black,
            elevation: 20,
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text("This is sliver list No:" + index.toString()),
                  leading: Icon(Icons.call,color: Colors.green,),
                  trailing: Icon(Icons.more_vert),
                );
              },
              childCount: 20,
            ),
          ),

        ],
      )),
    );
  }
}
