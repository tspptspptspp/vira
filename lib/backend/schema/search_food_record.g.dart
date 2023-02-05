// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchFoodRecord> _$searchFoodRecordSerializer =
    new _$SearchFoodRecordSerializer();

class _$SearchFoodRecordSerializer
    implements StructuredSerializer<SearchFoodRecord> {
  @override
  final Iterable<Type> types = const [SearchFoodRecord, _$SearchFoodRecord];
  @override
  final String wireName = 'SearchFoodRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchFoodRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hi;
    if (value != null) {
      result
        ..add('hi')
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
  SearchFoodRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchFoodRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hi':
          result.hi = serializers.deserialize(value,
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

class _$SearchFoodRecord extends SearchFoodRecord {
  @override
  final String? name;
  @override
  final String? hi;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SearchFoodRecord(
          [void Function(SearchFoodRecordBuilder)? updates]) =>
      (new SearchFoodRecordBuilder()..update(updates))._build();

  _$SearchFoodRecord._({this.name, this.hi, this.ffRef}) : super._();

  @override
  SearchFoodRecord rebuild(void Function(SearchFoodRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchFoodRecordBuilder toBuilder() =>
      new SearchFoodRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchFoodRecord &&
        name == other.name &&
        hi == other.hi &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), hi.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchFoodRecord')
          ..add('name', name)
          ..add('hi', hi)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SearchFoodRecordBuilder
    implements Builder<SearchFoodRecord, SearchFoodRecordBuilder> {
  _$SearchFoodRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _hi;
  String? get hi => _$this._hi;
  set hi(String? hi) => _$this._hi = hi;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SearchFoodRecordBuilder() {
    SearchFoodRecord._initializeBuilder(this);
  }

  SearchFoodRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _hi = $v.hi;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchFoodRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchFoodRecord;
  }

  @override
  void update(void Function(SearchFoodRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchFoodRecord build() => _build();

  _$SearchFoodRecord _build() {
    final _$result =
        _$v ?? new _$SearchFoodRecord._(name: name, hi: hi, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
