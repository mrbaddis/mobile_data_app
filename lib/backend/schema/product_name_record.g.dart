// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_name_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductNameRecord> _$productNameRecordSerializer =
    new _$ProductNameRecordSerializer();

class _$ProductNameRecordSerializer
    implements StructuredSerializer<ProductNameRecord> {
  @override
  final Iterable<Type> types = const [ProductNameRecord, _$ProductNameRecord];
  @override
  final String wireName = 'ProductNameRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductNameRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.productName;
    if (value != null) {
      result
        ..add('productName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productImage;
    if (value != null) {
      result
        ..add('productImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productUser;
    if (value != null) {
      result
        ..add('productUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.gig;
    if (value != null) {
      result
        ..add('gig')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ProductNameRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductNameRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'productName':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'productImage':
          result.productImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'productUser':
          result.productUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'gig':
          result.gig = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ProductNameRecord extends ProductNameRecord {
  @override
  final String? productName;
  @override
  final String? productImage;
  @override
  final DocumentReference<Object?>? productUser;
  @override
  final int? gig;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductNameRecord(
          [void Function(ProductNameRecordBuilder)? updates]) =>
      (new ProductNameRecordBuilder()..update(updates))._build();

  _$ProductNameRecord._(
      {this.productName,
      this.productImage,
      this.productUser,
      this.gig,
      this.ffRef})
      : super._();

  @override
  ProductNameRecord rebuild(void Function(ProductNameRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductNameRecordBuilder toBuilder() =>
      new ProductNameRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductNameRecord &&
        productName == other.productName &&
        productImage == other.productImage &&
        productUser == other.productUser &&
        gig == other.gig &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, productName.hashCode), productImage.hashCode),
                productUser.hashCode),
            gig.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductNameRecord')
          ..add('productName', productName)
          ..add('productImage', productImage)
          ..add('productUser', productUser)
          ..add('gig', gig)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductNameRecordBuilder
    implements Builder<ProductNameRecord, ProductNameRecordBuilder> {
  _$ProductNameRecord? _$v;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _productImage;
  String? get productImage => _$this._productImage;
  set productImage(String? productImage) => _$this._productImage = productImage;

  DocumentReference<Object?>? _productUser;
  DocumentReference<Object?>? get productUser => _$this._productUser;
  set productUser(DocumentReference<Object?>? productUser) =>
      _$this._productUser = productUser;

  int? _gig;
  int? get gig => _$this._gig;
  set gig(int? gig) => _$this._gig = gig;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductNameRecordBuilder() {
    ProductNameRecord._initializeBuilder(this);
  }

  ProductNameRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productName = $v.productName;
      _productImage = $v.productImage;
      _productUser = $v.productUser;
      _gig = $v.gig;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductNameRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductNameRecord;
  }

  @override
  void update(void Function(ProductNameRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductNameRecord build() => _build();

  _$ProductNameRecord _build() {
    final _$result = _$v ??
        new _$ProductNameRecord._(
            productName: productName,
            productImage: productImage,
            productUser: productUser,
            gig: gig,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
