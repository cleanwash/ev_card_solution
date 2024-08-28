import 'package:ev_card_solution/data/data_source/card_api.dart';
import 'package:ev_card_solution/domain/model/card_model.dart';
import 'package:ev_card_solution/domain/repository/card_repository.dart';

class CardRepositoryImpl implements CardRepository {
  final CardApi cardApi;

  CardRepositoryImpl({
    required this.cardApi,
  });

  @override
  Future<List<CardModel>> getCardResults({String? cardName}) async {
    final cards = await cardApi.getCardApi();
    if (cardName != null && cardName.isNotEmpty) {
      return cards.where((card) => card.cardName == cardName).toList();
    }
    return cards;
  }
}