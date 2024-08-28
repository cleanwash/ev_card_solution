import 'package:flutter/material.dart';
import 'package:ev_card_solution/domain/model/card_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:ev_card_solution/presentation/view/card_screen_view.dart';

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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: Text(card.cardName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                card.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '할인 정보',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  ...card.discountTiers.map((tier) => ListTile(
                        title: Text('최대 할인: ${tier.maximumDiscount}원'),
                        subtitle: Text('월 할인율: ${tier.monthlyDiscountRate}%'),
                      )),
                  SizedBox(height: 16),
                  Text(
                    '사용 가능 회사',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  ...card.eligibleCompanies.map((company) => ListTile(
                        title: Text(company),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
