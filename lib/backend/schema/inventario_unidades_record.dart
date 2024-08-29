import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioUnidadesRecord extends FirestoreRecord {
  InventarioUnidadesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "nomeUnidade" field.
  String? _nomeUnidade;
  String get nomeUnidade => _nomeUnidade ?? '';
  bool hasNomeUnidade() => _nomeUnidade != null;

  // "createData" field.
  DateTime? _createData;
  DateTime? get createData => _createData;
  bool hasCreateData() => _createData != null;

  // "filialRef" field.
  DocumentReference? _filialRef;
  DocumentReference? get filialRef => _filialRef;
  bool hasFilialRef() => _filialRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _nomeUnidade = snapshotData['nomeUnidade'] as String?;
    _createData = snapshotData['createData'] as DateTime?;
    _filialRef = snapshotData['filialRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioUnidades')
          : FirebaseFirestore.instance.collectionGroup('inventarioUnidades');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioUnidades').doc(id);

  static Stream<InventarioUnidadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioUnidadesRecord.fromSnapshot(s));

  static Future<InventarioUnidadesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioUnidadesRecord.fromSnapshot(s));

  static InventarioUnidadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioUnidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioUnidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioUnidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioUnidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioUnidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioUnidadesRecordData({
  String? filial,
  String? nomeUnidade,
  DateTime? createData,
  DocumentReference? filialRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'nomeUnidade': nomeUnidade,
      'createData': createData,
      'filialRef': filialRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioUnidadesRecordDocumentEquality
    implements Equality<InventarioUnidadesRecord> {
  const InventarioUnidadesRecordDocumentEquality();

  @override
  bool equals(InventarioUnidadesRecord? e1, InventarioUnidadesRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.nomeUnidade == e2?.nomeUnidade &&
        e1?.createData == e2?.createData &&
        e1?.filialRef == e2?.filialRef;
  }

  @override
  int hash(InventarioUnidadesRecord? e) => const ListEquality()
      .hash([e?.filial, e?.nomeUnidade, e?.createData, e?.filialRef]);

  @override
  bool isValidKey(Object? o) => o is InventarioUnidadesRecord;
}
