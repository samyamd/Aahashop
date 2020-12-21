// import 'package:flutter/material.dart';
// import 'package:world_time/services/world_time.dart';
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   String time = 'Loading';
//   // Map data = {};
//   void worldTime() async{
//     WorldTime worldTime = WorldTime(location: 'London', flag: 'london.png', url: 'Europe/London');
//     await worldTime.getTime(); // ignore: await_only_futures
//
//     // setState(() {
//     //   time = worldTime.time;
//     // });
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     worldTime();
//   }
//   @override
//   Widget build(BuildContext context) {
//     // data = ModalRoute.of(context).settings.arguments;
//     // print(data);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//         backgroundColor: Colors.green[300],
//       ),
//       body: SafeArea(
//           child: Column(
//         children: [
//           FlatButton.icon(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/location');
//               },
//               icon: Icon(Icons.ac_unit_rounded),
//               label: Text(time))
//         ],
//       )),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:aahashop/services/expansion_panel.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Expansion View',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: ExtensionPanel(),
      ),
    );
  }
}
