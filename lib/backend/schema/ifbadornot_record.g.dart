// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ifbadornot_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IfbadornotRecord> _$ifbadornotRecordSerializer =
    new _$IfbadornotRecordSerializer();

class _$IfbadornotRecordSerializer
    implements StructuredSerializer<IfbadornotRecord> {
  @override
  final Iterable<Type> types = const [IfbadornotRecord, _$IfbadornotRecord];
  @override
  final String wireName = 'IfbadornotRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, IfbadornotRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.goodbad;
    if (value != null) {
      result
        ..add('goodbad')
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
  IfbadornotRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IfbadornotRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'goodbad':
          result.goodbad = serializers.deserialize(value,
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

class _$IfbadornotRecord extends IfbadornotRecord {
  @override
  final String? goodbad;
  @override
  final String? hi;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IfbadornotRecord(
          [void Function(IfbadornotRecordBuilder)? updates]) =>
      (new IfbadornotRecordBuilder()..update(updates))._build();

  _$IfbadornotRecord._({this.goodbad, this.hi, this.ffRef}) : super._();

  @override
  IfbadornotRecord rebuild(void Function(IfbadornotRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IfbadornotRecordBuilder toBuilder() =>
      new IfbadornotRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IfbadornotRecord &&
        goodbad == other.goodbad &&
        hi == other.hi &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, goodbad.hashCode), hi.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IfbadornotRecord')
          ..add('goodbad', goodbad)
          ..add('hi', hi)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IfbadornotRecordBuilder
    implements Builder<IfbadornotRecord, IfbadornotRecordBuilder> {
  _$IfbadornotRecord? _$v;

  String? _goodbad;
  String? get goodbad => _$this._goodbad;
  set goodbad(String? goodbad) => _$this._goodbad = goodbad;

  String? _hi;
  String? get hi => _$this._hi;
  set hi(String? hi) => _$this._hi = hi;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IfbadornotRecordBuilder() {
    IfbadornotRecord._initializeBuilder(this);
  }

  IfbadornotRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _goodbad = $v.goodbad;
      _hi = $v.hi;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IfbadornotRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IfbadornotRecord;
  }

  @override
  void update(void Function(IfbadornotRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IfbadornotRecord build() => _build();

  _$IfbadornotRecord _build() {
    final _$result =
        _$v ?? new _$IfbadornotRecord._(goodbad: goodbad, hi: hi, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
