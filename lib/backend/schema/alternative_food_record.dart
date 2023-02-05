import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alternative_food_record.g.dart';

abstract class AlternativeFoodRecord
    implements Built<AlternativeFoodRecord, AlternativeFoodRecordBuilder> {
  static Serializer<AlternativeFoodRecord> get serializer =>
      _$alternativeFoodRecordSerializer;

  String? get candy;

  String? get fruitstrips;

  String? get gummies;

  String? get oats;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlternativeFoodRecordBuilder builder) =>
      builder
        ..candy = ''
        ..fruitstrips = ''
        ..gummies = ''
        ..oats = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alternative_food');

  static Stream<AlternativeFoodRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlternativeFoodRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlternativeFoodRecord._();
  factory AlternativeFoodRecord(
          [void Function(AlternativeFoodRecordBuilder) updates]) =
      _$AlternativeFoodRecord;

  static AlternativeFoodRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlternativeFoodRecordData({
  String? candy,
  String? fruitstrips,
  String? gummies,
  String? oats,
}) {
  final firestoreData = serializers.toFirestore(
    AlternativeFoodRecord.serializer,
    AlternativeFoodRecord(
      (a) => a
        ..candy = candy
        ..fruitstrips = fruitstrips
        ..gummies = gummies
        ..oats = oats,
    ),
  );

  return firestoreData;
}
