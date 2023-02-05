import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'search_food_record.g.dart';

abstract class SearchFoodRecord
    implements Built<SearchFoodRecord, SearchFoodRecordBuilder> {
  static Serializer<SearchFoodRecord> get serializer =>
      _$searchFoodRecordSerializer;

  String? get name;

  String? get hi;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SearchFoodRecordBuilder builder) => builder
    ..name = ''
    ..hi = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('search_food');

  static Stream<SearchFoodRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SearchFoodRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SearchFoodRecord._();
  factory SearchFoodRecord([void Function(SearchFoodRecordBuilder) updates]) =
      _$SearchFoodRecord;

  static SearchFoodRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSearchFoodRecordData({
  String? name,
  String? hi,
}) {
  final firestoreData = serializers.toFirestore(
    SearchFoodRecord.serializer,
    SearchFoodRecord(
      (s) => s
        ..name = name
        ..hi = hi,
    ),
  );

  return firestoreData;
}
