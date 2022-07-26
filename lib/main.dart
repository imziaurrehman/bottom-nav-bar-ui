import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List<Widget> icons = [
    const Recents(),
    const Favourites(),
    const Nearby(),
  ];
  Color changeColor() {
    if (index == 0) {
      return const Color.fromARGB(255, 89, 227, 21);
    } else if (index == 1) {
      return const Color.fromARGB(255, 255, 160, 59);
    } else if (index == 2) {
      return const Color.fromARGB(255, 223, 69, 250);
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
        backgroundColor: const Color.fromARGB(232, 6, 68, 174),
      ),
      body: icons[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(232, 6, 68, 174),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: "Recents",
              tooltip: "Recents",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourites",
            tooltip: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Nearby",
            tooltip: "Nearby",
          ),
        ],
        // fixedColor: Color.fromARGB(227, 255, 255, 255),
        selectedItemColor: changeColor(),
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
        }),
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        elevation: 1.5,
      ),
    );
  }
}

// recents screen
class Recents extends StatelessWidget {
  const Recents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage(
          "assets/imgs/dog.jpg",
        ),
        // fit: BoxFit.cover,
      )),
    );
  }
}

//favourites screen
class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage(
          "assets/imgs/cat.jpg",
        ),
        // fit: BoxFit.cover,
      )),
    );
  }
}

//nearby screen
class Nearby extends StatelessWidget {
  const Nearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage(
          "assets/imgs/lamb.jpg",
        ),
        // fit: BoxFit.cover,
      )),
    );
  }
}


/*
echo "# bottom-nav-bar-ui" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/imziaurrehman/bottom-nav-bar-ui.git
git push -u origin main

git remote add origin https://github.com/imziaurrehman/bottom-nav-bar-ui.git
git branch -M main
git push -u origin main

*/