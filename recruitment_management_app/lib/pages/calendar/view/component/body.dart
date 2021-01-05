import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/components/primary_button_component.dart';


class Body extends StatefulWidget{
  @override
  _BodyState createState()=>_BodyState();

}


class _BodyState extends State<Body>{
  // ignore: must_call_super
  CalendarController calendarController;
  void initState(){
    super.initState();
    calendarController = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:SingleChildScrollView(
        child: Column(
          children: [
            CalendarCustom(
                calendarController: calendarController,
            ),

          ],
        ),
      )

    );
  }


}