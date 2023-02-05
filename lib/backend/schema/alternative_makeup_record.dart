import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alternative_makeup_record.g.dart';

abstract class AlternativeMakeupRecord
    implements Built<AlternativeMakeupRecord, AlternativeMakeupRecordBuilder> {
  static Serializer<AlternativeMakeupRecord> get serializer =>
      _$alternativeMakeupRecordSerializer;

  String? get creamstick;

  String? get blush;

  String? get foundation;

  String? get lipandcheekstick;

  String? get powder;

  String? get powder1;

  String? get powder2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlternativeMakeupRecordBuilder builder) =>
      builder
        ..creamstick = ''
        ..blush = ''
        ..foundation = ''
        ..lipandcheekstick = ''
        ..powder = ''
        ..powder1 = ''
        ..powder2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alternative_makeup');

  static Stream<AlternativeMakeupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlternativeMakeupRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlternativeMakeupRecord._();
  factory AlternativeMakeupRecord(
          [void Function(AlternativeMakeupRecordBuilder) updates]) =
      _$AlternativeMakeupRecord;

  static AlternativeMakeupRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlternativeMakeupRecordData({
  String? creamstick,
  String? blush,
  String? foundation,
  String? lipandcheekstick,
  String? powder,
  String? powder1,
  String? powder2,
}) {
  final firestoreData = serializers.toFirestore(
    AlternativeMakeupRecord.serializer,
    AlternativeMakeupRecord(
      (a) => a
        ..creamstick = creamstick
        ..blush = blush
        ..foundation = foundation
        ..lipandcheekstick = lipandcheekstick
        ..powder = powder
        ..powder1 = powder1
        ..powder2 = powder2,
    ),
  );

  return firestoreData;
}
