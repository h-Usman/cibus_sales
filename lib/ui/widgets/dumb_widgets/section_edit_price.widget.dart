import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/multi_price_edit_item.widget.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/single_item_edit_price.widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class SectionEditPriceEditWidget extends StatelessWidget {
  final bool check = false;
  final String sName;
  const SectionEditPriceEditWidget({
    Key? key,
    required this.sName,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.only(left: 0, top: 0),
      collapsedIconColor: ccNutural550,
      iconColor: ccNutural550,
      title: Container(
        height: 12.747.sp,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 5.sp,
              height: 5.sp,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ccNeutral0,
                    //  check == true ? ccDanger300 :
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Checkbox(
                // shape: CircleBorder(),
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
            cshorzSpace4,
            Text(sName,
                style: GoogleFonts.sen(
                  color: ccDanger300,
                  fontSize: 4.395.sp,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              MultiPriceEditWidget(),
              SinglePriceEditWidget(
                name: 'Butternut Squash Soup',
              ),
              SinglePriceEditWidget(
                name: 'Sea Salt Fries',
              ),
            ])
      ],
    );
  }
}

class $ {}
