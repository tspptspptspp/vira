// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_makeup_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlternativeMakeupRecord> _$alternativeMakeupRecordSerializer =
    new _$AlternativeMakeupRecordSerializer();

class _$AlternativeMakeupRecordSerializer
    implements StructuredSerializer<AlternativeMakeupRecord> {
  @override
  final Iterable<Type> types = const [
    AlternativeMakeupRecord,
    _$AlternativeMakeupRecord
  ];
  @override
  final String wireName = 'AlternativeMakeupRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AlternativeMakeupRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.creamstick;
    if (value != null) {
      result
        ..add('creamstick')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.blush;
    if (value != null) {
      result
        ..add('blush')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foundation;
    if (value != null) {
      result
        ..add('foundation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lipandcheekstick;
    if (value != null) {
      result
        ..add('lipandcheekstick')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.powder;
    if (value != null) {
      result
        ..add('powder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.powder1;
    if (value != null) {
      result
        ..add('powder1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.powder2;
    if (value != null) {
      result
        ..add('powder2')
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
  AlternativeMakeupRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlternativeMakeupRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'creamstick':
          result.creamstick = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'blush':
          result.blush = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foundation':
          result.foundation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lipandcheekstick':
          result.lipandcheekstick = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'powder':
          result.powder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'powder1':
          result.powder1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'powder2':
          result.powder2 = serializers.deserialize(value,
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

class _$AlternativeMakeupRecord extends AlternativeMakeupRecord {
  @override
  final String? creamstick;
  @override
  final String? blush;
  @override
  final String? foundation;
  @override
  final String? lipandcheekstick;
  @override
  final String? powder;
  @override
  final String? powder1;
  @override
  final String? powder2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlternativeMakeupRecord(
          [void Function(AlternativeMakeupRecordBuilder)? updates]) =>
      (new AlternativeMakeupRecordBuilder()..update(updates))._build();

  _$AlternativeMakeupRecord._(
      {this.creamstick,
      this.blush,
      this.foundation,
      this.lipandcheekstick,
      this.powder,
      this.powder1,
      this.powder2,
      this.ffRef})
      : super._();

  @override
  AlternativeMakeupRecord rebuild(
          void Function(AlternativeMakeupRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeMakeupRecordBuilder toBuilder() =>
      new AlternativeMakeupRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeMakeupRecord &&
        creamstick == other.creamstick &&
        blush == other.blush &&
        foundation == other.foundation &&
        lipandcheekstick == other.lipandcheekstick &&
        powder == other.powder &&
        powder1 == other.powder1 &&
        powder2 == other.powder2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, creamstick.hashCode), blush.hashCode),
                            foundation.hashCode),
                        lipandcheekstick.hashCode),
                    powder.hashCode),
                powder1.hashCode),
            powder2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlternativeMakeupRecord')
          ..add('creamstick', creamstick)
          ..add('blush', blush)
          ..add('foundation', foundation)
          ..add('lipandcheekstick', lipandcheekstick)
          ..add('powder', powder)
          ..add('powder1', powder1)
          ..add('powder2', powder2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlternativeMakeupRecordBuilder
    implements
        Builder<AlternativeMakeupRecord, AlternativeMakeupRecordBuilder> {
  _$AlternativeMakeupRecord? _$v;

  String? _creamstick;
  String? get creamstick => _$this._creamstick;
  set creamstick(String? creamstick) => _$this._creamstick = creamstick;

  String? _blush;
  String? get blush => _$this._blush;
  set blush(String? blush) => _$this._blush = blush;

  String? _foundation;
  String? get foundation => _$this._foundation;
  set foundation(String? foundation) => _$this._foundation = foundation;

  String? _lipandcheekstick;
  String? get lipandcheekstick => _$this._lipandcheekstick;
  set lipandcheekstick(String? lipandcheekstick) =>
      _$this._lipandcheekstick = lipandcheekstick;

  String? _powder;
  String? get powder => _$this._powder;
  set powder(String? powder) => _$this._powder = powder;

  String? _powder1;
  String? get powder1 => _$this._powder1;
  set powder1(String? powder1) => _$this._powder1 = powder1;

  String? _powder2;
  String? get powder2 => _$this._powder2;
  set powder2(String? powder2) => _$this._powder2 = powder2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlternativeMakeupRecordBuilder() {
    AlternativeMakeupRecord._initializeBuilder(this);
  }

  AlternativeMakeupRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creamstick = $v.creamstick;
      _blush = $v.blush;
      _foundation = $v.foundation;
      _lipandcheekstick = $v.lipandcheekstick;
      _powder = $v.powder;
      _powder1 = $v.powder1;
      _powder2 = $v.powder2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeMakeupRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlternativeMakeupRecord;
  }

  @override
  void update(void Function(AlternativeMakeupRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternativeMakeupRecord build() => _build();

  _$AlternativeMakeupRecord _build() {
    final _$result = _$v ??
        new _$AlternativeMakeupRecord._(
            creamstick: creamstick,
            blush: blush,
            foundation: foundation,
            lipandcheekstick: lipandcheekstick,
            powder: powder,
            powder1: powder1,
            powder2: powder2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
