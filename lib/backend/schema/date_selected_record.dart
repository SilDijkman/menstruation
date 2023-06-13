import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateSelectedRecord extends FirestoreRecord {
  DateSelectedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date_selected" field.
  DateTime? _dateSelected;
  DateTime? get dateSelected => _dateSelected;
  bool hasDateSelected() => _dateSelected != null;

  void _initializeFields() {
    _dateSelected = snapshotData['date_selected'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_selected');

  static Stream<DateSelectedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DateSelectedRecord.fromSnapshot(s));

  static Future<DateSelectedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DateSelectedRecord.fromSnapshot(s));

  static DateSelectedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DateSelectedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DateSelectedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DateSelectedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DateSelectedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DateSelectedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDateSelectedRecordData({
  DateTime? dateSelected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_selected': dateSelected,
    }.withoutNulls,
  );

  return firestoreData;
}
