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
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: DropdownButton<int>(
          dropdownColor: Colors.grey.shade900,
          items: [
            DropdownMenuItem(
              value: 0,
              child: Text('Instagram',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text('Following',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            DropdownMenuItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Favorites',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Icon(Icons.person_add)
                ],
              ),
              value: 2,
            )
          ],
          borderRadius: BorderRadius.circular(15),
          alignment: Alignment.bottomCenter,
          onChanged: (value) {},
          value: 0,
        ),
        actions: <Widget>[
          //VerticalDivider(),

          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.telegram_outlined,
                color: Colors.white,
              )),

          //VerticalDivider(width: 5),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    20,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/Hassan.jpeg'),
                                    radius: 30,
                                  ),
                                  Positioned(
                                    bottom: 4,
                                    right: 4,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 10,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Hassan Ali ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ))
                  ..insert(
                      0,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.3)),
                                child: Icon(Icons.add,
                                    size: 30, color: Colors.white)),
                            Text(
                              'Add Story ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                            // Positioned(
                            //   bottom: 4,
                            //   right: 4,
                            //   child: CircleAvatar(
                            //     backgroundColor: Colors.green,
                            //     radius: 10,
                            //   ),
                            // )
                          ],
                        ),
                      )),
              ),
            ),
          ]..addAll(List.generate(20, (index) => PostWidget())),
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Hassan.jpeg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Hassan Ali',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            )
          ],
        ),
        Container(
          height: 400,
          color: Colors.red,
          child: Image.asset("assets/images/Hassan.jpeg", fit: BoxFit.cover),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.white,
                  ),
                  git SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.bookmark_border,
              color: Colors.white,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'hassan_solimann :',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Welcome To My World',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
