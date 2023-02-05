// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_food_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlternativeFoodRecord> _$alternativeFoodRecordSerializer =
    new _$AlternativeFoodRecordSerializer();

class _$AlternativeFoodRecordSerializer
    implements StructuredSerializer<AlternativeFoodRecord> {
  @override
  final Iterable<Type> types = const [
    AlternativeFoodRecord,
    _$AlternativeFoodRecord
  ];
  @override
  final String wireName = 'AlternativeFoodRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AlternativeFoodRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.candy;
    if (value != null) {
      result
        ..add('candy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fruitstrips;
    if (value != null) {
      result
        ..add('fruitstrips')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gummies;
    if (value != null) {
      result
        ..add('gummies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.oats;
    if (value != null) {
      result
        ..add('oats')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AlternativeFoodRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlternativeFoodRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'candy':
          result.candy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fruitstrips':
          result.fruitstrips = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gummies':
          result.gummies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'oats':
          result.oats = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AlternativeFoodRecord extends AlternativeFoodRecord {
  @override
  final String? candy;
  @override
  final String? fruitstrips;
  @override
  final String? gummies;
  @override
  final String? oats;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlternativeFoodRecord(
          [void Function(AlternativeFoodRecordBuilder)? updates]) =>
      (new AlternativeFoodRecordBuilder()..update(updates))._build();

  _$AlternativeFoodRecord._(
      {this.candy, this.fruitstrips, this.gummies, this.oats, this.ffRef})
      : super._();

  @override
  AlternativeFoodRecord rebuild(
          void Function(AlternativeFoodRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeFoodRecordBuilder toBuilder() =>
      new AlternativeFoodRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeFoodRecord &&
        candy == other.candy &&
        fruitstrips == other.fruitstrips &&
        gummies == other.gummies &&
        oats == other.oats &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, candy.hashCode), fruitstrips.hashCode),
                gummies.hashCode),
            oats.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlternativeFoodRecord')
          ..add('candy', candy)
          ..add('fruitstrips', fruitstrips)
          ..add('gummies', gummies)
          ..add('oats', oats)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlternativeFoodRecordBuilder
    implements Builder<AlternativeFoodRecord, AlternativeFoodRecordBuilder> {
  _$AlternativeFoodRecord? _$v;

  String? _candy;
  String? get candy => _$this._candy;
  set candy(String? candy) => _$this._candy = candy;

  String? _fruitstrips;
  String? get fruitstrips => _$this._fruitstrips;
  set fruitstrips(String? fruitstrips) => _$this._fruitstrips = fruitstrips;

  String? _gummies;
  String? get gummies => _$this._gummies;
  set gummies(String? gummies) => _$this._gummies = gummies;

  String? _oats;
  String? get oats => _$this._oats;
  set oats(String? oats) => _$this._oats = oats;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlternativeFoodRecordBuilder() {
    AlternativeFoodRecord._initializeBuilder(this);
  }

  AlternativeFoodRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _candy = $v.candy;
      _fruitstrips = $v.fruitstrips;
      _gummies = $v.gummies;
      _oats = $v.oats;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeFoodRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlternativeFoodRecord;
  }

  @override
  void update(void Function(AlternativeFoodRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternativeFoodRecord build() => _build();

  _$AlternativeFoodRecord _build() {
    final _$result = _$v ??
        new _$AlternativeFoodRecord._(
            candy: candy,
            fruitstrips: fruitstrips,
            gummies: gummies,
            oats: oats,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
