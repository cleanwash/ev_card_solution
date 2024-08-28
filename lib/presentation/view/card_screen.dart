import 'package:ev_card_solution/presentation/component/card_item.dart';
import 'package:ev_card_solution/presentation/view/card_screen_view.dart';
import 'package:ev_card_solution/utils/app_gradient.dart';
import 'package:ev_card_solution/utils/extension_sizebox.dart';
import 'package:ev_card_solution/utils/txt_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CardScreenViewModel>();
    return Scaffold(
      body: AppGradient(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.hSpace,
            Padding(
              padding: kPagePadding,
              child: Center(
                child: Text(
                  'Find my EV Card 🚗⚡',
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
                child: Text(
                  '신용카드 확인하기',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            10.hSpace,
            SizedBox(
              height: 200,
              child: viewModel.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : viewModel.error != null
                      ? Center(child: Text('Error: ${viewModel.error}'))
                      : viewModel.cards.isEmpty
                          ? const Center(child: Text('No cards available'))
                          : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: viewModel.cards.length,
                              itemBuilder: (context, index) {
                                final card = viewModel.cards[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: CardItem(
                                    cardModel: card,
                                    onTap: () {
                                      context.go(
                                          '/card-detail/${Uri.encodeComponent(card.cardName)}');
                                    },
                                  ),
                                );
                              },
                            ),
            ),
          ],
        ),
      ),
    );
  }
}
