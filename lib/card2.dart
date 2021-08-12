import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  _Card2State createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 600,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/images.jpg"),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        height: 100,
                        width: 170,
                        child: Text(
                          "Snapdragon 872 new lanch on August 14. Redmi Note 14 series and Note 19 series",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Opinion(),
          Divider(
            color: Colors.black,
            thickness: 2,
          )
        ],
      ),
    );
  }
}

class Opinion extends StatefulWidget {
  const Opinion({Key? key}) : super(key: key);

  @override
  _OpinionState createState() => _OpinionState();
}

class _OpinionState extends State<Opinion> with SingleTickerProviderStateMixin {
  bool seletedlike = false;
  bool visibility = false;
  bool visibilitymain = true;
  bool emojis = false;
  bool comments = false;
  Image? likes;
  Icon? icons;
  late final AnimationController _likeAnimationController;
  anime() {
    _likeAnimationController.forward().then((value) {
      setState(() {
        seletedlike = !seletedlike;
      });
      _likeAnimationController.reverse();
    });
  }

  @override
  void initState() {
    _likeAnimationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),
        value: 1.0,
        upperBound: 1.50,
        lowerBound: 1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    icons = seletedlike
        ? Icon(
            Icons.favorite,
            color: Colors.red[900],
          )
        : Icon(
            Icons.favorite_border,
            color: Color(0xFF22215B),
          );
    return IntrinsicHeight(
      child: Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Visibility(
                    visible: visibility,
                    child: Positioned(
                        left: 20,
                        bottom: 0,
                        top: 2,
                        child: Card(
                          elevation: 4,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25)),
                          child: Container(
                            height: 50,
                            child: Row(
                              children: [
                                SizedBox(width: 5),
                                Options(
                                    img: "assets/heart.png",
                                    onPressed: () {
                                      setState(() {
                                        seletedlike = !seletedlike;
                                        visibility = !visibility;
                                        visibilitymain = !visibilitymain;
                                        likes = null;
                                      });
                                    }),
                                SizedBox(width: 5),
                                Options(
                                    img: "assets/laughing.png",
                                    onPressed: () {
                                      setState(() {
                                        likes = Image.asset(
                                          "assets/laughing.png",
                                          height: 30,
                                          width: 20,
                                        );
                                        visibility = !visibility;
                                        visibilitymain = !visibilitymain;
                                        emojis = !emojis;
                                      });
                                    }),
                                SizedBox(width: 5),
                                Options(
                                    img: "assets/surprised.png",
                                    onPressed: () {
                                      setState(() {
                                        likes = Image.asset(
                                            "assets/surprised.png",
                                            height: 30,
                                            width: 20);
                                        visibility = !visibility;
                                        visibilitymain = !visibilitymain;
                                        emojis = !emojis;
                                      });
                                    }),
                                SizedBox(width: 5),
                                Options(
                                    img: "assets/crying.png",
                                    onPressed: () {
                                      setState(() {
                                        likes = Image.asset(
                                          "assets/crying.png",
                                          height: 30,
                                          width: 20,
                                        );
                                        visibility = !visibility;
                                        visibilitymain = !visibilitymain;
                                        emojis = !emojis;
                                      });
                                    }),
                                SizedBox(width: 5),
                                Options(
                                    img: "assets/angry.png",
                                    onPressed: () {
                                      setState(() {
                                        likes = Image.asset(
                                          "assets/angry.png",
                                          height: 30,
                                          width: 20,
                                        );
                                        visibility = !visibility;
                                        visibilitymain = !visibilitymain;
                                        emojis = !emojis;
                                      });
                                    }),
                                SizedBox(width: 5),
                              ],
                            ),
                          ),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Visibility(
                        visible: visibilitymain,
                        child: Row(
                          children: [
                            ScaleTransition(
                                scale: _likeAnimationController,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        likes = null;
                                      });
                                      emojis ? emojis = !emojis : anime();
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        visibilitymain = !visibilitymain;
                                        visibility = !visibility;
                                      });
                                    },
                                    child: likes ?? icons)),
                            SizedBox(
                              width: 7,
                            ),
                            Text("23")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          IconButton(
                              splashColor: Color(0xFF3BD588),
                              icon: Icon(
                                comments
                                    ? Icons.comment
                                    : Icons.comment_outlined,
                                color: Color(0xFF22215B),
                              ),
                              onPressed: () {
                                setState(() {
                                  comments = !comments;
                                });
                              }),
                          SizedBox(
                            width: 7,
                          ),
                          Text("34")
                        ],
                      ),
                      IconButton(
                        highlightColor: Colors.black,
                        padding: EdgeInsets.only(bottom: 8, left: 25),
                        icon: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(
                            Icons.reply_outlined,
                            size: 30,
                            color: Color(0xFF22215B),
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
              Visibility(
                  visible: comments,
                  child: Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.send),
                              hintText: "comments"),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text("UserName"),
                                subtitle: Text("Nice"),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.cyan,
                                ),
                              ),
                              ListTile(
                                title: Text("UserName"),
                                subtitle: Text("Super"),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.cyan,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}

class Options extends StatelessWidget {
  final String? img;
  final Function()? onPressed;
  Options({@required this.img, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        img!,
        height: 20,
      ),
    );
  }
}
