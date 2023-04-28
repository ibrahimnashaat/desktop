import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:desktop_app_for_device_1/modules/real_time_graph.dart';

import '../modules/circular indecator.dart';
//
// import '../modules/circular indecator.dart';
// import '../modules/patient_detailes.dart';
// import '../modules/rectangle_info.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         color: HexColor('#231230'),

         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Expanded(
               flex: 1,
               child: Opacity(
                 opacity: 0.2,
                 child: Image.asset(
                   "assets/images/man.png",

                 ),
               ),
             ),
             Expanded(
               flex: 4,
               child: SizedBox(
                 width : 600 ,
                 height: 1000,

                 child: RealTimeGraph(),
               ),
             ),
             // Expanded(
             //   flex: 4,
             //   child: Column(
             //     mainAxisAlignment: MainAxisAlignment.center,
             //   crossAxisAlignment: CrossAxisAlignment.center,
             //   children: [
             //     SizedBox(height: 40,),
             //     Expanded(
             //       child: SizedBox(
             //         width : 600 ,
             //         height: 300,
             //
             //         child: RealTimeGraph(),
             //       ),
             //     ),
             //
             //     SizedBox(height: 100,),
             //
             //     // Container(
             //     //   width: 600,
             //     //   height: 200,
             //     //   decoration: BoxDecoration(
             //     //     borderRadius: BorderRadius.all(
             //     //       Radius.circular(20),
             //     //     ),
             //     //     color: HexColor('#000000').withOpacity(0.2),
             //     //   ),
             //     //   padding: EdgeInsetsDirectional.all(16),
             //     //   child: Center(
             //     //     child:CircularIndicator(),
             //     //   ),
             //     //
             //     //   // CircularIndicator(),
             //     // ),
             //     // SizedBox(height: 20,),
             //   ],
             // ),),
             // Expanded(
             //   flex: 2,
             //   child: Padding(
             //     padding: const EdgeInsets.all(20.0),
             //     child: Column(
             //       children: [
             //
             //         SizedBox(
             //           height: 40,
             //         ),
             //
             //         Expanded(
             //           child: Container(
             //
             //
             //               decoration: BoxDecoration(
             //                 borderRadius: BorderRadius.circular(100)
             //               ),
             //               clipBehavior: Clip.antiAlias,
             //               child: Image.asset('assets/images/brain-gif.gif')),
             //         ),
             //
             //         SizedBox(
             //           height: 20,
             //         ),
             //
             //         Expanded(child: Container(
             //
             //           decoration: BoxDecoration(
             //             borderRadius: BorderRadius.circular(20),
             //             color: HexColor('#000000').withOpacity(0.2),
             //
             //           ),
             //           child:Column(
             //             children: [
             //               SizedBox(
             //                 height: 2,
             //               ),
             //               Expanded(
             //                 flex: 1,
             //                 child: Center(
             //                   child: Text(
             //                     'INSTRUCTIONS',
             //                     style: TextStyle(
             //                       color: Colors.white,
             //                       fontSize: 30,
             //                       fontWeight: FontWeight.bold,
             //
             //                     ),
             //                   ),
             //                 ),
             //               ),
             //               SizedBox(
             //                 height: 20,
             //               ),
             //
             //               Expanded(
             //                 flex: 3,
             //                 child: Padding(
             //                   padding: const EdgeInsets.all(8.0),
             //                   child: Text(
             //                     'This is a proof of correct readings.\nThis is a proof of correct readings.Your nerve signals and your health condition are measured, and then the result is returned to you through the bottom field about your health condition.',
             //                     style: TextStyle(
             //                       color: Colors.white,
             //                       fontSize: 14,
             //                       fontWeight: FontWeight.w200
             //                     ),
             //                   ),
             //                 ),
             //               ),
             //             ],
             //           ),
             //           // Row(
             //           //   children: [
             //           //     // Patient_detailes(),
             //           //     // RecInfo(),
             //           //     // SizedBox(width: 20,)
             //           //   ],
             //           // ),
             //         ),),
             //
             //         SizedBox(
             //           height: 20,
             //         ),
             //         Expanded(child: Container(
             //           width: 200,
             //
             //           decoration: BoxDecoration(
             //             borderRadius: BorderRadius.circular(
             //               400
             //             ),
             //             color:HexColor('#000000').withOpacity(0.2),
             //           ),
             //
             //           child: Column(
             //             mainAxisAlignment: MainAxisAlignment.center,
             //             children: [
             //               Row(
             //                 mainAxisAlignment: MainAxisAlignment.center,
             //
             //                 children: [
             //                   Text(
             //                     ' %09',
             //                     style: TextStyle(
             //                       fontSize: 40,
             //                       fontWeight: FontWeight.w900,
             //                       color:Colors.white,
             //                     ),
             //                   ),
             //                   SizedBox(
             //                     width: 10,
             //                   ),
             //                   Icon(
             //                     Icons.sentiment_satisfied_sharp,
             //                     color: HexColor('#0484C3'),
             //                     size: 30,
             //                   ),
             //                   SizedBox(
             //                     width: 4,
             //                   ),
             //                   Expanded(
             //                     child: Text(
             //                       'GOOD',
             //                       style: TextStyle(
             //                         fontSize: 16,
             //                         fontWeight: FontWeight.w900,
             //                         color: HexColor('#0484C3'),
             //                       ),
             //                     ),
             //                   ),
             //
             //
             //                 ],
             //               ),
             //               // Row(
             //               //   mainAxisAlignment: MainAxisAlignment.center,
             //               //
             //               //   children: [
             //               //     Text(
             //               //       '30',
             //               //       style: TextStyle(
             //               //         fontSize: 40,
             //               //         fontWeight: FontWeight.w900,
             //               //         color:Colors.white
             //               //       ),
             //               //     ),
             //               //     SizedBox(
             //               //       width: 10,
             //               //     ),
             //               //     Icon(
             //               //       Icons.run_circle_outlined,
             //               //       color: HexColor('#0484C3'),
             //               //       size: 30,
             //               //     ),
             //               //     SizedBox(
             //               //       width: 4,
             //               //     ),
             //               //     Text(
             //               //       'WALK',
             //               //       style: TextStyle(
             //               //         fontSize: 16,
             //               //         fontWeight: FontWeight.w900,
             //               //         color: HexColor('#0484C3'),
             //               //       ),
             //               //     ),
             //               //
             //               //
             //               //   ],
             //               // ),
             //               Row(
             //                 mainAxisAlignment: MainAxisAlignment.center,
             //
             //                 children: [
             //                   Text(
             //                     '${DateTime.now().day}-'
             //                     '${DateTime.now().month}-'
             //                     '${DateTime.now().year}',
             //
             //                     style: TextStyle(
             //                       fontSize: 18,
             //                       fontWeight: FontWeight.w900,
             //                       color:Colors.white,
             //
             //                     ),
             //                     overflow: TextOverflow.fade,
             //                     maxLines: 1,
             //                   ),
             //                   SizedBox(
             //                     width: 10,
             //                   ),
             //                   Icon(
             //                     Icons.history_toggle_off_outlined,
             //                     color: HexColor('#0484C3'),
             //                     size: 30,
             //                   ),
             //
             //
             //
             //                 ],
             //               ),
             //
             //             ],
             //           ),
             //
             //         ),),
             //       ],
             //
             //
             // ),
             //   ),),


           ],
         ),


      )),
    );
  }
}
