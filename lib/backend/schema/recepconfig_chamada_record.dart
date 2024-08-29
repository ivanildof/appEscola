import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecepconfigChamadaRecord extends FirestoreRecord {
  RecepconfigChamadaRecord._(
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
          ? parent.collection('recepconfig_chamada')
          : FirebaseFirestore.instance.collectionGroup('recepconfig_chamada');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recepconfig_chamada').doc(id);

  static Stream<RecepconfigChamadaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecepconfigChamadaRecord.fromSnapshot(s));

  static Future<RecepconfigChamadaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecepconfigChamadaRecord.fromSnapshot(s));

  static RecepconfigChamadaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecepconfigChamadaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecepconfigChamadaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecepconfigChamadaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecepconfigChamadaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecepconfigChamadaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecepconfigChamadaRecordData({
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

class RecepconfigChamadaRecordDocumentEquality
    implements Equality<RecepconfigChamadaRecord> {
  const RecepconfigChamadaRecordDocumentEquality();

  @override
  bool equals(RecepconfigChamadaRecord? e1, RecepconfigChamadaRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.nome == e2?.nome;
  }

  @override
  int hash(RecepconfigChamadaRecord? e) =>
      const ListEquality().hash([e?.filial, e?.filialref, e?.nome]);

  @override
  bool isValidKey(Object? o) => o is RecepconfigChamadaRecord;
}
