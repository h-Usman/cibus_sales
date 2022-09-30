import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
// ignore: unused_import
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class PrefixDropdownTextFeildWidget extends StatelessWidget {
  final String hint;
  final String preVal;
  const PrefixDropdownTextFeildWidget({
    Key? key,
    required this.hint,
    required this.preVal,
  }) : super(key: key);

  get model => null;
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'RM';
    return SizedBox(
      width: 49.sp,
      height: 8.791.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(
            // horizontal: 5.054.sp,
            horizontal: 0,
            vertical: 0),
        child: TextField(
          style: TextStyle(color: ccNutural550, fontSize: 3.956.sp),
          // controller: TextEditingController(
          //   text: value,
          // ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 2.63.sp),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1.098.sp),
                borderSide: BorderSide(
                  color: ccPrimary300,
                  width: 0.2197.sp,
                )),
            prefixIcon: Container(
              height: 9.230769.sp,
              width: 16.703.sp,
              padding: EdgeInsets.only(
                left: 3.153.sp,
                // right: 1.318.sp,
              ),
              margin: EdgeInsets.only(right: 2.sp),
              decoration: BoxDecoration(
                color: ccDanger100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1.758.sp),
                  bottomLeft: Radius.circular(1.758.sp),
                ),
                border: Border.all(
                  color: ccPrimary300,
                  width: 1,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: ccDanger300,
                  size: 5.395.sp,
                ),
                elevation: 16,
                isExpanded: true,
                // isDense: true,
                style: TextStyle(
                  color: ccNutural550,
                  fontSize: 4.395.sp,
                ),
                underline: Container(
                  height: 0.0,
                  color: Colors.transparent,
                ),
                onChanged: (String? newValue) {
                  // setState(() {
                  //   dropdownValue = newValue!;
                  // });
                },
                items: <String>[
                  'RM',
                  '%',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                dropdownColor: ccNeutral0,
              ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: ccPrimary300,
              fontSize: 3.956.sp,
            ),
          ),
        ),
      ),
    );
  }
}
