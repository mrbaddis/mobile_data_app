// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentsRecord> _$paymentsRecordSerializer =
    new _$PaymentsRecordSerializer();

class _$PaymentsRecordSerializer
    implements StructuredSerializer<PaymentsRecord> {
  @override
  final Iterable<Type> types = const [PaymentsRecord, _$PaymentsRecord];
  @override
  final String wireName = 'PaymentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.paymentUser;
    if (value != null) {
      result
        ..add('paymentUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.paymentProduct;
    if (value != null) {
      result
        ..add('paymentProduct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.paymentDate;
    if (value != null) {
      result
        ..add('paymentDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paymentStatus;
    if (value != null) {
      result
        ..add('paymentStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentAmount;
    if (value != null) {
      result
        ..add('payment_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  PaymentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'paymentUser':
          result.paymentUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'paymentProduct':
          result.paymentProduct = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'paymentDate':
          result.paymentDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'paymentStatus':
          result.paymentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payment_amount':
          result.paymentAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$PaymentsRecord extends PaymentsRecord {
  @override
  final DocumentReference<Object?>? paymentUser;
  @override
  final DocumentReference<Object?>? paymentProduct;
  @override
  final DateTime? paymentDate;
  @override
  final String? paymentStatus;
  @override
  final double? paymentAmount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PaymentsRecord([void Function(PaymentsRecordBuilder)? updates]) =>
      (new PaymentsRecordBuilder()..update(updates))._build();

  _$PaymentsRecord._(
      {this.paymentUser,
      this.paymentProduct,
      this.paymentDate,
      this.paymentStatus,
      this.paymentAmount,
      this.ffRef})
      : super._();

  @override
  PaymentsRecord rebuild(void Function(PaymentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentsRecordBuilder toBuilder() =>
      new PaymentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentsRecord &&
        paymentUser == other.paymentUser &&
        paymentProduct == other.paymentProduct &&
        paymentDate == other.paymentDate &&
        paymentStatus == other.paymentStatus &&
        paymentAmount == other.paymentAmount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, paymentUser.hashCode), paymentProduct.hashCode),
                    paymentDate.hashCode),
                paymentStatus.hashCode),
            paymentAmount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentsRecord')
          ..add('paymentUser', paymentUser)
          ..add('paymentProduct', paymentProduct)
          ..add('paymentDate', paymentDate)
          ..add('paymentStatus', paymentStatus)
          ..add('paymentAmount', paymentAmount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PaymentsRecordBuilder
    implements Builder<PaymentsRecord, PaymentsRecordBuilder> {
  _$PaymentsRecord? _$v;

  DocumentReference<Object?>? _paymentUser;
  DocumentReference<Object?>? get paymentUser => _$this._paymentUser;
  set paymentUser(DocumentReference<Object?>? paymentUser) =>
      _$this._paymentUser = paymentUser;

  DocumentReference<Object?>? _paymentProduct;
  DocumentReference<Object?>? get paymentProduct => _$this._paymentProduct;
  set paymentProduct(DocumentReference<Object?>? paymentProduct) =>
      _$this._paymentProduct = paymentProduct;

  DateTime? _paymentDate;
  DateTime? get paymentDate => _$this._paymentDate;
  set paymentDate(DateTime? paymentDate) => _$this._paymentDate = paymentDate;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  double? _paymentAmount;
  double? get paymentAmount => _$this._paymentAmount;
  set paymentAmount(double? paymentAmount) =>
      _$this._paymentAmount = paymentAmount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PaymentsRecordBuilder() {
    PaymentsRecord._initializeBuilder(this);
  }

  PaymentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentUser = $v.paymentUser;
      _paymentProduct = $v.paymentProduct;
      _paymentDate = $v.paymentDate;
      _paymentStatus = $v.paymentStatus;
      _paymentAmount = $v.paymentAmount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentsRecord;
  }

  @override
  void update(void Function(PaymentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentsRecord build() => _build();

  _$PaymentsRecord _build() {
    final _$result = _$v ??
        new _$PaymentsRecord._(
            paymentUser: paymentUser,
            paymentProduct: paymentProduct,
            paymentDate: paymentDate,
            paymentStatus: paymentStatus,
            paymentAmount: paymentAmount,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
