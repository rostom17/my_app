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
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 720,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: Text(
                        "50% OFF",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.heart_circle,
                    size: 50,
                    color: Colors.grey[500],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image(
                height: 500,
                width: 350,
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/050/177/034/non_2x/smart-watch-isolated-on-transparent-background-png.png",
                ),
                //
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Apple Watch Series - 6",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$45,000",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(
                    "\$55,000",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // body: SizedBox(
      //   width: double.maxFinite,
      //   // child: Column(
      //   //   mainAxisAlignment: MainAxisAlignment.center,
      //   //   crossAxisAlignment: CrossAxisAlignment.center,
      //   //   children: [
      //   //     Icon(
      //   //       CupertinoIcons.star_fill,
      //   //       color: Colors.yellow,
      //   //       size: 40,
      //   //     ),
      //   //     Image(
      //   //       image: AssetImage("assets/nike2.png"),
      //   //       height: 100,
      //   //       width: 100,
      //   //     ),
      //   //     Icon(
      //   //       CupertinoIcons.star_fill,
      //   //       color: Colors.yellow,
      //   //       size: 40,
      //   //     ),
      //   //     // Icon(
      //   //     //   CupertinoIcons.star_fill,
      //   //     //   color: Colors.grey,
      //   //     //   size: 40,
      //   //     // ),
      //   //     // Icon(
      //   //     //   CupertinoIcons.star_fill,
      //   //     //   color: Colors.grey,
      //   //     //   size: 40,
      //   //     // ),
      //   //     // Icon(
      //   //     //   CupertinoIcons.star_fill,
      //   //     //   color: Colors.grey,
      //   //     //   size: 40,
      //   //     // ),
      //   //     //const Spacer(),
      //   //     // Text(
      //   //     //   "This is an icon widget",
      //   //     //   style: TextStyle(
      //   //     //       fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
      //   //     // ),
      //   //   ],
      //   // ),
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.vertical,
      //     child: Column(
      //       children: List.generate(
      //         100,
      //         (index) => Icon(
      //           Icons.home,
      //           size: index.toDouble(),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
