import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActualDataRecord extends FirestoreRecord {
  ActualDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  // "BBT" field.
  double? _bbt;
  double get bbt => _bbt ?? 0.0;
  bool hasBbt() => _bbt != null;

  void _initializeFields() {
    _day = snapshotData['Day'] as int?;
    _bbt = castToType<double>(snapshotData['BBT']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('actual_data');

  static Stream<ActualDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActualDataRecord.fromSnapshot(s));

  static Future<ActualDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActualDataRecord.fromSnapshot(s));

  static ActualDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActualDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActualDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActualDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActualDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActualDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActualDataRecordData({
  int? day,
  double? bbt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Day': day,
      'BBT': bbt,
    }.withoutNulls,
  );

  return firestoreData;
}
