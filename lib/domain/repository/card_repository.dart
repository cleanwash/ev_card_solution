import 'package:ev_card_solution/domain/model/card.dart';

abstract  interface class CardRepository {
  Future<List<Card>> getCardResults();
}