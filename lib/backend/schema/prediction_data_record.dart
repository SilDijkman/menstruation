import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionDataRecord extends FirestoreRecord {
  PredictionDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "OvulationDate" field.
  DateTime? _ovulationDate;
  DateTime? get ovulationDate => _ovulationDate;
  bool hasOvulationDate() => _ovulationDate != null;

  void _initializeFields() {
    _ovulationDate = snapshotData['OvulationDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prediction_data');

  static Stream<PredictionDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PredictionDataRecord.fromSnapshot(s));

  static Future<PredictionDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PredictionDataRecord.fromSnapshot(s));

  static PredictionDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PredictionDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PredictionDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PredictionDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PredictionDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PredictionDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPredictionDataRecordData({
  DateTime? ovulationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OvulationDate': ovulationDate,
    }.withoutNulls,
  );

  return firestoreData;
}
