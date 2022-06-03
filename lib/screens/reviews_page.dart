import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Reviews",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0x11aaffff),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(


                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.network(
                            'http://www.jeanlouismedical.com/img/doctor-profile-small.png'),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          "Dr. Jako Alphonso Iscobar",
                                          style: TextStyle(
                                              fontSize: 27,
                                              fontWeight: FontWeight.w500),
                                        ),

                                      ]),
                                )
                              ],
                            ),
                            const Text(
                              "Avg Ratings",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16),
                            ),

                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Text(
                                  "4.6  ",
                                  style: TextStyle(
                                      color: Color(0xfff7c707),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 30,
                                  color: Color(0xfff7c707),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin:
                        const EdgeInsets.all(10),
                    child: const Text(
                      "Ratings Overview",

                      style: TextStyle(fontSize: 20, color: Colors.black45),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      children: [
                        linearProgress(5, 34, MediaQuery.of(context).size, 0.695),
                        linearProgress(4, 21, MediaQuery.of(context).size, 0.495),
                        linearProgress(3, 15, MediaQuery.of(context).size, 0.295),
                        linearProgress(2, 6, MediaQuery.of(context).size, 0.195),
                        linearProgress(1, 2, MediaQuery.of(context).size, 0.075),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(
                                        10),
                                    child: const Text(
                                      "Total People Rated",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black45),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Icon(FontAwesomeIcons.comment,size: 20, color: Colors.lightBlueAccent,),
                                        Text(
                                          "   78",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),

                                      ],

                                    ),
                                  )
                                ],
                              ),

                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(
                                        10),
                                    child: const Text(
                                      "Appointment Booked",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black45),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Icon(FontAwesomeIcons.houseMedicalCircleCheck,size: 20, color: Colors.lightBlueAccent,),
                                        Text(
                                          "   129",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                        ),

                                      ],

                                    ),
                                  )
                                ],
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),

              child: const Text(
                "Recent reviews",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
            ),

           Container(
             color: Colors.white,


             child: Column(
               children: [
                 userReview("Elise Jeyms", 5, "Headache", "21.03.2021"),
                 userReview("Elise Jeyms", 5, "Headache", "21.03.2021"),
                 userReview("Elise Jeyms", 5, "Headache", "21.03.2021"),
                 userReview("Elise Jeyms", 5, "Headache", "21.03.2021"),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }

  linearProgress(int mark, int count, Size size, double percent) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "  $mark ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Icon(
            Icons.star,
            color: Color(0xfff7c707),
          ),
          Expanded(
            child: LinearPercentIndicator(
              restartAnimation: true,
              animationDuration: 500,
              animateFromLastPercent: true,
              animation: true,
              lineHeight: 12.0,
              percent: percent,
              backgroundColor: const Color(0x09001177),
              progressColor: Colors.lightBlueAccent,
            ),
          ),
          Text(
            "$count ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

    userReview(String name, int mark, String illness,  String time){
    return   Column(
          children: [
            Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

          Row(
            children: [

              Container(
                padding: const EdgeInsets.only(top: 14, left: 18, right: 8, bottom: 8), // Border width
                decoration: const BoxDecoration( shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(28), // Image radius
                    child: Image.network('https://thumbs.dreamstime.com/b/indoor-portrait-serious-african-american-woman-advisor-denim-shirt-having-mobile-phone-conversation-doing-meeting-163182920.jpg', fit: BoxFit.cover,),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 18, color: Colors.black87),),
                  Row(children:  [
                    const Text(
                      "Visited For ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    ),
                    Text(
                      illness,
                      style: const TextStyle(  fontSize: 14),
                    ),
                  ],)
                ],
              ),
            ],
          ),
                Container(
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "$mark.0 ",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xfff7c707),
                          ),
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xfff7c707),
                          ),
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xfff7c707),
                          ),
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xfff7c707),
                          ),
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xfff7c707),
                          ),
                        ],
                      ),
                      const Text(
                        "20 Dec 2021",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 13),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    child: Column(

                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment:
                        CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),

                        ]),
                  )
                ],
              ),
            ),
            const Divider(height: 4,)
          ],


    );
    }
}
