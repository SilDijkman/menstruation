import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonMenstrualDataRecord extends FirestoreRecord {
  PersonMenstrualDataRecord._(
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
      FirebaseFirestore.instance.collection('person_menstrual_data');

  static Stream<PersonMenstrualDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonMenstrualDataRecord.fromSnapshot(s));

  static Future<PersonMenstrualDataRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PersonMenstrualDataRecord.fromSnapshot(s));

  static PersonMenstrualDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonMenstrualDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonMenstrualDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonMenstrualDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonMenstrualDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonMenstrualDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonMenstrualDataRecordData({
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
