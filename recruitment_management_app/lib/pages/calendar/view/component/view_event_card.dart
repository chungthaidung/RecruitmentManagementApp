import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_timepicker.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:recruitment_management_app/components/input/input_with_icon_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_datepicker.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';
import 'package:recruitment_management_app/constants.dart';

// ignore: must_be_immutable
class ViewEventCard extends StatefulWidget{
  bool cardVisible;
  ViewEventCard({this.cardVisible=false});
  _ViewEventCardState createState() => _ViewEventCardState();
}

class _ViewEventCardState extends State<ViewEventCard>{
  double windowWidth = 0;
  double windowHeight = 0;
  double _yOffset=100;
  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery
        .of(context)
        .size
        .width;
    windowHeight = MediaQuery
        .of(context)
        .size
        .height;
    return CustomCard(
      height: windowHeight *2/3 + _yOffset,
      yOffset: _yOffset,
      isVisible: widget.cardVisible,
      context: context,
      child: Container(
        child: DraggableScrollableSheet(
          initialChildSize: 1.0,
          minChildSize: 1.0,
          maxChildSize: 1.0,
          builder: (context, scrollController) {
            return Stack(
              children: [
                Container(
                  width: windowWidth,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Event title:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SizedBox(
                                          width: constraints.maxWidth-48,
                                          child: Text(
                                            'Event Title',
                                          ),
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), //EVENT TITLE
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Event Type:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SizedBox(
                                          width: constraints.maxWidth-48,
                                          child: Text(
                                            'Meeting',
                                          ),
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Location:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SizedBox(
                                          width: constraints.maxWidth-48,
                                          child: Text(
                                            'Location',
                                          ),
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),//EVENT YPE, LOCATION
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Date:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SizedBox(
                                          width: constraints.maxWidth-48,
                                          child: Text(
                                            'Date',
                                          ),
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Time",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SizedBox(
                                          width: constraints.maxWidth-48,
                                          child: Text(
                                            'Time',
                                          ),
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.cardVisible = false;
                              print('Save');
                            });
                          },
                          child: PrimaryButton(
                            btnText: 'CANCEL REQUEST',
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.cardVisible = false;
                              print('Back');
                            });
                          },
                          child: Text(
                            'Back',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: windowWidth,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      DividerTopCard(),
                      Text(
                        'MY EVENT',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

