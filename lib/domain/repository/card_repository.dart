import 'package:ev_card_solution/domain/model/card_model.dart';

abstract class CardRepository {
  Future<List<CardModel>> getCardResults({String? cardName});
}