import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuRecord extends FirestoreRecord {
  MenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "salePrice" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  bool hasRatings() => _ratings != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "discounted" field.
  bool? _discounted;
  bool get discounted => _discounted ?? false;
  bool hasDiscounted() => _discounted != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _salePrice = castToType<double>(snapshotData['salePrice']);
    _price = castToType<double>(snapshotData['price']);
    _ratings = castToType<double>(snapshotData['ratings']);
    _image = snapshotData['image'] as String?;
    _discounted = snapshotData['discounted'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('menu')
          : FirebaseFirestore.instance.collectionGroup('menu');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('menu').doc(id);

  static Stream<MenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuRecord.fromSnapshot(s));

  static Future<MenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuRecord.fromSnapshot(s));

  static MenuRecord fromSnapshot(DocumentSnapshot snapshot) => MenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuRecordData({
  String? name,
  double? salePrice,
  double? price,
  double? ratings,
  String? image,
  bool? discounted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'salePrice': salePrice,
      'price': price,
      'ratings': ratings,
      'image': image,
      'discounted': discounted,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuRecordDocumentEquality implements Equality<MenuRecord> {
  const MenuRecordDocumentEquality();

  @override
  bool equals(MenuRecord? e1, MenuRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.salePrice == e2?.salePrice &&
        e1?.price == e2?.price &&
        e1?.ratings == e2?.ratings &&
        e1?.image == e2?.image &&
        e1?.discounted == e2?.discounted;
  }

  @override
  int hash(MenuRecord? e) => const ListEquality().hash(
      [e?.name, e?.salePrice, e?.price, e?.ratings, e?.image, e?.discounted]);

  @override
  bool isValidKey(Object? o) => o is MenuRecord;
}
