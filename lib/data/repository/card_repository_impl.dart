// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ev_card_solution/data/data_source/card_api.dart';
import 'package:ev_card_solution/domain/model/card.dart';
import 'package:ev_card_solution/domain/repository/card_repository.dart';

class CardRepositoryImpl implements CardRepository {
  final CardApi cardApi;
  CardRepositoryImpl({
    required this.cardApi,
  });

  @override
  Future<List<Card>> getCardResults() async {
    return await cardApi.getCardApi();
  }
}
