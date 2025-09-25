import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantsRecord extends FirestoreRecord {
  RestaurantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "restaurantName" field.
  String? _restaurantName;
  String get restaurantName => _restaurantName ?? '';
  bool hasRestaurantName() => _restaurantName != null;

  // "restaurantAddressBrgy" field.
  String? _restaurantAddressBrgy;
  String get restaurantAddressBrgy => _restaurantAddressBrgy ?? '';
  bool hasRestaurantAddressBrgy() => _restaurantAddressBrgy != null;

  // "restaurantAddressTown" field.
  String? _restaurantAddressTown;
  String get restaurantAddressTown => _restaurantAddressTown ?? '';
  bool hasRestaurantAddressTown() => _restaurantAddressTown != null;

  // "restaurantLogo" field.
  String? _restaurantLogo;
  String get restaurantLogo => _restaurantLogo ?? '';
  bool hasRestaurantLogo() => _restaurantLogo != null;

  // "isClosed" field.
  bool? _isClosed;
  bool get isClosed => _isClosed ?? false;
  bool hasIsClosed() => _isClosed != null;

  // "openingTime" field.
  String? _openingTime;
  String get openingTime => _openingTime ?? '';
  bool hasOpeningTime() => _openingTime != null;

  // "openingDay" field.
  String? _openingDay;
  String get openingDay => _openingDay ?? '';
  bool hasOpeningDay() => _openingDay != null;

  // "deliveryAvailable" field.
  bool? _deliveryAvailable;
  bool get deliveryAvailable => _deliveryAvailable ?? false;
  bool hasDeliveryAvailable() => _deliveryAvailable != null;

  // "dineInAvailable" field.
  bool? _dineInAvailable;
  bool get dineInAvailable => _dineInAvailable ?? false;
  bool hasDineInAvailable() => _dineInAvailable != null;

  // "pickUpAvailable" field.
  bool? _pickUpAvailable;
  bool get pickUpAvailable => _pickUpAvailable ?? false;
  bool hasPickUpAvailable() => _pickUpAvailable != null;

  // "bgImage" field.
  String? _bgImage;
  String get bgImage => _bgImage ?? '';
  bool hasBgImage() => _bgImage != null;

  // "ratingsCount" field.
  int? _ratingsCount;
  int get ratingsCount => _ratingsCount ?? 0;
  bool hasRatingsCount() => _ratingsCount != null;

  // "ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  bool hasRatings() => _ratings != null;

  // "restaurantId" field.
  String? _restaurantId;
  String get restaurantId => _restaurantId ?? '';
  bool hasRestaurantId() => _restaurantId != null;

  void _initializeFields() {
    _restaurantName = snapshotData['restaurantName'] as String?;
    _restaurantAddressBrgy = snapshotData['restaurantAddressBrgy'] as String?;
    _restaurantAddressTown = snapshotData['restaurantAddressTown'] as String?;
    _restaurantLogo = snapshotData['restaurantLogo'] as String?;
    _isClosed = snapshotData['isClosed'] as bool?;
    _openingTime = snapshotData['openingTime'] as String?;
    _openingDay = snapshotData['openingDay'] as String?;
    _deliveryAvailable = snapshotData['deliveryAvailable'] as bool?;
    _dineInAvailable = snapshotData['dineInAvailable'] as bool?;
    _pickUpAvailable = snapshotData['pickUpAvailable'] as bool?;
    _bgImage = snapshotData['bgImage'] as String?;
    _ratingsCount = castToType<int>(snapshotData['ratingsCount']);
    _ratings = castToType<double>(snapshotData['ratings']);
    _restaurantId = snapshotData['restaurantId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantsRecord.fromSnapshot(s));

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantsRecord.fromSnapshot(s));

  static RestaurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantsRecordData({
  String? restaurantName,
  String? restaurantAddressBrgy,
  String? restaurantAddressTown,
  String? restaurantLogo,
  bool? isClosed,
  String? openingTime,
  String? openingDay,
  bool? deliveryAvailable,
  bool? dineInAvailable,
  bool? pickUpAvailable,
  String? bgImage,
  int? ratingsCount,
  double? ratings,
  String? restaurantId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restaurantName': restaurantName,
      'restaurantAddressBrgy': restaurantAddressBrgy,
      'restaurantAddressTown': restaurantAddressTown,
      'restaurantLogo': restaurantLogo,
      'isClosed': isClosed,
      'openingTime': openingTime,
      'openingDay': openingDay,
      'deliveryAvailable': deliveryAvailable,
      'dineInAvailable': dineInAvailable,
      'pickUpAvailable': pickUpAvailable,
      'bgImage': bgImage,
      'ratingsCount': ratingsCount,
      'ratings': ratings,
      'restaurantId': restaurantId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantsRecordDocumentEquality implements Equality<RestaurantsRecord> {
  const RestaurantsRecordDocumentEquality();

  @override
  bool equals(RestaurantsRecord? e1, RestaurantsRecord? e2) {
    return e1?.restaurantName == e2?.restaurantName &&
        e1?.restaurantAddressBrgy == e2?.restaurantAddressBrgy &&
        e1?.restaurantAddressTown == e2?.restaurantAddressTown &&
        e1?.restaurantLogo == e2?.restaurantLogo &&
        e1?.isClosed == e2?.isClosed &&
        e1?.openingTime == e2?.openingTime &&
        e1?.openingDay == e2?.openingDay &&
        e1?.deliveryAvailable == e2?.deliveryAvailable &&
        e1?.dineInAvailable == e2?.dineInAvailable &&
        e1?.pickUpAvailable == e2?.pickUpAvailable &&
        e1?.bgImage == e2?.bgImage &&
        e1?.ratingsCount == e2?.ratingsCount &&
        e1?.ratings == e2?.ratings &&
        e1?.restaurantId == e2?.restaurantId;
  }

  @override
  int hash(RestaurantsRecord? e) => const ListEquality().hash([
        e?.restaurantName,
        e?.restaurantAddressBrgy,
        e?.restaurantAddressTown,
        e?.restaurantLogo,
        e?.isClosed,
        e?.openingTime,
        e?.openingDay,
        e?.deliveryAvailable,
        e?.dineInAvailable,
        e?.pickUpAvailable,
        e?.bgImage,
        e?.ratingsCount,
        e?.ratings,
        e?.restaurantId
      ]);

  @override
  bool isValidKey(Object? o) => o is RestaurantsRecord;
}
