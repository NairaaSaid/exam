
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String routeName = 'three';

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int index = 0;

  bool select = false;
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;

  //const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/images/image.png")),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "AliceCare",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //color: Colors.white,
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xffD0D5DD),
                              width: 1,
                            )),
                        hintText: " Articles,Video,Audio,More,....",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff667085),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff667085),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChoiceChip(
                    label: Text(
                      'Discover',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.deepPurple),
                    ),
                    side: BorderSide(color: Colors.black12),
                    selected: select,
                    selectedColor: Color(0xffD6BBFB),
                    onSelected: (newBoolValue) {
                      select = newBoolValue;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: Text(
                      'News',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.deepPurple),
                    ),
                    side: BorderSide(color: Colors.black12),
                    selected: select1,
                    selectedColor: Color(0xffD6BBFB),
                    onSelected: (newBoolValue) {
                      select1 = newBoolValue;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: Text('Most Viewed',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.deepPurple)),
                    side: BorderSide(color: Colors.black12),
                    selected: select2,
                    selectedColor: Color(0xffD6BBFB),
                    onSelected: (newBoolValue) {
                      select2 = newBoolValue;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: Text('Saved',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.deepPurple)),
                    side: BorderSide(color: Colors.black12),
                    selected: select3,
                    selectedColor: Color(0xffD6BBFB),
                    onSelected: (newBoolValue) {
                      select3 = newBoolValue;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Hot topics',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff5925DC)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff5925DC),
                    size: 20,
                  )
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Row(
                  children: [
                    Image(
                        image: AssetImage('assets/images/hotTopic1.png'),width: 250,height: 250),
                    SizedBox(
                      width: 15,
                    ),
                    Image(
                        image: AssetImage(
                            'assets/images/hotTopic2.png'),width: 250,height: 250),

                  ],
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Get Tips',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ))
                ],
              ),
            ),


            SingleChildScrollView(
              child: Container(
                color: Color(0xffEAECF5),
                width: 300,
                height: 180,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/doctor.png',),width: 90,),
                    Padding(
                      padding: const EdgeInsets.all(5),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          Text('Connect with doctor &',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(' get suggestions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                          Text('Connect new and get ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                          Text(' expert insigths',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                          Container(
                            height: 30,
                            width: 80,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.deepPurple,


                            ),
                            child: Center(child: Text(' View detail ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                          ),


                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Cycle Phases and Period',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff5925DC)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff5925DC),
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor:Colors.white ,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black45,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Today',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Insights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),

            label: 'Chat',
          ),
        ],

        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      )
      ,
    );
  }
}