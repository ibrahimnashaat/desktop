import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:hexcolor/hexcolor.dart';




class  Patient_detailes extends StatefulWidget {
  const Patient_detailes({Key? key}) : super(key: key);

  @override
  State<Patient_detailes> createState() => _Patient_detailesState();
}

class _Patient_detailesState extends State<Patient_detailes> {


  late List<charts.Series<Task, String>> _seriesPieData;



  @override
  void initState() {
// TODO: implement initState
    super.initState();

    _seriesPieData = <charts.Series<Task, String>>[];

    _generateData();
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: charts.PieChart<Object>(
          _seriesPieData,
          animate: true,
          animationDuration: Duration(seconds: 5),

          defaultRenderer: new charts.ArcRendererConfig(
              arcWidth: 40,
              arcRendererDecorators: [
                new charts.ArcLabelDecorator(
                    labelPosition: charts.ArcLabelPosition.inside)
              ])
      ),
    );
  }


  _generateData() {
    var piedata = [
      new Task('normal', 35.8, HexColor('#0D6FBE')),
      new Task('upnormal', 8.3, HexColor('#009DD6')),
      new Task('else', 10.8, HexColor('#07D3DC')),

    ];


    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }
}







class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
