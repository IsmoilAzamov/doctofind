import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:line_icons/line_icon.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My appointments",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          SizedBox(
              width: 50,
              child: LineIcon.alternateCalendar(
                size: 32,
                color: Colors.green,
              ))
        ],
      ),
      backgroundColor: const Color(0x11aaffff),
      body: AnimationLimiter(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height:12,
              ),
              const Text(
                "Upcoming Appointments",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50,
                        child: FadeInAnimation(
                          child: Card(
                            elevation: 1,

                            color: Colors.grey[100],
                            margin: const EdgeInsets.all(4),
                            child: ListTile(

                              //leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATurGoISfff9EA0KzQhk3rIKZ2UgUG1283iLM-LAq9obYJSGpxn2U1eu07lBtj7nA1yA&usqp=CAU',),
                              title: Row(
                                mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  Row(
                                    children: [
                                      Container(
                                        height: 70.0,
                                        width: 70.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: const DecorationImage(
                                            image: NetworkImage('https://cdn.picpng.com/man/man-clipart-33230.png'),
                                            fit: BoxFit.fill,
                                          ),

                                        ),
                                      ),
                                      const SizedBox(width: 12,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [

                                          Text(
                                            "Maurisio Guterrish",
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xcc151716)),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Hair Shortage",
                                            style: TextStyle(
                                                fontSize: 14, color: Colors.black45),
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          Text(
                                            "12 June 2022 | 14:30",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 16,  color: Color(0xcc151716)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,

                                    children: [
                                      SizedBox(
                                        width:40,
                                        child: RawMaterialButton(
                                        elevation: 1,
                                          onPressed: () {},
                                          fillColor: Colors.white70,
                                          shape:  RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                          child: const Icon(
                                            Icons.close,
                                            size: 22.0,
                                             color: Color(0xff4f28b0)
                                          ),


                                        ),
                                      ),
                                      const SizedBox(width: 5,),
                                      SizedBox(
                                        width:40,
                                        child: RawMaterialButton(

                                          onPressed: () {},
                                          fillColor: const Color(0xff4f28b0),
                                          shape:  RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                          child: const Icon(
                                            Icons.check,
                                            size: 22.0,
                                            color: Colors.white,
                                          ),


                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),


                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 12,),
              const Text(
                "     Past Appointments",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 18,
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: Card(
                            elevation: 1,
                            color: Colors.grey[100],
                            margin: const EdgeInsets.all(6),
                            child: ListTile(
                              //leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATurGoISfff9EA0KzQhk3rIKZ2UgUG1283iLM-LAq9obYJSGpxn2U1eu07lBtj7nA1yA&usqp=CAU',),
                              title: Row(
                                children: [
                                  Image.network(
                                    'https://freepngimg.com/thumb/girl/168534-woman-free-hd-image-thumb.png',
                                    width: 70,
                                    height: 70,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Tina Hopkins",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.bold,  color: Color(0xcc151716)),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Kinda Problem",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black45),
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Text(
                                        "29 May 2022 | 11:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16,  color: Color(0xcc151716)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
