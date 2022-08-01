import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_history_record.g.dart';

abstract class TransactionHistoryRecord
    implements
        Built<TransactionHistoryRecord, TransactionHistoryRecordBuilder> {
  static Serializer<TransactionHistoryRecord> get serializer =>
      _$transactionHistoryRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  String get createdBy;

  @nullable
  String get to;

  @nullable
  String get amount;

  @nullable
  DateTime get created;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionHistoryRecordBuilder builder) =>
      builder
        ..createdBy = ''
        ..to = ''
        ..amount = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction_history');

  static Stream<TransactionHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionHistoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionHistoryRecord._();
  factory TransactionHistoryRecord(
          [void Function(TransactionHistoryRecordBuilder) updates]) =
      _$TransactionHistoryRecord;

  static TransactionHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionHistoryRecordData({
  String createdBy,
  String to,
  String amount,
  DateTime created,
}) =>
    serializers.toFirestore(
        TransactionHistoryRecord.serializer,
        TransactionHistoryRecord((t) => t
          ..createdBy = createdBy
          ..to = to
          ..amount = amount
          ..created = created));
