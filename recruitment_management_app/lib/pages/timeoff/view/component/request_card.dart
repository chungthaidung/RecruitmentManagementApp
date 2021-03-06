import 'package:flutter/cupertino.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_datepicker.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';

// ignore: must_be_immutable
class RequestCard extends StatefulWidget{
  bool cardVisible;
  RequestCard({this.cardVisible=false});
  _RequestCardState createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard>{
  double windowWidth = 0;
  double windowHeight = 0;
  double _yOffset=70;
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
      height: windowHeight*2/3+_yOffset,
      yOffset: _yOffset,
      isVisible: widget.cardVisible,
      context: context,
      child: Container(
        child:  DraggableScrollableSheet(
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
                          height:40,
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
                                          title: "From:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDatePicker(
                                          width: constraints.maxWidth-10,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "To",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDatePicker(
                                          width: constraints.maxWidth-10,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ), //FROM DATE TO DATE
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
                                          title: "Leave Type:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDropdownButton(
                                          width: constraints.maxWidth/2,
                                          hintText: "Sick Leave",
                                          listItem: ["Sick Leave", "Casual Leave"],
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), //LEAVE TYPE
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
                                          title: "Days off:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SmallInput(
                                          hint: "X days",
                                          width: constraints.maxWidth/2,
                                          height: 50,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.cardVisible = false;
                              print('Save');
                            });
                          },
                          child: GradientButton(
                            btnText: "REQUEST",
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
                              print('Cancel');
                            });
                          },
                          child: Text(
                            'Cancel',
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
                        'NEW REQUEST TIME OFF',
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

