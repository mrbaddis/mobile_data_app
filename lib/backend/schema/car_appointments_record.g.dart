// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_appointments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarAppointmentsRecord> _$carAppointmentsRecordSerializer =
    new _$CarAppointmentsRecordSerializer();

class _$CarAppointmentsRecordSerializer
    implements StructuredSerializer<CarAppointmentsRecord> {
  @override
  final Iterable<Type> types = const [
    CarAppointmentsRecord,
    _$CarAppointmentsRecord
  ];
  @override
  final String wireName = 'CarAppointmentsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CarAppointmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.scheduledDate;
    if (value != null) {
      result
        ..add('scheduledDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.carRef;
    if (value != null) {
      result
        ..add('carRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentNumber;
    if (value != null) {
      result
        ..add('appointmentNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.esim;
    if (value != null) {
      result
        ..add('esim')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CarAppointmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarAppointmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'scheduledDate':
          result.scheduledDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'carRef':
          result.carRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appointmentNumber':
          result.appointmentNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'esim':
          result.esim = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CarAppointmentsRecord extends CarAppointmentsRecord {
  @override
  final DateTime? scheduledDate;
  @override
  final DocumentReference<Object?>? carRef;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final String? type;
  @override
  final int? appointmentNumber;
  @override
  final String? esim;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarAppointmentsRecord(
          [void Function(CarAppointmentsRecordBuilder)? updates]) =>
      (new CarAppointmentsRecordBuilder()..update(updates))._build();

  _$CarAppointmentsRecord._(
      {this.scheduledDate,
      this.carRef,
      this.description,
      this.status,
      this.type,
      this.appointmentNumber,
      this.esim,
      this.ffRef})
      : super._();

  @override
  CarAppointmentsRecord rebuild(
          void Function(CarAppointmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarAppointmentsRecordBuilder toBuilder() =>
      new CarAppointmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarAppointmentsRecord &&
        scheduledDate == other.scheduledDate &&
        carRef == other.carRef &&
        description == other.description &&
        status == other.status &&
        type == other.type &&
        appointmentNumber == other.appointmentNumber &&
        esim == other.esim &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, scheduledDate.hashCode),
                                carRef.hashCode),
                            description.hashCode),
                        status.hashCode),
                    type.hashCode),
                appointmentNumber.hashCode),
            esim.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarAppointmentsRecord')
          ..add('scheduledDate', scheduledDate)
          ..add('carRef', carRef)
          ..add('description', description)
          ..add('status', status)
          ..add('type', type)
          ..add('appointmentNumber', appointmentNumber)
          ..add('esim', esim)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarAppointmentsRecordBuilder
    implements Builder<CarAppointmentsRecord, CarAppointmentsRecordBuilder> {
  _$CarAppointmentsRecord? _$v;

  DateTime? _scheduledDate;
  DateTime? get scheduledDate => _$this._scheduledDate;
  set scheduledDate(DateTime? scheduledDate) =>
      _$this._scheduledDate = scheduledDate;

  DocumentReference<Object?>? _carRef;
  DocumentReference<Object?>? get carRef => _$this._carRef;
  set carRef(DocumentReference<Object?>? carRef) => _$this._carRef = carRef;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _appointmentNumber;
  int? get appointmentNumber => _$this._appointmentNumber;
  set appointmentNumber(int? appointmentNumber) =>
      _$this._appointmentNumber = appointmentNumber;

  String? _esim;
  String? get esim => _$this._esim;
  set esim(String? esim) => _$this._esim = esim;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarAppointmentsRecordBuilder() {
    CarAppointmentsRecord._initializeBuilder(this);
  }

  CarAppointmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scheduledDate = $v.scheduledDate;
      _carRef = $v.carRef;
      _description = $v.description;
      _status = $v.status;
      _type = $v.type;
      _appointmentNumber = $v.appointmentNumber;
      _esim = $v.esim;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarAppointmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarAppointmentsRecord;
  }

  @override
  void update(void Function(CarAppointmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarAppointmentsRecord build() => _build();

  _$CarAppointmentsRecord _build() {
    final _$result = _$v ??
        new _$CarAppointmentsRecord._(
            scheduledDate: scheduledDate,
            carRef: carRef,
            description: description,
            status: status,
            type: type,
            appointmentNumber: appointmentNumber,
            esim: esim,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
