import 'dart:convert';
import 'package:ev_card_solution/domain/model/card_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class CardApi {
  Future<List<CardModel>> getCardApi() async {
    final String response =
        await rootBundle.loadString('assets/card_data_source.json');
    final data = await json.decode(response);

    List<CardModel> cards = (data['cards'] as List)
        .map((cardData) => CardModel.fromJson(cardData))
        .toList();

    return cards;
  }
}
