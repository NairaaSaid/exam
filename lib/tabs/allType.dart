import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllType extends StatelessWidget {
  const AllType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Column(

            children: [SizedBox(height: 20,),
              Container(
                color: Color(0xffEAECF5),
                width: 300,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.all(10),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 30,
                            width: 80,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,


                            ),
                            child: Center(child: Text('7 days',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                          ),
                          Text('Morning Yoga',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('Improve mental focus.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),
                          Row(
                            children: [
                              Icon(Icons.access_time_sharp),
                              Text(' 30 mins',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),

                            ],
                          )


                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Image(image: AssetImage('assets/images/removal.png'),width: 100,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Color(0xffEAECF5),
                width: 300,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 30,
                            width: 80,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,


                            ),
                            child: Center(child: Text('3 days',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                          ),
                          Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('Improve posture and stability.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),
                          Row(
                            children: [
                              Icon(Icons.access_time_sharp),
                              Text(' 30 mins',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),

                            ],
                          )


                        ],
                      ),
                    ),
                    Image(image: AssetImage('assets/images/pngwing.png',),width: 90,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Color(0xffEAECF5),
                width: 300,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.all(10),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 30,
                            width: 80,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,


                            ),
                            child: Center(child: Text('7 days',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                          ),
                          Text('Morning Yoga',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text('Improve mental focus.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),
                          Row(
                            children: [
                              Icon(Icons.access_time_sharp),
                              Text(' 30 mins',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),

                            ],
                          )


                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Image(image: AssetImage('assets/images/removal.png'),width: 100,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
