import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Card(
        elevation: 6,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 380,
          width: 370,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "assets/men.jpg",
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 70,
                color: Color(0xFFEEF7FE),
                child: Text(
                  "PRO",
                  style: TextStyle(fontSize: 17, color: Color(0xFF4A4979)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Nikil",
                style: TextStyle(color: Color(0xFF4A4979), fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Text(
                  "UI / UX Designer",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF4A4999),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "UX designer decides how the user interface works while user intracts",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/dribble.png",
                      height: 22,
                      width: 22,
                      color: Color(0xFF22215B),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/instagram.png",
                      height: 22,
                      width: 22,
                      color: Color(0xFF22215B),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/twitter.png",
                      height: 22,
                      width: 22,
                      color: Color(0xFF22215B),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/linkedin.png",
                      height: 22,
                      width: 22,
                      color: Color(0xFF22215B),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook_rounded),
                    color: Color(0xFF22215B),
                  ),
                  Image.asset(
                    "assets/behance.png",
                    height: 22,
                    width: 22,
                    color: Color(0xFF22215B),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Containers()
            ],
          ),
        ),
      ),
    );
  }
}

class Containers extends StatefulWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  _ContainersState createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  bool connectionState = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 165,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 10,
                  side: BorderSide(color: Color(0xFF22215B)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Row(
                children: [
                  Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0xFF22215B),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Message",
                      style: TextStyle(fontSize: 20, color: Color(0xFF22215B))),
                ],
              )),
        ),
        SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 50,
          width: 165,
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  connectionState = !connectionState;
                });
              },
              style: ElevatedButton.styleFrom(
                  primary: connectionState ? Colors.white : Color(0xFF22215B),
                  elevation: 10,
                  shadowColor: Color(0xFF22215B),
                  side: BorderSide(color: Color(0xFF22215B)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: connectionState
                  ? Text(
                      "Pending..",
                      style: TextStyle(fontSize: 20, color: Color(0xFF22215B)),
                    )
                  : Text("Connect", style: TextStyle(fontSize: 20))),
        ),
      ],
    );
  }
}
