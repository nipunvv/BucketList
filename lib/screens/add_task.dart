import 'package:bucket_list/constants.dart';
import 'package:bucket_list/utils/custom_text_styles.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  AddTask({Key? key}) : super(key: key);
  final searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
