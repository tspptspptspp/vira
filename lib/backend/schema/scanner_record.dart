import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'scanner_record.g.dart';

abstract class ScannerRecord
    implements Built<ScannerRecord, ScannerRecordBuilder> {
  static Serializer<ScannerRecord> get serializer => _$scannerRecordSerializer;

  String? get image;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScannerRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scanner');

  static Stream<ScannerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScannerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScannerRecord._();
  factory ScannerRecord([void Function(ScannerRecordBuilder) updates]) =
      _$ScannerRecord;

  static ScannerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScannerRecordData({
  String? image,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    ScannerRecord.serializer,
    ScannerRecord(
      (s) => s
        ..image = image
        ..time = time,
    ),
  );

  return firestoreData;
}
