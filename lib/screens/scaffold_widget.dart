import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Foot224"),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10
            ),
            child: Icon(Icons.notifications_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10
            ),
            child: Icon(Icons.person_outline),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.red,
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: "Feed"
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_outlined),
        backgroundColor: Colors.orange,
        onPressed: () {

        }
      ),
      body: SizedBox(),
    );
  }
}