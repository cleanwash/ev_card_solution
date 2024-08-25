import 'dart:convert';
import 'package:ev_card_solution/domain/model/card.dart';
import 'package:flutter/services.dart' show rootBundle;

class CardApi {
  Future<List<Card>> getCardApi() async {
    final String response =
        await rootBundle.loadString('assets/card_data_source.json');
    final data = await json.decode(response);

    List<Card> cards = (data['cards'] as List)
        .map((cardData) => Card.fromJson(cardData))
        .toList();

    return cards;
  }
}
