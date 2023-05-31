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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'E-Library'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  List<String> titleList = [
    "Hero Of The Stars",
    "Medic Of History",
    "Friends Of The Stockades",
    "Heroes Of The Frontline",
    "Turtles And Companions",
    "Traitors And Blacksmiths",
    "Game Of The Forsaken",
    "Decay Without A Conscience",
  ];

  List<String> descList = [
    "Donec pellentesque eget felis id posuere. Ut tempor, neque in.",
    "Etiam sapien lorem, ornare ut nisi sit amet, molestie varius.",
    "Vivamus porta justo in tristique fringilla. Nullam lacinia augue a.",
    "Etiam condimentum dolor at libero pellentesque porta. Curabitur finibus ex.",
    "Etiam odio erat, dictum non sapien sit amet, scelerisque mattis.",
    "Nunc ultrices eros nulla, nec aliquet mauris sollicitudin vel. Nullam.",
    "Cras eget libero finibus, consequat leo quis, euismod mauris. Curabitur.",
    "Sed orci eros, efficitur a viverra non, sollicitudin non lectus.",
  ];

  List<String> paragrafList = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pellentesque ac sapien ut mattis. Suspendisse et massa enim. Maecenas mollis nibh nec imperdiet pretium. Sed hendrerit est nec nulla consectetur viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum porta, sapien ut semper malesuada, nibh justo dictum felis, sit amet porttitor dui nisi in nunc. Morbi a erat iaculis, fringilla turpis faucibus, dignissim ex. Sed erat dui, tincidunt a porttitor vitae, tempor at metus. Suspendisse eu sem dui. Nunc varius pulvinar bibendum. Suspendisse fermentum sagittis interdum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nNam ac nunc nec augue ultrices iaculis. Phasellus ornare quis lectus eu volutpat. Maecenas feugiat lacus mauris, ac porta odio gravida quis. Vestibulum semper gravida nunc, sit amet egestas quam hendrerit vel. Nam bibendum mauris nec orci rutrum, sed elementum turpis condimentum. Quisque auctor elit ac quam posuere dapibus. Proin in neque bibendum, dictum sem quis, lobortis ex.",
    "Etiam sapien lorem, ornare ut nisi sit amet, molestie varius.",
    "Vivamus porta justo in tristique fringilla. Nullam lacinia augue a.",
    "Etiam condimentum dolor at libero pellentesque porta. Curabitur finibus ex.",
    "Etiam odio erat, dictum non sapien sit amet, scelerisque mattis.",
    "Nunc ultrices eros nulla, nec aliquet mauris sollicitudin vel. Nullam.",
    "Cras eget libero finibus, consequat leo quis, euismod mauris. Curabitur.",
    "Sed orci eros, efficitur a viverra non, sollicitudin non lectus.",
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Library'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 8.0),
              child: Container(
                child: Column(children: [
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text("E-Library",
                  //       textAlign: TextAlign.left,
                  //       style: TextStyle(
                  //         fontSize: 32,
                  //         fontWeight: FontWeight.bold,
                  //       )),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Welcome Back,",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("20200801242 Rasmad Ibnu Al'Kautsar",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "You can read your book from here and it will last forever",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(children: [
                      Text("List Book",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Image.asset('assets/search.png', height: 30, width: 30)
                    ]),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, position) {
                  return GestureDetector(
                    child: Column(
                      children: <Widget>[
                        Card(
                          // elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 20.0, bottom: 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Image.asset('assets/book.png'),
                                  title: Text(
                                    titleList[position],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(descList[position]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 600,
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -30, 0.0),
                                      padding: const EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 20,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'assets/book.png',
                                        height: 100,
                                        width: 100,
                                      )),
                                  Text(
                                    titleList[position],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  Expanded(
                                      child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        paragrafList[position],
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                itemCount: titleList.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 41,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpeg'),
                        radius: 40,
                      )),
                  SizedBox(height: 10),
                  Text(
                    'Rasmad Ibnu Al Kautsar',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('20200801242'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Tangerang'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
              ),
              title: const Text('0895330376636'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
