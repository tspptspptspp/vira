import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ifbadornot_record.g.dart';

abstract class IfbadornotRecord
    implements Built<IfbadornotRecord, IfbadornotRecordBuilder> {
  static Serializer<IfbadornotRecord> get serializer =>
      _$ifbadornotRecordSerializer;

  String? get goodbad;

  String? get hi;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IfbadornotRecordBuilder builder) => builder
    ..goodbad = ''
    ..hi = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ifbadornot');

  static Stream<IfbadornotRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IfbadornotRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IfbadornotRecord._();
  factory IfbadornotRecord([void Function(IfbadornotRecordBuilder) updates]) =
      _$IfbadornotRecord;

  static IfbadornotRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIfbadornotRecordData({
  String? goodbad,
  String? hi,
}) {
  final firestoreData = serializers.toFirestore(
    IfbadornotRecord.serializer,
    IfbadornotRecord(
      (i) => i
        ..goodbad = goodbad
        ..hi = hi,
    ),
  );

  return firestoreData;
}
