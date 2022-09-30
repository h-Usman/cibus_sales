import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class TextFeildWidget extends StatelessWidget {
  final Function? goToPageRequested;
  final Function? goToModalRequested;
  // final String value;
  final String hint;

  const TextFeildWidget({
    Key? key,
    this.goToPageRequested,
    this.goToModalRequested,
    // required this.value,
    required this.hint,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3.sp, right: 3.sp, top: 1.5.sp),
      width: double.infinity,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 95.w,
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
                        borderRadius: BorderRadius.circular(1.758.sp),
                        borderSide: BorderSide(
                          color: ccPrimary300,
                          width: 0.2197.sp,
                        )),
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: ccPrimary300,
                      fontSize: 3.956.sp,
                    ),
                  ),
                ),
              ),
            ),
            // Padding(padding: EdgeInsets.only(bottom: 1.95.sp)),
          ],
        ),
      ),
    );
  }
}
