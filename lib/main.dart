import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);

  final items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: const Text(
              "Header Category",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CircleListItem(item: items[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5, width: 10);
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: const Text(
              "Body Category",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return RectangleListItem(item: index + 1);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
            },
          ),
        ],
      ),
    );
  }
}

class CircleListItem extends StatelessWidget {
  const CircleListItem({Key? key, required this.item}) : super(key: key);

  final int item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
            ),
            child: Text(
              "$item",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RectangleListItem extends StatelessWidget {
  const RectangleListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final int item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      alignment: Alignment.center,
      child: Text(
        "$item",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
