import 'package:ev_card_solution/data/data_source/card_api.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardItems extends StatefulWidget {
  const CardItems({Key? key}) : super(key: key);

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  final CardApi cardApi = CardApi();
  int _pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.85);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<List<dynamic>> fetchCardData() async {
    final cards = await cardApi.getCardApi();
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchCardData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data available'));
        } else {
          final cards = snapshot.data!;
          return SizedBox(
            width: double.infinity,
            height: 50.h,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemCount: cards.length,
              itemBuilder: (context, index) {
                final card = cards[index];
                return ArtCard(
                  cardName: 'Card ${index + 1}',
                  cardData: card.toString(),
                  isSelected: _pageIndex == index,
                );
              },
            ),
          );
        }
      },
    );
  }
}

class ArtCard extends StatelessWidget {
  final String cardName;
  final String cardData;
  final bool isSelected;

  const ArtCard({
    Key? key,
    required this.cardName,
    required this.cardData,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: isSelected ? 10 : 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            cardName,
            style: GoogleFonts.poppins(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              'Data: $cardData',
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
