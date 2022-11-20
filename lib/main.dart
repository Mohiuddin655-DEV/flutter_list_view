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
        body: const HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

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
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
            ],
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
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
              ListItemA(),
            ],
          ),
        ],
      ),
    );
  }
}

class ListItemA extends StatelessWidget {
  const ListItemA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 1),
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black12,
      ),
    );
  }
}
