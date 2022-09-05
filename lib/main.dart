import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.red.shade400,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ],
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu_rounded,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Large App Bar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

          //rest of ui
          SliverToBoxAdapter(
            child: Container(
              color: Colors.red.shade50,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 900,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
