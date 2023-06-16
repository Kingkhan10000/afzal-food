import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(foodapp());
}

class foodapp extends StatelessWidget {
  const foodapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomSheet: bottomnav(),
      ),
    );
  }
}

class bottomnav extends StatefulWidget {
  const bottomnav({
    super.key,
  });

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  bool _isshow = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomSheet(
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  Text(_isshow?"":"Home"),
                ],
              ),
              IconButton(

                onPressed: () {},
                icon: Icon(Icons.person),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.trolley),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        );
      },
      onClosing: () {},
    );
  }
}
