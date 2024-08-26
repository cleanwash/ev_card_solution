import 'package:ev_card_solution/presentation/component/card_items.dart';
import 'package:ev_card_solution/utils/app_gradient.dart';
import 'package:ev_card_solution/utils/extension_sizebox.dart';
import 'package:ev_card_solution/utils/txt_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppGradient(
        child: Column(
          children: [
            10.hSpace,
            Padding(
              padding: kPagePadding,
              child: Text(
                'Find my EV Card 🚗⚡',
                // 🚗🔋⚡🔌
                style: headingStyle(context),
              ),
            ),
            2.hSpace,
            Padding(
              padding: kPagePadding,
              child: Text(
                '30장이 넘는 카드 할인카드, 15개가 넘는 충전소 카드',
                style: TextStyle(color: Colors.white),
              ),
            ),
            2.hSpace,
            Padding(
              padding: EdgeInsets.only(left: 20, top: 1.h),
              child: Text(
                'Your art is style and now you can share\nart with your friends and unknown people',
                style: GoogleFonts.poppins(
                    color: Colors.white38,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ////////////////////////////////////
            10.hSpace,
            Padding(
              padding: kPagePadding,
              child: Text(
                '신용카드 확인하기',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            10.hSpace,
            const CardItems()
          ],
        ),
      ),
    );
  }
}
