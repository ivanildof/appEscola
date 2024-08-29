import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecepconfigVisitaRecord extends FirestoreRecord {
  RecepconfigVisitaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "filialref" field.
  DocumentReference? _filialref;
  DocumentReference? get filialref => _filialref;
  bool hasFilialref() => _filialref != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
    _nome = snapshotData['nome'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recepconfig_visita')
          : FirebaseFirestore.instance.collectionGroup('recepconfig_visita');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recepconfig_visita').doc(id);

  static Stream<RecepconfigVisitaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecepconfigVisitaRecord.fromSnapshot(s));

  static Future<RecepconfigVisitaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecepconfigVisitaRecord.fromSnapshot(s));

  static RecepconfigVisitaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecepconfigVisitaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecepconfigVisitaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecepconfigVisitaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecepconfigVisitaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecepconfigVisitaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecepconfigVisitaRecordData({
  String? filial,
  DocumentReference? filialref,
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'filialref': filialref,
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecepconfigVisitaRecordDocumentEquality
    implements Equality<RecepconfigVisitaRecord> {
  const RecepconfigVisitaRecordDocumentEquality();

  @override
  bool equals(RecepconfigVisitaRecord? e1, RecepconfigVisitaRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.nome == e2?.nome;
  }

  @override
  int hash(RecepconfigVisitaRecord? e) =>
      const ListEquality().hash([e?.filial, e?.filialref, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is RecepconfigVisitaRecord;
}
