import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationValueRecord extends FirestoreRecord {
  NotificationValueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "notification_value" field.
  int? _notificationValue;
  int get notificationValue => _notificationValue ?? 0;
  bool hasNotificationValue() => _notificationValue != null;

  void _initializeFields() {
    _notificationValue = snapshotData['notification_value'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification_value');

  static Stream<NotificationValueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationValueRecord.fromSnapshot(s));

  static Future<NotificationValueRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationValueRecord.fromSnapshot(s));

  static NotificationValueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationValueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationValueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationValueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationValueRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createNotificationValueRecordData({
  int? notificationValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notification_value': notificationValue,
    }.withoutNulls,
  );

  return firestoreData;
}
