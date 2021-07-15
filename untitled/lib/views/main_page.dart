import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:untitled/controllers/chipsController.dart';
import 'package:untitled/styles/app_color_style.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  Widget ActivatedChips(text) {
    bool isTapped = false ;
    return ElevatedButton(
        onPressed: (){

        },
        style: ElevatedButton.styleFrom(
          primary: isTapped ? MyColor.primary : Colors.grey,
          onPrimary: Colors.white,
        ),
        child: Text(text,)
    ) ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TimerBuilder.periodic(
                    const Duration(minutes: 1),
                    builder: (context) {
                      return Text(
                        formatDate(DateTime.now(), [mm, '.', dd, ' ', hh, ':', nn]),
                        style: TextStyle(
                            fontSize: 20
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("오늘의 목표",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      )
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ChoiceChip(
                          label: Text('Choice 1'),
                          selected: true,
                        ),
                      ),
                      ActivatedChips("text"),
                    ],
                  ),
                  SizedBox(height: 32,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("오늘의 루틴",style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("Now",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
