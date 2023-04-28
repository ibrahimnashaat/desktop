

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:http/http.dart' as http;


class RealTimeGraph extends StatefulWidget {
  const RealTimeGraph({Key? key}) : super(key: key);

  @override
  State<RealTimeGraph> createState() => _RealTimeGraphState();
}

class _RealTimeGraphState extends State<RealTimeGraph> {
  late List<LiveData> chartData;
   ChartSeriesController? _chartSeriesController;
   StreamSubscription? _streamSubscription;


  int _displayText = 0;

  GlobalKey repaintKey=  GlobalKey();





  @override
  void initState() {
    chartData = getChartData();
    Timer.periodic(const Duration(milliseconds: 500), updateDataSource);
    getRandomNumberFact();
    super.initState();

  }



  Stream<http.Response> getRandomNumberFact() async* {
    yield* Stream.periodic(const Duration(), (_) {
      return http.get(    Uri.parse(
          "https://noro-14113-default-rtdb.firebaseio.com/Signals.json"),);
    }).asyncMap((event) async => await event);
  }


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<http.Response>(
      stream: getRandomNumberFact(),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          _displayText = int.parse(snapshot.data!.body);
          print (_displayText);
            return SafeArea(
            child: Scaffold(
                body: SfCartesianChart(
                    backgroundColor: HexColor('#231230'),

                    series: <LineSeries<LiveData, int>>[
                      LineSeries<LiveData, int>(

                        onRendererCreated: (ChartSeriesController controller) {
                          _chartSeriesController = controller;
                        },
                        dataSource: chartData,
                        color: HexColor('#BFC09A'),
                        xValueMapper: (LiveData sales, _) => sales.time,
                        yValueMapper: (LiveData sales, _) => sales.speed,
                      )
                    ],
                    primaryXAxis: NumericAxis(

                        majorGridLines: const MajorGridLines(width: 0),
                        edgeLabelPlacement: EdgeLabelPlacement.shift,
                        interval: 3,
                        labelStyle: TextStyle(
                          color: HexColor('#7CEFF9'),
                        ),
                        title: AxisTitle(
                          text: 'Time (seconds)',
                          textStyle: TextStyle(
                            color: HexColor('#7CEFF9'),
                          ),
                        )),
                    primaryYAxis: NumericAxis(
                        axisLine: const AxisLine(width: 0),
                        majorTickLines: const MajorTickLines(size: 0),
                        labelStyle: TextStyle(
                          color: HexColor('#7CEFF9'),
                        ),
                        title: AxisTitle(
                          text: 'Signals speed (HZ)',
                          textStyle: TextStyle(
                            color: HexColor('#7CEFF9'),
                          ),
                        )))));
        }
            else {return Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white30.withOpacity(0.1),
          ),
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.lightBlue,
            ),
          ),
        );}

      });
  }

  int time = 19;
  Future<void> updateDataSource(Timer timer) async {



          chartData.add(LiveData(time++, _displayText ));
          chartData.removeAt(0);
          _chartSeriesController?.updateDataSource(addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

  List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(0, 0),
      LiveData(1, 0),
      LiveData(2, 0),
      LiveData(3, 0),
      LiveData(4, 0),
      LiveData(5, 0),
      LiveData(6, 0),
      LiveData(7, 0),
      LiveData(8, 0),
      LiveData(9, 0),
      LiveData(10, 0),
      LiveData(11, 0),
      LiveData(12, 0),
      LiveData(13, 0),
      LiveData(14, 0),
      LiveData(15, 0),
      LiveData(16, 0),
      LiveData(17, 0),
      LiveData(18, 0)
    ];
  }

  @override
  void deactivate(){
    _streamSubscription?.cancel();
    super.deactivate();
  }

}

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}
