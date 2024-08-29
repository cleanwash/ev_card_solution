import 'package:flutter/material.dart';
import 'package:ev_card_solution/presentation/component/card_item.dart';
import 'package:ev_card_solution/presentation/view/card_screen_view.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CardListWidget extends StatelessWidget {
  final String selectedCompany;

  const CardListWidget({Key? key, required this.selectedCompany}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CardScreenViewModel>();

    List filteredCards = selectedCompany == 'All'
        ? viewModel.cards
        : viewModel.cards.where((card) => card.eligibleCompanies.contains(selectedCompany)).toList();

    return SizedBox(
      height: 200,
      child: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : viewModel.error != null
              ? Center(child: Text('Error: ${viewModel.error}'))
              : filteredCards.isEmpty
                  ? const Center(child: Text('No cards available for this company'))
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filteredCards.length,
                      itemBuilder: (context, index) {
                        final card = filteredCards[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItem(
                            cardModel: card,
                            onTap: () {
                              context.go('/card-detail/${Uri.encodeComponent(card.cardName)}');
                            },
                          ),
                        );
                      },
                    ),
    );
  }
}