// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScannerRecord> _$scannerRecordSerializer =
    new _$ScannerRecordSerializer();

class _$ScannerRecordSerializer implements StructuredSerializer<ScannerRecord> {
  @override
  final Iterable<Type> types = const [ScannerRecord, _$ScannerRecord];
  @override
  final String wireName = 'ScannerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScannerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ScannerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScannerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ScannerRecord extends ScannerRecord {
  @override
  final String? image;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScannerRecord([void Function(ScannerRecordBuilder)? updates]) =>
      (new ScannerRecordBuilder()..update(updates))._build();

  _$ScannerRecord._({this.image, this.time, this.ffRef}) : super._();

  @override
  ScannerRecord rebuild(void Function(ScannerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScannerRecordBuilder toBuilder() => new ScannerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScannerRecord &&
        image == other.image &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, image.hashCode), time.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScannerRecord')
          ..add('image', image)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScannerRecordBuilder
    implements Builder<ScannerRecord, ScannerRecordBuilder> {
  _$ScannerRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScannerRecordBuilder() {
    ScannerRecord._initializeBuilder(this);
  }

  ScannerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScannerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScannerRecord;
  }

  @override
  void update(void Function(ScannerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScannerRecord build() => _build();

  _$ScannerRecord _build() {
    final _$result =
        _$v ?? new _$ScannerRecord._(image: image, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
