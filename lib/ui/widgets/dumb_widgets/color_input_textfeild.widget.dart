import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class InputColorWidget extends StatelessWidget {
  // final String hint;
  // final bool check;
  const InputColorWidget({
    Key? key,
    // required this.hint,
    // required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 7.5.sp,
        right: 7.5.sp,
      ),
      child: Row(
        children: [
          Container(
              decoration:
                  // ignore: prefer_const_constructors
                  BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1.758.sp),
                  bottomLeft: Radius.circular(1.758.sp),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              // color:
              //     ccNetural350,
              height: 8.5714.sp,
              width: 11.86.sp,
              // margin:
              //     EdgeInsets.only(right: 3.099.sp),
              // color:
              //     ccNeutral0, // background color
              child: Container(
                color: ccDanger300,
                margin: EdgeInsets.only(left: 1),
              )
              // icon
              ),
          SizedBox(
            width: 33.186.sp,
            height: 8.50.sp,
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
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(1.758.sp),
                        bottomRight: Radius.circular(1.758.sp),
                      ),
                      borderSide: BorderSide(
                        color: ccPrimary300,
                        width: 0.2197.sp,
                      )),
                  hintText: '#E53C1F',
                  hintStyle: TextStyle(
                    color: ccPrimary300,
                    fontSize: 3.956.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
