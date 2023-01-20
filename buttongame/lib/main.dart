import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.grey,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // logic and function in our app is here
  // 1 for paper , 2 rock and 3 for sizer
  int x = 1;
  int y = 1;
  void action() {
    print('action ok');
    setState(() {
      x = Random().nextInt(3) + 1;
    });
    print('result of action : $x ');
  }

  // the logic above is simple when a user tap on one of the images below the function will choose random number
  // and that number is used with the image in in the expanded widget so
  void paper() {
    print('player selection: p');
    setState(() {
      y = 1;
    });
    action();
  }

  void rock() {
    print('player selection: r');
    setState(() {
      y = 2;
    });
    action();
  }

  void s() {
    print('player selection: s');
    setState(() {
      y = 3;
    });
    action();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // here is the first widget that have my name on it
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  child: Text(
                    "Ahmed Mahdi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 250),
                  child: Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          // this is the arabic title
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  child: Text(
                    "حجره ورقه مقص",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Row(
              children: [
                SizedBox(
                  child: Text(
                    "Random ",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          // this is the expanded widget that hold the image of our random number when we press one of the images below
          Expanded(
            child: Container(
              padding: EdgeInsets.all(7),
              child: Image(image: ExactAssetImage('images/p$x.jpg')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.0, top: 24, bottom: 7),
            child: Row(
              children: [
                SizedBox(
                  child: Text(
                    "your choice ",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(7),
              child: Image(image: ExactAssetImage('images/p$y.jpg')),
            ),
          ),
          // this is the place for our 3 images below that we can interact with
          Expanded(
            child: Container(
              color: Colors.lightBlue,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16, top: 16),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Text(
                                    "choose one below  ",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: paper,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/p1.jpg'),
                                    radius: 45,
                                  ),
                                ),
                                TextButton(
                                  onPressed: rock,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/p2.jpg'),
                                    radius: 45,
                                  ),
                                ),

                                TextButton(
                                  onPressed: s,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        ExactAssetImage('images/p3.jpg'),
                                    radius: 45,
                                  ),
                                ),

                                // Image(image: image),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

/*
 Container(
                                    height: 120,
                                    width: 120,
                                    child: TextButton(
                                      onPressed: paper,
                                      child: Image(
                                          image:
                                              ExactAssetImage('images/p1.jpg')),
                                    )),
                                // Image(image: ExactAssetImage('images/p1.jpg' )),
                                //Icon(
                                //Icons.image,
                                // size: 89,
                                // ),
                                Container(
                                    height: 120,
                                    width: 120,
                                    child: TextButton(
                                      onPressed: rock,
                                      child: Image(
                                          image:
                                              ExactAssetImage('images/p2.jpg')),
                                    )),
                                Container(
                                    height: 120,
                                    width: 120,
                                    child: TextButton(
                                      onPressed: s,
                                      child: Image(
                                          image:
                                              ExactAssetImage('images/p3.jpg')),
                                    )),
 */
