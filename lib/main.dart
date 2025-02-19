import 'package:flutter/cupertino.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lab Class'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SizedBox(
        width: double.maxFinite,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Icon(
        //       CupertinoIcons.star_fill,
        //       color: Colors.yellow,
        //       size: 40,
        //     ),
        //     Image(
        //       image: AssetImage("assets/nike2.png"),
        //       height: 100,
        //       width: 100,
        //     ),
        //     Icon(
        //       CupertinoIcons.star_fill,
        //       color: Colors.yellow,
        //       size: 40,
        //     ),
        //     // Icon(
        //     //   CupertinoIcons.star_fill,
        //     //   color: Colors.grey,
        //     //   size: 40,
        //     // ),
        //     // Icon(
        //     //   CupertinoIcons.star_fill,
        //     //   color: Colors.grey,
        //     //   size: 40,
        //     // ),
        //     // Icon(
        //     //   CupertinoIcons.star_fill,
        //     //   color: Colors.grey,
        //     //   size: 40,
        //     // ),
        //     //const Spacer(),
        //     // Text(
        //     //   "This is an icon widget",
        //     //   style: TextStyle(
        //     //       fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
        //     // ),
        //   ],
        // ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
              100,
              (index) => Icon(
                Icons.home,
                size: index.toDouble(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
