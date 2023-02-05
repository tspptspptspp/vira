// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchRecord> _$searchRecordSerializer =
    new _$SearchRecordSerializer();

class _$SearchRecordSerializer implements StructuredSerializer<SearchRecord> {
  @override
  final Iterable<Type> types = const [SearchRecord, _$SearchRecord];
  @override
  final String wireName = 'SearchRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  SearchRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$SearchRecord extends SearchRecord {
  @override
  final String? search;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SearchRecord([void Function(SearchRecordBuilder)? updates]) =>
      (new SearchRecordBuilder()..update(updates))._build();

  _$SearchRecord._({this.search, this.user, this.ffRef}) : super._();

  @override
  SearchRecord rebuild(void Function(SearchRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchRecordBuilder toBuilder() => new SearchRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchRecord &&
        search == other.search &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, search.hashCode), user.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchRecord')
          ..add('search', search)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SearchRecordBuilder
    implements Builder<SearchRecord, SearchRecordBuilder> {
  _$SearchRecord? _$v;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SearchRecordBuilder() {
    SearchRecord._initializeBuilder(this);
  }

  SearchRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchRecord;
  }

  @override
  void update(void Function(SearchRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchRecord build() => _build();

  _$SearchRecord _build() {
    final _$result =
        _$v ?? new _$SearchRecord._(search: search, user: user, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
