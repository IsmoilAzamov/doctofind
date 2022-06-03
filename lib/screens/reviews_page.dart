
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    final Size screensize=MediaQuery.of(context).size;
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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                      
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Image.network(
                          'http://www.jeanlouismedical.com/img/doctor-profile-small.png'),
                    ),
                     SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.48,
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Dr. Jako Alphonso Iscobar", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500), ),
                                      Text(
                                        "Avg Ratings",
                                        style: TextStyle(color: Colors.black38, fontSize: 16),
                                      ),
                                    ]
                                ),
                              )
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            Text(
                              "4.6  ",
                              style: TextStyle( color: Color(0xfff7c707), fontSize: 22, fontWeight: FontWeight.bold),
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
                  ],
                ),
                const SizedBox(
                  height:12,
                ),
                Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                  child: const Text(
                    "Upcoming Appointments",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(children: [
                  linearProgress(555555,34,MediaQuery.of(context).size, 0.695),

                ],)
              ],
            ),
          ),
        ],
      ),
    );

  }

   linearProgress(int mark, int count, Size size, double percent){
    return Container(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$mark"),
          const Icon(Icons.star, color: Color(0xfff7c707),),
          Expanded(
            child: LinearPercentIndicator(

              lineHeight: 14.0,
              percent: percent,
              backgroundColor: const Color(0x11000000),
              progressColor: Colors.lightBlueAccent,
            ),
          ),
          Text("$count"),
        ],
      ),
    );
  }


}