import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/prefix_text_feild.widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class MultiplePriceEditWidget extends StatelessWidget {
  final String title;
  final bool check = false;
  const MultiplePriceEditWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 12.747.sp,
          width: 100.w - 90.sp,
          decoration: BoxDecoration(
            color: check == true ? ccDanger100 : ccNeutral0,
            border: Border(
              bottom: BorderSide(
                color: ccNutural550,
                width: 0.5,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5.sp,
                height: 5.sp,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ccNeutral0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Checkbox(
                  activeColor: ccDanger300,
                  checkColor: ccNeutral0,
                  value: check,
                  onChanged: (value) {
                    // setState(() {
                    //   _myBoolean = value; // rebuilds with new value
                    // });
                  },
                ),
              ),
              Row(
                children: [
                  Text(title,
                      style: GoogleFonts.sen(
                        color: ccNutural550,
                        fontSize: 4.395.sp,
                        fontWeight: FontWeight.w400,
                      )),
                  cshorzSpace5,
                  PrefixTextFeildWidget(
                    hint: '20.00',
                    preVal: 'RM',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class $ {}
