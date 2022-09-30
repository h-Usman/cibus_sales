import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/theme/cibus.colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LeftMenuItemWidget extends StatelessWidget {
  final String iconUrl;
  final String menuName;
  final bool isSelected;
  final Function goToPageRequested;
  const LeftMenuItemWidget({
    Key? key,
    required this.goToPageRequested,
    required this.iconUrl,
    required this.menuName,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.sp,
      color: isSelected ? ccNetural285 : Colors.transparent,
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
              left: 5.5.sp,
            )),
            SizedBox(
              child: SvgPicture.asset(
                iconUrl,
                height: 3.95.sp,
                width: 3.95.sp,
                color: isSelected ? ccDanger300 : ccNutural550,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              left: 4.sp,
            )),
            Text(
              menuName,
              style: GoogleFonts.sen(
                color: isSelected ? ccDanger300 : ccNutural550,
                fontSize: isSelected ? 3.95.sp : 3.73.sp,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.normal,
              ),
            ),
          ],
        ),
        onTap: () {
          goToPageRequested();
        },
      ),
    );
  }
}
