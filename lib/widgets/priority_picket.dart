import 'package:bucket_list/utils/custom_text_styles.dart';
import 'package:flutter/material.dart';

const PRIORITY_PICKER_WIDTH = 40.0;

class PriorityPicker extends StatelessWidget {
  const PriorityPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(PRIORITY_PICKER_WIDTH / 2)),
                child: Container(
                  width: PRIORITY_PICKER_WIDTH,
                  height: PRIORITY_PICKER_WIDTH,
                  color: Colors.red,
                ),
              ),
              Text(
                'High',
                style: CustomTextStyles.text14light(context),
              ),
            ],
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(PRIORITY_PICKER_WIDTH / 2)),
                child: Container(
                  width: PRIORITY_PICKER_WIDTH,
                  height: PRIORITY_PICKER_WIDTH,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Medium',
                style: CustomTextStyles.text14light(context),
              ),
            ],
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(PRIORITY_PICKER_WIDTH / 2)),
                child: Container(
                  width: PRIORITY_PICKER_WIDTH,
                  height: PRIORITY_PICKER_WIDTH,
                  color: Colors.green,
                ),
              ),
              Text(
                'Low',
                style: CustomTextStyles.text14light(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
