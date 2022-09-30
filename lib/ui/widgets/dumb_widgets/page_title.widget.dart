import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../theme/cibus.colors.dart';

class PageTitlewWidget extends StatelessWidget {
  final String titleName;
  const PageTitlewWidget({Key? key, required this.titleName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleName,
      style: GoogleFonts.sen(
        color: ccNetural1000,
        fontSize: 5.714.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
