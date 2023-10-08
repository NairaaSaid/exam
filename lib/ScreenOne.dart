import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'ScreenTwo.dart';
class ScreenOne extends StatefulWidget {
  static const String routeName = "one";

  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int index = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundImage: AssetImage("assets/images/logo.png")),
              SizedBox(width: 10),
              Text(
                "Moody",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 130,
              ),
              badges.Badge(
                badgeContent: Text(''),
                child: Icon(Icons.add_alert_rounded),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Hello,"),
              SizedBox(width: 5),
              Text(
                "Sara Rose",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [Text("How are you feeling today?")],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/img.png",
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [Text("Love")],
                    )
                  ],
                ),
              ),
              //SizedBox(width: 10,),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/img_1.png",
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [Text("Cool")],
                    )
                  ],
                ),
              ),
              //SizedBox(width: 10,),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/img_2.png",
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [Text("Happy")],
                    )
                  ],
                ),
              ),
              //SizedBox(width: 10,),
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/img_3.png",
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [Text("Sad")],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Feature",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "See More",
                    style: TextStyle(color: Colors.green),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
          Container(
            child: CarouselSlider(
              items: image
                  .map((item) => Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Exercise",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "See More",
                    style: TextStyle(color: Colors.green),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Image(image: AssetImage('assets/images/img_6.png'))),
                Expanded(
                    child: Image(image: AssetImage('assets/images/img_7.png'))),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Image(
                image: AssetImage('assets/images/img_8.png'),
              )),
              Expanded(
                  child: Image(image: AssetImage('assets/images/img_9.png'))),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
          backgroundColor:Colors.white ,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black45,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.routeName);
              },
              child: Icon(Icons.grid_view_rounded),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),

            label: '',
          ),
        ],

        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
    );
  }
}

final List<String> image = [
  'assets/images/img_4.png',
];
