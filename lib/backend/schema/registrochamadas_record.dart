import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrochamadasRecord extends FirestoreRecord {
  RegistrochamadasRecord._(
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

  // "tipochamada" field.
  String? _tipochamada;
  String get tipochamada => _tipochamada ?? '';
  bool hasTipochamada() => _tipochamada != null;

  // "propositochamada" field.
  String? _propositochamada;
  String get propositochamada => _propositochamada ?? '';
  bool hasPropositochamada() => _propositochamada != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "contato" field.
  String? _contato;
  String get contato => _contato ?? '';
  bool hasContato() => _contato != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "proxima_data" field.
  String? _proximaData;
  String get proximaData => _proximaData ?? '';
  bool hasProximaData() => _proximaData != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
    _tipochamada = snapshotData['tipochamada'] as String?;
    _propositochamada = snapshotData['propositochamada'] as String?;
    _nome = snapshotData['nome'] as String?;
    _contato = snapshotData['contato'] as String?;
    _data = snapshotData['data'] as String?;
    _proximaData = snapshotData['proxima_data'] as String?;
    _nota = snapshotData['nota'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('registrochamadas')
          : FirebaseFirestore.instance.collectionGroup('registrochamadas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('registrochamadas').doc(id);

  static Stream<RegistrochamadasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrochamadasRecord.fromSnapshot(s));

  static Future<RegistrochamadasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistrochamadasRecord.fromSnapshot(s));

  static RegistrochamadasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrochamadasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrochamadasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrochamadasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrochamadasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrochamadasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrochamadasRecordData({
  String? filial,
  DocumentReference? filialref,
  String? tipochamada,
  String? propositochamada,
  String? nome,
  String? contato,
  String? data,
  String? proximaData,
  String? nota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'filialref': filialref,
      'tipochamada': tipochamada,
      'propositochamada': propositochamada,
      'nome': nome,
      'contato': contato,
      'data': data,
      'proxima_data': proximaData,
      'nota': nota,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrochamadasRecordDocumentEquality
    implements Equality<RegistrochamadasRecord> {
  const RegistrochamadasRecordDocumentEquality();

  @override
  bool equals(RegistrochamadasRecord? e1, RegistrochamadasRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.tipochamada == e2?.tipochamada &&
        e1?.propositochamada == e2?.propositochamada &&
        e1?.nome == e2?.nome &&
        e1?.contato == e2?.contato &&
        e1?.data == e2?.data &&
        e1?.proximaData == e2?.proximaData &&
        e1?.nota == e2?.nota;
  }

  @override
  int hash(RegistrochamadasRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.filialref,
        e?.tipochamada,
        e?.propositochamada,
        e?.nome,
        e?.contato,
        e?.data,
        e?.proximaData,
        e?.nota
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistrochamadasRecord;
}
