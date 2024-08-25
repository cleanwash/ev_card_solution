import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class CardList with _$CardList {
  factory CardList({
    required List<Card> cards,
  }) = _CardList;

  factory CardList.fromJson(Map<String, dynamic> json) => _$CardListFromJson(json);
}

@freezed
class Card with _$Card {
  const Card._(); 

  const factory Card({
    required String cardName,
    required List<DiscountTier> discountTiers,
    required List<String> eligibleCompanies,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

extension CardExtension on Card {
  bool isEligibleFor(String company) {
    return eligibleCompanies.contains(company);
  }

  DiscountTier? getApplicableDiscountTier(int previousMonthPerformance) {
    return discountTiers.firstWhere(
      (tier) => previousMonthPerformance >= tier.previousMonthPerformance.min &&
          (tier.previousMonthPerformance.max == null ||
              previousMonthPerformance < tier.previousMonthPerformance.max!),
    );
  }

  int calculateDiscount(int chargeAmount, int previousMonthPerformance) {
    final applicableTier = getApplicableDiscountTier(previousMonthPerformance);
    if (applicableTier == null) return 0;

    final discount = (chargeAmount * applicableTier.monthlyDiscountRate / 100).round();
    return discount > applicableTier.maximumDiscount ? applicableTier.maximumDiscount : discount;
  }
}

@freezed
class DiscountTier with _$DiscountTier {
  const factory DiscountTier({
    required int maximumDiscount,
    required int monthlyDiscountRate,
    required PreviousMonthPerformance previousMonthPerformance,
  }) = _DiscountTier;

  factory DiscountTier.fromJson(Map<String, dynamic> json) => _$DiscountTierFromJson(json);
}

@freezed
class PreviousMonthPerformance with _$PreviousMonthPerformance {
  const factory PreviousMonthPerformance({
    required int min,
    int? max,
  }) = _PreviousMonthPerformance;

  factory PreviousMonthPerformance.fromJson(Map<String, dynamic> json) => _$PreviousMonthPerformanceFromJson(json);
}