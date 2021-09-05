import 'package:bucket_list/constants.dart';
import 'package:bucket_list/utils/custom_text_styles.dart';
import 'package:bucket_list/widgets/priority_picket.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  AddTask({Key? key}) : super(key: key);
  final searchFieldController = TextEditingController();

  void selectDate(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: primaryColor,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  Text(
                    'Add new task',
                    style: CustomTextStyles.text28(context),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: searchFieldController,
                    showCursor: true,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: CustomTextStyles.text18light(context),
                    cursorWidth: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: searchFieldController,
                    showCursor: true,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: CustomTextStyles.text18light(context),
                    cursorWidth: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PriorityPicker(),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      selectDate(context);
                    },
                    child: AbsorbPointer(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        style: CustomTextStyles.text18light(context),
                        cursorWidth: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 100,
              child: InkWell(
                onTap: () {
                  //
                },
                child: Container(
                  color: buttonColor,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffa1a2d2),
                    ),
                    child: Center(
                      child: Text(
                        'ADD TASK',
                        style: CustomTextStyles.text28(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
