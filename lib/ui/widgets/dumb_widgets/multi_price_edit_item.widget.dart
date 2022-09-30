import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/dumb_widgets/sub_portion_multi_price.widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';
import '../../theme/cibus.theme.helpers.dart';

class MultiPriceEditWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final bool check = false;
  const MultiPriceEditWidget({
    Key? key,
  }) : super(key: key);

  get model => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: 100.w - 80.sp,
            child: ExpansionTile(
              collapsedIconColor: ccNutural550,
              iconColor: ccNutural550,
              tilePadding: EdgeInsets.only(left: 0, top: 0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 5.sp,
                          height: 5.sp,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: ccNeutral0,
                                //  check == true ? ccDanger300 :
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
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
                        Text('Gazpaco',
                            style: GoogleFonts.sen(
                              color: ccNutural550,
                              fontSize: 4.395.sp,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                    Text('Multiple Price',
                        style: GoogleFonts.sen(
                          color: ccDanger300,
                          fontSize: 4.395.sp,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        MultiplePriceEditWidget(
                          title: 'Medium Portion',
                        ),
                        MultiplePriceEditWidget(
                          title: 'Large Portion',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}

class $ {}
