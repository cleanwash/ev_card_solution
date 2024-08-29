import 'package:ev_card_solution/utils/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:ev_card_solution/domain/model/card_model.dart';
import 'package:provider/provider.dart';
import 'package:ev_card_solution/presentation/view/card_screen_view.dart';
import 'package:go_router/go_router.dart';

class CardDetailScreen extends StatelessWidget {
  final String cardName;

  const CardDetailScreen({super.key, required this.cardName});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CardScreenViewModel>();
    final card = viewModel.cards.firstWhere(
      (card) => card.cardName == cardName,
      orElse: () => CardModel(
        cardName: 'Unknown Card',
        imageUrl: '',
        discountTiers: [],
        eligibleCompanies: [],
      ),
    );
    return Scaffold(
      body: AppGradient(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => context.go('/'),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            card.cardName,
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 48), // 오른쪽 여백을 위한 빈 공간
                      ],
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(card.imageUrl, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '할인 정보',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                      ),
                      ...card.discountTiers.map((tier) => ListTile(
                            title: Text('최대 할인: ${tier.maximumDiscount}원', style: TextStyle(color: Colors.white)),
                            subtitle: Text('월 할인율: ${tier.monthlyDiscountRate}%', style: TextStyle(color: Colors.white70)),
                          )),
                      const SizedBox(height: 16),
                      Text(
                        '사용 가능 회사',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                      ),
                      ...card.eligibleCompanies.map((company) => ListTile(
                            title: Text(company, style: TextStyle(color: Colors.white)),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}