import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SymptomsOptionsRecord extends FirestoreRecord {
  SymptomsOptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cramps" field.
  String? _cramps;
  String get cramps => _cramps ?? '';
  bool hasCramps() => _cramps != null;

  // "bleeding" field.
  String? _bleeding;
  String get bleeding => _bleeding ?? '';
  bool hasBleeding() => _bleeding != null;

  void _initializeFields() {
    _cramps = snapshotData['cramps'] as String?;
    _bleeding = snapshotData['bleeding'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symptoms_options');

  static Stream<SymptomsOptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SymptomsOptionsRecord.fromSnapshot(s));

  static Future<SymptomsOptionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SymptomsOptionsRecord.fromSnapshot(s));

  static SymptomsOptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SymptomsOptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SymptomsOptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SymptomsOptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SymptomsOptionsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSymptomsOptionsRecordData({
  String? cramps,
  String? bleeding,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cramps': cramps,
      'bleeding': bleeding,
    }.withoutNulls,
  );

  return firestoreData;
}
