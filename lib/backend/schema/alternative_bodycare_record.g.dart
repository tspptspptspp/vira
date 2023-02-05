// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_bodycare_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlternativeBodycareRecord> _$alternativeBodycareRecordSerializer =
    new _$AlternativeBodycareRecordSerializer();

class _$AlternativeBodycareRecordSerializer
    implements StructuredSerializer<AlternativeBodycareRecord> {
  @override
  final Iterable<Type> types = const [
    AlternativeBodycareRecord,
    _$AlternativeBodycareRecord
  ];
  @override
  final String wireName = 'AlternativeBodycareRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AlternativeBodycareRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.babylotion;
    if (value != null) {
      result
        ..add('babylotion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beardoil;
    if (value != null) {
      result
        ..add('beardoil')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beardwash;
    if (value != null) {
      result
        ..add('beardwash')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deodorant;
    if (value != null) {
      result
        ..add('deodorant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facewash;
    if (value != null) {
      result
        ..add('facewash')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fragrances;
    if (value != null) {
      result
        ..add('fragrances')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lotion;
    if (value != null) {
      result
        ..add('lotion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lotion1;
    if (value != null) {
      result
        ..add('lotion1')
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
  AlternativeBodycareRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlternativeBodycareRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'babylotion':
          result.babylotion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'beardoil':
          result.beardoil = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'beardwash':
          result.beardwash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deodorant':
          result.deodorant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'facewash':
          result.facewash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fragrances':
          result.fragrances = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lotion':
          result.lotion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lotion1':
          result.lotion1 = serializers.deserialize(value,
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

class _$AlternativeBodycareRecord extends AlternativeBodycareRecord {
  @override
  final String? babylotion;
  @override
  final String? beardoil;
  @override
  final String? beardwash;
  @override
  final String? deodorant;
  @override
  final String? facewash;
  @override
  final String? fragrances;
  @override
  final String? lotion;
  @override
  final String? lotion1;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlternativeBodycareRecord(
          [void Function(AlternativeBodycareRecordBuilder)? updates]) =>
      (new AlternativeBodycareRecordBuilder()..update(updates))._build();

  _$AlternativeBodycareRecord._(
      {this.babylotion,
      this.beardoil,
      this.beardwash,
      this.deodorant,
      this.facewash,
      this.fragrances,
      this.lotion,
      this.lotion1,
      this.ffRef})
      : super._();

  @override
  AlternativeBodycareRecord rebuild(
          void Function(AlternativeBodycareRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeBodycareRecordBuilder toBuilder() =>
      new AlternativeBodycareRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeBodycareRecord &&
        babylotion == other.babylotion &&
        beardoil == other.beardoil &&
        beardwash == other.beardwash &&
        deodorant == other.deodorant &&
        facewash == other.facewash &&
        fragrances == other.fragrances &&
        lotion == other.lotion &&
        lotion1 == other.lotion1 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, babylotion.hashCode),
                                    beardoil.hashCode),
                                beardwash.hashCode),
                            deodorant.hashCode),
                        facewash.hashCode),
                    fragrances.hashCode),
                lotion.hashCode),
            lotion1.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlternativeBodycareRecord')
          ..add('babylotion', babylotion)
          ..add('beardoil', beardoil)
          ..add('beardwash', beardwash)
          ..add('deodorant', deodorant)
          ..add('facewash', facewash)
          ..add('fragrances', fragrances)
          ..add('lotion', lotion)
          ..add('lotion1', lotion1)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlternativeBodycareRecordBuilder
    implements
        Builder<AlternativeBodycareRecord, AlternativeBodycareRecordBuilder> {
  _$AlternativeBodycareRecord? _$v;

  String? _babylotion;
  String? get babylotion => _$this._babylotion;
  set babylotion(String? babylotion) => _$this._babylotion = babylotion;

  String? _beardoil;
  String? get beardoil => _$this._beardoil;
  set beardoil(String? beardoil) => _$this._beardoil = beardoil;

  String? _beardwash;
  String? get beardwash => _$this._beardwash;
  set beardwash(String? beardwash) => _$this._beardwash = beardwash;

  String? _deodorant;
  String? get deodorant => _$this._deodorant;
  set deodorant(String? deodorant) => _$this._deodorant = deodorant;

  String? _facewash;
  String? get facewash => _$this._facewash;
  set facewash(String? facewash) => _$this._facewash = facewash;

  String? _fragrances;
  String? get fragrances => _$this._fragrances;
  set fragrances(String? fragrances) => _$this._fragrances = fragrances;

  String? _lotion;
  String? get lotion => _$this._lotion;
  set lotion(String? lotion) => _$this._lotion = lotion;

  String? _lotion1;
  String? get lotion1 => _$this._lotion1;
  set lotion1(String? lotion1) => _$this._lotion1 = lotion1;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlternativeBodycareRecordBuilder() {
    AlternativeBodycareRecord._initializeBuilder(this);
  }

  AlternativeBodycareRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _babylotion = $v.babylotion;
      _beardoil = $v.beardoil;
      _beardwash = $v.beardwash;
      _deodorant = $v.deodorant;
      _facewash = $v.facewash;
      _fragrances = $v.fragrances;
      _lotion = $v.lotion;
      _lotion1 = $v.lotion1;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeBodycareRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlternativeBodycareRecord;
  }

  @override
  void update(void Function(AlternativeBodycareRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternativeBodycareRecord build() => _build();

  _$AlternativeBodycareRecord _build() {
    final _$result = _$v ??
        new _$AlternativeBodycareRecord._(
            babylotion: babylotion,
            beardoil: beardoil,
            beardwash: beardwash,
            deodorant: deodorant,
            facewash: facewash,
            fragrances: fragrances,
            lotion: lotion,
            lotion1: lotion1,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
