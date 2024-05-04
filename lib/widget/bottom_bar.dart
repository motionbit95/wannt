import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  // const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 60,
        child: TabBar(
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, size: 18),
              child: Text('홈', style: TextStyle(fontSize: 10)),
            ),
            Tab(
              icon: Icon(Icons.list, size: 18),
              child: Text('피드', style: TextStyle(fontSize: 10)),
            ),
            Tab(
                icon: Icon(Icons.favorite, size: 18),
                child: Text('위시', style: TextStyle(fontSize: 10))),
            Tab(
                icon: Icon(Icons.person, size: 18),
                child: Text('마이', style: TextStyle(fontSize: 10))),
          ],
        ),
      ),
    );
  }
}
