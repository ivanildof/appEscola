import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioCategoriaRecord extends FirestoreRecord {
  InventarioCategoriaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeCategoria" field.
  String? _nomeCategoria;
  String get nomeCategoria => _nomeCategoria ?? '';
  bool hasNomeCategoria() => _nomeCategoria != null;

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  // "filialRef" field.
  DocumentReference? _filialRef;
  DocumentReference? get filialRef => _filialRef;
  bool hasFilialRef() => _filialRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeCategoria = snapshotData['nomeCategoria'] as String?;
    _filial = snapshotData['filial'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
    _filialRef = snapshotData['filialRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioCategoria')
          : FirebaseFirestore.instance.collectionGroup('inventarioCategoria');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioCategoria').doc(id);

  static Stream<InventarioCategoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioCategoriaRecord.fromSnapshot(s));

  static Future<InventarioCategoriaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioCategoriaRecord.fromSnapshot(s));

  static InventarioCategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioCategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioCategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioCategoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioCategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioCategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioCategoriaRecordData({
  String? nomeCategoria,
  String? filial,
  DateTime? creatData,
  DocumentReference? filialRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeCategoria': nomeCategoria,
      'filial': filial,
      'creatData': creatData,
      'filialRef': filialRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioCategoriaRecordDocumentEquality
    implements Equality<InventarioCategoriaRecord> {
  const InventarioCategoriaRecordDocumentEquality();

  @override
  bool equals(InventarioCategoriaRecord? e1, InventarioCategoriaRecord? e2) {
    return e1?.nomeCategoria == e2?.nomeCategoria &&
        e1?.filial == e2?.filial &&
        e1?.creatData == e2?.creatData &&
        e1?.filialRef == e2?.filialRef;
  }

  @override
  int hash(InventarioCategoriaRecord? e) => const ListEquality()
      .hash([e?.nomeCategoria, e?.filial, e?.creatData, e?.filialRef]);

  @override
  bool isValidKey(Object? o) => o is InventarioCategoriaRecord;
}
