import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecepvistiasRecord extends FirestoreRecord {
  RecepvistiasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "objetivo_visita" field.
  String? _objetivoVisita;
  String get objetivoVisita => _objetivoVisita ?? '';
  bool hasObjetivoVisita() => _objetivoVisita != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "contato" field.
  String? _contato;
  String get contato => _contato ?? '';
  bool hasContato() => _contato != null;

  // "data_visita" field.
  DateTime? _dataVisita;
  DateTime? get dataVisita => _dataVisita;
  bool hasDataVisita() => _dataVisita != null;

  // "data_fim" field.
  DateTime? _dataFim;
  DateTime? get dataFim => _dataFim;
  bool hasDataFim() => _dataFim != null;

  // "numero_visitas" field.
  int? _numeroVisitas;
  int get numeroVisitas => _numeroVisitas ?? 0;
  bool hasNumeroVisitas() => _numeroVisitas != null;

  // "token_pass" field.
  String? _tokenPass;
  String get tokenPass => _tokenPass ?? '';
  bool hasTokenPass() => _tokenPass != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
    _objetivoVisita = snapshotData['objetivo_visita'] as String?;
    _nome = snapshotData['nome'] as String?;
    _contato = snapshotData['contato'] as String?;
    _dataVisita = snapshotData['data_visita'] as DateTime?;
    _dataFim = snapshotData['data_fim'] as DateTime?;
    _numeroVisitas = castToType<int>(snapshotData['numero_visitas']);
    _tokenPass = snapshotData['token_pass'] as String?;
    _nota = snapshotData['nota'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recepvistias')
          : FirebaseFirestore.instance.collectionGroup('recepvistias');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recepvistias').doc(id);

  static Stream<RecepvistiasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecepvistiasRecord.fromSnapshot(s));

  static Future<RecepvistiasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecepvistiasRecord.fromSnapshot(s));

  static RecepvistiasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecepvistiasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecepvistiasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecepvistiasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecepvistiasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecepvistiasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecepvistiasRecordData({
  String? filial,
  DocumentReference? filialref,
  String? objetivoVisita,
  String? nome,
  String? contato,
  DateTime? dataVisita,
  DateTime? dataFim,
  int? numeroVisitas,
  String? tokenPass,
  String? nota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'filialref': filialref,
      'objetivo_visita': objetivoVisita,
      'nome': nome,
      'contato': contato,
      'data_visita': dataVisita,
      'data_fim': dataFim,
      'numero_visitas': numeroVisitas,
      'token_pass': tokenPass,
      'nota': nota,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecepvistiasRecordDocumentEquality
    implements Equality<RecepvistiasRecord> {
  const RecepvistiasRecordDocumentEquality();

  @override
  bool equals(RecepvistiasRecord? e1, RecepvistiasRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.objetivoVisita == e2?.objetivoVisita &&
        e1?.nome == e2?.nome &&
        e1?.contato == e2?.contato &&
        e1?.dataVisita == e2?.dataVisita &&
        e1?.dataFim == e2?.dataFim &&
        e1?.numeroVisitas == e2?.numeroVisitas &&
        e1?.tokenPass == e2?.tokenPass &&
        e1?.nota == e2?.nota;
  }

  @override
  int hash(RecepvistiasRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.filialref,
        e?.objetivoVisita,
        e?.nome,
        e?.contato,
        e?.dataVisita,
        e?.dataFim,
        e?.numeroVisitas,
        e?.tokenPass,
        e?.nota
      ]);

  @override
  bool isValidKey(Object? o) => o is RecepvistiasRecord;
}
