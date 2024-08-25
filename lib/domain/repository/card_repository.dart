import 'package:ev_card_solution/domain/model/card.dart';

abstract class CardRepository {
  Future<List<Card>> getCardResults({String? cardName});
}