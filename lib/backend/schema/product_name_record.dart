import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_name_record.g.dart';

abstract class ProductNameRecord
    implements Built<ProductNameRecord, ProductNameRecordBuilder> {
  static Serializer<ProductNameRecord> get serializer =>
      _$productNameRecordSerializer;

  String? get productName;

  String? get productImage;

  DocumentReference? get productUser;

  int? get gig;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductNameRecordBuilder builder) => builder
    ..productName = ''
    ..productImage = ''
    ..gig = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productName');

  static Stream<ProductNameRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductNameRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductNameRecord._();
  factory ProductNameRecord([void Function(ProductNameRecordBuilder) updates]) =
      _$ProductNameRecord;

  static ProductNameRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductNameRecordData({
  String? productName,
  String? productImage,
  DocumentReference? productUser,
  int? gig,
}) {
  final firestoreData = serializers.toFirestore(
    ProductNameRecord.serializer,
    ProductNameRecord(
      (p) => p
        ..productName = productName
        ..productImage = productImage
        ..productUser = productUser
        ..gig = gig,
    ),
  );

  return firestoreData;
}
