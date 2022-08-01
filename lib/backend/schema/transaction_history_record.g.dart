// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionHistoryRecord> _$transactionHistoryRecordSerializer =
    new _$TransactionHistoryRecordSerializer();

class _$TransactionHistoryRecordSerializer
    implements StructuredSerializer<TransactionHistoryRecord> {
  @override
  final Iterable<Type> types = const [
    TransactionHistoryRecord,
    _$TransactionHistoryRecord
  ];
  @override
  final String wireName = 'TransactionHistoryRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionHistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  TransactionHistoryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionHistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionHistoryRecord extends TransactionHistoryRecord {
  @override
  final String createdBy;
  @override
  final String to;
  @override
  final String amount;
  @override
  final DateTime created;
  @override
  final DocumentReference<Object> reference;

  factory _$TransactionHistoryRecord(
          [void Function(TransactionHistoryRecordBuilder) updates]) =>
      (new TransactionHistoryRecordBuilder()..update(updates))._build();

  _$TransactionHistoryRecord._(
      {this.createdBy, this.to, this.amount, this.created, this.reference})
      : super._();

  @override
  TransactionHistoryRecord rebuild(
          void Function(TransactionHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionHistoryRecordBuilder toBuilder() =>
      new TransactionHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionHistoryRecord &&
        createdBy == other.createdBy &&
        to == other.to &&
        amount == other.amount &&
        created == other.created &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, createdBy.hashCode), to.hashCode), amount.hashCode),
            created.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionHistoryRecord')
          ..add('createdBy', createdBy)
          ..add('to', to)
          ..add('amount', amount)
          ..add('created', created)
          ..add('reference', reference))
        .toString();
  }
}

class TransactionHistoryRecordBuilder
    implements
        Builder<TransactionHistoryRecord, TransactionHistoryRecordBuilder> {
  _$TransactionHistoryRecord _$v;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  DateTime _created;
  DateTime get created => _$this._created;
  set created(DateTime created) => _$this._created = created;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TransactionHistoryRecordBuilder() {
    TransactionHistoryRecord._initializeBuilder(this);
  }

  TransactionHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdBy = $v.createdBy;
      _to = $v.to;
      _amount = $v.amount;
      _created = $v.created;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionHistoryRecord;
  }

  @override
  void update(void Function(TransactionHistoryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionHistoryRecord build() => _build();

  _$TransactionHistoryRecord _build() {
    final _$result = _$v ??
        new _$TransactionHistoryRecord._(
            createdBy: createdBy,
            to: to,
            amount: amount,
            created: created,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
