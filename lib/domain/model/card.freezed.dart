// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardList _$CardListFromJson(Map<String, dynamic> json) {
  return _CardList.fromJson(json);
}

/// @nodoc
mixin _$CardList {
  List<Card> get cards => throw _privateConstructorUsedError;

  /// Serializes this CardList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardListCopyWith<CardList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardListCopyWith<$Res> {
  factory $CardListCopyWith(CardList value, $Res Function(CardList) then) =
      _$CardListCopyWithImpl<$Res, CardList>;
  @useResult
  $Res call({List<Card> cards});
}

/// @nodoc
class _$CardListCopyWithImpl<$Res, $Val extends CardList>
    implements $CardListCopyWith<$Res> {
  _$CardListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardListImplCopyWith<$Res>
    implements $CardListCopyWith<$Res> {
  factory _$$CardListImplCopyWith(
          _$CardListImpl value, $Res Function(_$CardListImpl) then) =
      __$$CardListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Card> cards});
}

/// @nodoc
class __$$CardListImplCopyWithImpl<$Res>
    extends _$CardListCopyWithImpl<$Res, _$CardListImpl>
    implements _$$CardListImplCopyWith<$Res> {
  __$$CardListImplCopyWithImpl(
      _$CardListImpl _value, $Res Function(_$CardListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$CardListImpl(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardListImpl implements _CardList {
  _$CardListImpl({required final List<Card> cards}) : _cards = cards;

  factory _$CardListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardListImplFromJson(json);

  final List<Card> _cards;
  @override
  List<Card> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CardList(cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardListImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  /// Create a copy of CardList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardListImplCopyWith<_$CardListImpl> get copyWith =>
      __$$CardListImplCopyWithImpl<_$CardListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardListImplToJson(
      this,
    );
  }
}

abstract class _CardList implements CardList {
  factory _CardList({required final List<Card> cards}) = _$CardListImpl;

  factory _CardList.fromJson(Map<String, dynamic> json) =
      _$CardListImpl.fromJson;

  @override
  List<Card> get cards;

  /// Create a copy of CardList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardListImplCopyWith<_$CardListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  String get cardName => throw _privateConstructorUsedError;
  List<DiscountTier> get discountTiers => throw _privateConstructorUsedError;
  List<String> get eligibleCompanies => throw _privateConstructorUsedError;

  /// Serializes this Card to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {String cardName,
      List<DiscountTier> discountTiers,
      List<String> eligibleCompanies});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? discountTiers = null,
    Object? eligibleCompanies = null,
  }) {
    return _then(_value.copyWith(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      discountTiers: null == discountTiers
          ? _value.discountTiers
          : discountTiers // ignore: cast_nullable_to_non_nullable
              as List<DiscountTier>,
      eligibleCompanies: null == eligibleCompanies
          ? _value.eligibleCompanies
          : eligibleCompanies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardName,
      List<DiscountTier> discountTiers,
      List<String> eligibleCompanies});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? discountTiers = null,
    Object? eligibleCompanies = null,
  }) {
    return _then(_$CardImpl(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      discountTiers: null == discountTiers
          ? _value._discountTiers
          : discountTiers // ignore: cast_nullable_to_non_nullable
              as List<DiscountTier>,
      eligibleCompanies: null == eligibleCompanies
          ? _value._eligibleCompanies
          : eligibleCompanies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl extends _Card {
  const _$CardImpl(
      {required this.cardName,
      required final List<DiscountTier> discountTiers,
      required final List<String> eligibleCompanies})
      : _discountTiers = discountTiers,
        _eligibleCompanies = eligibleCompanies,
        super._();

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

  @override
  final String cardName;
  final List<DiscountTier> _discountTiers;
  @override
  List<DiscountTier> get discountTiers {
    if (_discountTiers is EqualUnmodifiableListView) return _discountTiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discountTiers);
  }

  final List<String> _eligibleCompanies;
  @override
  List<String> get eligibleCompanies {
    if (_eligibleCompanies is EqualUnmodifiableListView)
      return _eligibleCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eligibleCompanies);
  }

  @override
  String toString() {
    return 'Card(cardName: $cardName, discountTiers: $discountTiers, eligibleCompanies: $eligibleCompanies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            const DeepCollectionEquality()
                .equals(other._discountTiers, _discountTiers) &&
            const DeepCollectionEquality()
                .equals(other._eligibleCompanies, _eligibleCompanies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardName,
      const DeepCollectionEquality().hash(_discountTiers),
      const DeepCollectionEquality().hash(_eligibleCompanies));

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card extends Card {
  const factory _Card(
      {required final String cardName,
      required final List<DiscountTier> discountTiers,
      required final List<String> eligibleCompanies}) = _$CardImpl;
  const _Card._() : super._();

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  String get cardName;
  @override
  List<DiscountTier> get discountTiers;
  @override
  List<String> get eligibleCompanies;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountTier _$DiscountTierFromJson(Map<String, dynamic> json) {
  return _DiscountTier.fromJson(json);
}

/// @nodoc
mixin _$DiscountTier {
  int get maximumDiscount => throw _privateConstructorUsedError;
  int get monthlyDiscountRate => throw _privateConstructorUsedError;
  PreviousMonthPerformance get previousMonthPerformance =>
      throw _privateConstructorUsedError;

  /// Serializes this DiscountTier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountTierCopyWith<DiscountTier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountTierCopyWith<$Res> {
  factory $DiscountTierCopyWith(
          DiscountTier value, $Res Function(DiscountTier) then) =
      _$DiscountTierCopyWithImpl<$Res, DiscountTier>;
  @useResult
  $Res call(
      {int maximumDiscount,
      int monthlyDiscountRate,
      PreviousMonthPerformance previousMonthPerformance});

  $PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance;
}

/// @nodoc
class _$DiscountTierCopyWithImpl<$Res, $Val extends DiscountTier>
    implements $DiscountTierCopyWith<$Res> {
  _$DiscountTierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumDiscount = null,
    Object? monthlyDiscountRate = null,
    Object? previousMonthPerformance = null,
  }) {
    return _then(_value.copyWith(
      maximumDiscount: null == maximumDiscount
          ? _value.maximumDiscount
          : maximumDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyDiscountRate: null == monthlyDiscountRate
          ? _value.monthlyDiscountRate
          : monthlyDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      previousMonthPerformance: null == previousMonthPerformance
          ? _value.previousMonthPerformance
          : previousMonthPerformance // ignore: cast_nullable_to_non_nullable
              as PreviousMonthPerformance,
    ) as $Val);
  }

  /// Create a copy of DiscountTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance {
    return $PreviousMonthPerformanceCopyWith<$Res>(
        _value.previousMonthPerformance, (value) {
      return _then(_value.copyWith(previousMonthPerformance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscountTierImplCopyWith<$Res>
    implements $DiscountTierCopyWith<$Res> {
  factory _$$DiscountTierImplCopyWith(
          _$DiscountTierImpl value, $Res Function(_$DiscountTierImpl) then) =
      __$$DiscountTierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maximumDiscount,
      int monthlyDiscountRate,
      PreviousMonthPerformance previousMonthPerformance});

  @override
  $PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance;
}

/// @nodoc
class __$$DiscountTierImplCopyWithImpl<$Res>
    extends _$DiscountTierCopyWithImpl<$Res, _$DiscountTierImpl>
    implements _$$DiscountTierImplCopyWith<$Res> {
  __$$DiscountTierImplCopyWithImpl(
      _$DiscountTierImpl _value, $Res Function(_$DiscountTierImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumDiscount = null,
    Object? monthlyDiscountRate = null,
    Object? previousMonthPerformance = null,
  }) {
    return _then(_$DiscountTierImpl(
      maximumDiscount: null == maximumDiscount
          ? _value.maximumDiscount
          : maximumDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyDiscountRate: null == monthlyDiscountRate
          ? _value.monthlyDiscountRate
          : monthlyDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      previousMonthPerformance: null == previousMonthPerformance
          ? _value.previousMonthPerformance
          : previousMonthPerformance // ignore: cast_nullable_to_non_nullable
              as PreviousMonthPerformance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountTierImpl implements _DiscountTier {
  const _$DiscountTierImpl(
      {required this.maximumDiscount,
      required this.monthlyDiscountRate,
      required this.previousMonthPerformance});

  factory _$DiscountTierImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountTierImplFromJson(json);

  @override
  final int maximumDiscount;
  @override
  final int monthlyDiscountRate;
  @override
  final PreviousMonthPerformance previousMonthPerformance;

  @override
  String toString() {
    return 'DiscountTier(maximumDiscount: $maximumDiscount, monthlyDiscountRate: $monthlyDiscountRate, previousMonthPerformance: $previousMonthPerformance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountTierImpl &&
            (identical(other.maximumDiscount, maximumDiscount) ||
                other.maximumDiscount == maximumDiscount) &&
            (identical(other.monthlyDiscountRate, monthlyDiscountRate) ||
                other.monthlyDiscountRate == monthlyDiscountRate) &&
            (identical(
                    other.previousMonthPerformance, previousMonthPerformance) ||
                other.previousMonthPerformance == previousMonthPerformance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximumDiscount,
      monthlyDiscountRate, previousMonthPerformance);

  /// Create a copy of DiscountTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountTierImplCopyWith<_$DiscountTierImpl> get copyWith =>
      __$$DiscountTierImplCopyWithImpl<_$DiscountTierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountTierImplToJson(
      this,
    );
  }
}

abstract class _DiscountTier implements DiscountTier {
  const factory _DiscountTier(
          {required final int maximumDiscount,
          required final int monthlyDiscountRate,
          required final PreviousMonthPerformance previousMonthPerformance}) =
      _$DiscountTierImpl;

  factory _DiscountTier.fromJson(Map<String, dynamic> json) =
      _$DiscountTierImpl.fromJson;

  @override
  int get maximumDiscount;
  @override
  int get monthlyDiscountRate;
  @override
  PreviousMonthPerformance get previousMonthPerformance;

  /// Create a copy of DiscountTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountTierImplCopyWith<_$DiscountTierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviousMonthPerformance _$PreviousMonthPerformanceFromJson(
    Map<String, dynamic> json) {
  return _PreviousMonthPerformance.fromJson(json);
}

/// @nodoc
mixin _$PreviousMonthPerformance {
  int get min => throw _privateConstructorUsedError;
  int? get max => throw _privateConstructorUsedError;

  /// Serializes this PreviousMonthPerformance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviousMonthPerformance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviousMonthPerformanceCopyWith<PreviousMonthPerformance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousMonthPerformanceCopyWith<$Res> {
  factory $PreviousMonthPerformanceCopyWith(PreviousMonthPerformance value,
          $Res Function(PreviousMonthPerformance) then) =
      _$PreviousMonthPerformanceCopyWithImpl<$Res, PreviousMonthPerformance>;
  @useResult
  $Res call({int min, int? max});
}

/// @nodoc
class _$PreviousMonthPerformanceCopyWithImpl<$Res,
        $Val extends PreviousMonthPerformance>
    implements $PreviousMonthPerformanceCopyWith<$Res> {
  _$PreviousMonthPerformanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviousMonthPerformance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviousMonthPerformanceImplCopyWith<$Res>
    implements $PreviousMonthPerformanceCopyWith<$Res> {
  factory _$$PreviousMonthPerformanceImplCopyWith(
          _$PreviousMonthPerformanceImpl value,
          $Res Function(_$PreviousMonthPerformanceImpl) then) =
      __$$PreviousMonthPerformanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int min, int? max});
}

/// @nodoc
class __$$PreviousMonthPerformanceImplCopyWithImpl<$Res>
    extends _$PreviousMonthPerformanceCopyWithImpl<$Res,
        _$PreviousMonthPerformanceImpl>
    implements _$$PreviousMonthPerformanceImplCopyWith<$Res> {
  __$$PreviousMonthPerformanceImplCopyWithImpl(
      _$PreviousMonthPerformanceImpl _value,
      $Res Function(_$PreviousMonthPerformanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviousMonthPerformance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = freezed,
  }) {
    return _then(_$PreviousMonthPerformanceImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviousMonthPerformanceImpl implements _PreviousMonthPerformance {
  const _$PreviousMonthPerformanceImpl({required this.min, this.max});

  factory _$PreviousMonthPerformanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviousMonthPerformanceImplFromJson(json);

  @override
  final int min;
  @override
  final int? max;

  @override
  String toString() {
    return 'PreviousMonthPerformance(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousMonthPerformanceImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  /// Create a copy of PreviousMonthPerformance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviousMonthPerformanceImplCopyWith<_$PreviousMonthPerformanceImpl>
      get copyWith => __$$PreviousMonthPerformanceImplCopyWithImpl<
          _$PreviousMonthPerformanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviousMonthPerformanceImplToJson(
      this,
    );
  }
}

abstract class _PreviousMonthPerformance implements PreviousMonthPerformance {
  const factory _PreviousMonthPerformance(
      {required final int min,
      final int? max}) = _$PreviousMonthPerformanceImpl;

  factory _PreviousMonthPerformance.fromJson(Map<String, dynamic> json) =
      _$PreviousMonthPerformanceImpl.fromJson;

  @override
  int get min;
  @override
  int? get max;

  /// Create a copy of PreviousMonthPerformance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviousMonthPerformanceImplCopyWith<_$PreviousMonthPerformanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
