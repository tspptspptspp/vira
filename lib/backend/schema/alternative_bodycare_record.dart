import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alternative_bodycare_record.g.dart';

abstract class AlternativeBodycareRecord
    implements
        Built<AlternativeBodycareRecord, AlternativeBodycareRecordBuilder> {
  static Serializer<AlternativeBodycareRecord> get serializer =>
      _$alternativeBodycareRecordSerializer;

  String? get babylotion;

  String? get beardoil;

  String? get beardwash;

  String? get deodorant;

  String? get facewash;

  String? get fragrances;

  String? get lotion;

  String? get lotion1;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlternativeBodycareRecordBuilder builder) =>
      builder
        ..babylotion = ''
        ..beardoil = ''
        ..beardwash = ''
        ..deodorant = ''
        ..facewash = ''
        ..fragrances = ''
        ..lotion = ''
        ..lotion1 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alternative_bodycare');

  static Stream<AlternativeBodycareRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlternativeBodycareRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlternativeBodycareRecord._();
  factory AlternativeBodycareRecord(
          [void Function(AlternativeBodycareRecordBuilder) updates]) =
      _$AlternativeBodycareRecord;

  static AlternativeBodycareRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlternativeBodycareRecordData({
  String? babylotion,
  String? beardoil,
  String? beardwash,
  String? deodorant,
  String? facewash,
  String? fragrances,
  String? lotion,
  String? lotion1,
}) {
  final firestoreData = serializers.toFirestore(
    AlternativeBodycareRecord.serializer,
    AlternativeBodycareRecord(
      (a) => a
        ..babylotion = babylotion
        ..beardoil = beardoil
        ..beardwash = beardwash
        ..deodorant = deodorant
        ..facewash = facewash
        ..fragrances = fragrances
        ..lotion = lotion
        ..lotion1 = lotion1,
    ),
  );

  return firestoreData;
}
