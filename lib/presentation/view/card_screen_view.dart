import 'package:ev_card_solution/domain/model/card_model.dart';
import 'package:flutter/material.dart';
import 'package:ev_card_solution/domain/repository/card_repository.dart';

class CardScreenViewModel with ChangeNotifier {
  final CardRepository _cardRepository;
  List<CardModel> _cards = [];
  bool _isLoading = false;
  String? _error;

  CardScreenViewModel(this._cardRepository) {
    loadCards();
  }

  List<CardModel> get cards => _cards;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadCards() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      print('CardScreenViewModel: Starting to load cards'); // 디버깅 로그
      _cards = await _cardRepository.getCardResults();
      print('CardScreenViewModel: Loaded ${_cards.length} cards'); // 디버깅 로그
    } catch (e) {
      print('CardScreenViewModel: Error loading cards - $e'); // 에러 로깅
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}