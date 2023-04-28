import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RecInfo extends StatelessWidget {
  const RecInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: HexColor('#F7F7F7'),

          ),
          child: Column(
            children: [
              Expanded(child: Text(
                'Current Signals',
                style: TextStyle(
                    fontWeight:FontWeight.bold,
                    color: Colors.black
                ),

              )),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 34,
                height: 30,
                color: Colors.black12,
                child: Text(' 04',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),


              ),
              SizedBox(
                height: 30,
              ),
              Expanded(child: Text(
                'Current Signals',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,

                ),

              )),
            ],
          ),

        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 110,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: HexColor('#F7F7F7'),

          ),
          child: Column(
            children: [
              Expanded(child: Text(
                'Current Signals',
                style: TextStyle(
                    fontWeight:FontWeight.bold,
                    color: Colors.black
                ),

              )),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 34,
                height: 30,
                color: Colors.black12,
                child: Text(' 04',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),


              ),
              SizedBox(
                height: 30,
              ),
              Expanded(child: Text(
                'Current Signals',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,

                ),

              )),
            ],
          ),

        ),
      ],
    );
  }
}
