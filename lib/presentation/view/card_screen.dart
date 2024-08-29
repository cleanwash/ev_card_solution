import 'package:ev_card_solution/presentation/component/bottom_nav_bar.dart';
import 'package:ev_card_solution/presentation/component/card_list_widget.dart';
import 'package:ev_card_solution/utils/all_eligible_companies.dart';
import 'package:ev_card_solution/utils/app_gradient.dart';
import 'package:ev_card_solution/utils/extension_sizebox.dart';
import 'package:ev_card_solution/utils/txt_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final bool _atBottom = false;
  String selectedCompany = 'All';  // 기본값을 'All'로 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppGradient(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.hSpace,
              Padding(
                padding: kPagePadding,
                child: Center(
                  child: Text(
                    '⚡Find my EV Card⚡',
                    style: headingStyle(context),
                  ),
                ),
              ),
              2.hSpace,
              Padding(
                padding: kPagePadding,
                child: const Center(
                  child: Text(
                    '30장이 넘는 카드 할인카드, 15개가 넘는 충전소 카드',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              2.hSpace,
              Padding(
                padding: EdgeInsets.only(left: 20, top: 1.h),
                child: Center(
                  child: Text(
                    '내 충전카드와 신용카드의 최고의 조합을 찾아라',
                    style: GoogleFonts.poppins(
                        color: Colors.white38,
                        fontSize: 16.5.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              10.hSpace,
              Padding(
                padding: kPagePadding,
                child: Center(
                  child: DropdownButton<String>(
                    value: selectedCompany,
                    items: allEligibleCompanies.map((String company) {
                      return DropdownMenuItem<String>(
                        value: company,
                        child: Text(company),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCompany = newValue!;
                      });
                    },
                    dropdownColor: Colors.grey[800],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              10.hSpace,
              CardListWidget(selectedCompany: selectedCompany),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(atBottom: _atBottom),
    );
  }
}