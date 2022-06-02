import 'package:flutter/material.dart';
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
          "My appointments", style: TextStyle(color: Colors.black) ,),
        centerTitle: true,
        actions: [
          SizedBox(width: 50,
              child: LineIcon.alternateCalendar(size: 32, color: Colors.green,))
        ],
      ),
      backgroundColor: const Color(0x11aaffff),
      body: ListView(


       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          const Text("     Upcoming Appointments", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black45), ),
          const SizedBox(height: 30,),

          SizedBox(height: 200,
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: 54,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                        leading: Image.network('https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80'),
                        trailing: const Text("GFG",
                          style: TextStyle(
                              color: Colors.green, fontSize: 15),),
                        title: Text("List item $index")
                    ),
                  );
                }
            ),
          ),
          const SizedBox(height: 30,),
          const Text("     Past Appointments", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black45), ),
          const SizedBox(height: 30,),

          Expanded(
            child: ListView.builder(
                itemCount: 24,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                        leading: Image.network('https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80'),
                        trailing: const Text("GFG",
                          style: TextStyle(
                              color: Colors.green, fontSize: 15),),
                        title: Text("List item $index")
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
