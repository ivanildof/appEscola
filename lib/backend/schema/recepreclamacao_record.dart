import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecepreclamacaoRecord extends FirestoreRecord {
  RecepreclamacaoRecord._(
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

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "atribuida" field.
  String? _atribuida;
  String get atribuida => _atribuida ?? '';
  bool hasAtribuida() => _atribuida != null;

  // "nome_reclamante" field.
  String? _nomeReclamante;
  String get nomeReclamante => _nomeReclamante ?? '';
  bool hasNomeReclamante() => _nomeReclamante != null;

  // "contato" field.
  String? _contato;
  String get contato => _contato ?? '';
  bool hasContato() => _contato != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
    _tipo = snapshotData['tipo'] as String?;
    _atribuida = snapshotData['atribuida'] as String?;
    _nomeReclamante = snapshotData['nome_reclamante'] as String?;
    _contato = snapshotData['contato'] as String?;
    _nota = snapshotData['nota'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _documento = snapshotData['documento'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recepreclamacao')
          : FirebaseFirestore.instance.collectionGroup('recepreclamacao');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recepreclamacao').doc(id);

  static Stream<RecepreclamacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecepreclamacaoRecord.fromSnapshot(s));

  static Future<RecepreclamacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecepreclamacaoRecord.fromSnapshot(s));

  static RecepreclamacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecepreclamacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecepreclamacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecepreclamacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecepreclamacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecepreclamacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecepreclamacaoRecordData({
  String? filial,
  DocumentReference? filialref,
  String? tipo,
  String? atribuida,
  String? nomeReclamante,
  String? contato,
  String? nota,
  DateTime? data,
  String? documento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'filialref': filialref,
      'tipo': tipo,
      'atribuida': atribuida,
      'nome_reclamante': nomeReclamante,
      'contato': contato,
      'nota': nota,
      'data': data,
      'documento': documento,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecepreclamacaoRecordDocumentEquality
    implements Equality<RecepreclamacaoRecord> {
  const RecepreclamacaoRecordDocumentEquality();

  @override
  bool equals(RecepreclamacaoRecord? e1, RecepreclamacaoRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.tipo == e2?.tipo &&
        e1?.atribuida == e2?.atribuida &&
        e1?.nomeReclamante == e2?.nomeReclamante &&
        e1?.contato == e2?.contato &&
        e1?.nota == e2?.nota &&
        e1?.data == e2?.data &&
        e1?.documento == e2?.documento;
  }

  @override
  int hash(RecepreclamacaoRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.filialref,
        e?.tipo,
        e?.atribuida,
        e?.nomeReclamante,
        e?.contato,
        e?.nota,
        e?.data,
        e?.documento
      ]);

  @override
  bool isValidKey(Object? o) => o is RecepreclamacaoRecord;
}
