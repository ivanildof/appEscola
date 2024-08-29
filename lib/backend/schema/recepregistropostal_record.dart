import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecepregistropostalRecord extends FirestoreRecord {
  RecepregistropostalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "numereferencia" field.
  String? _numereferencia;
  String get numereferencia => _numereferencia ?? '';
  bool hasNumereferencia() => _numereferencia != null;

  // "remetente" field.
  String? _remetente;
  String get remetente => _remetente ?? '';
  bool hasRemetente() => _remetente != null;

  // "recebedor" field.
  String? _recebedor;
  String get recebedor => _recebedor ?? '';
  bool hasRecebedor() => _recebedor != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  bool hasNota() => _nota != null;

  // "encontro" field.
  DateTime? _encontro;
  DateTime? get encontro => _encontro;
  bool hasEncontro() => _encontro != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  // "filialref" field.
  DocumentReference? _filialref;
  DocumentReference? get filialref => _filialref;
  bool hasFilialref() => _filialref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _numereferencia = snapshotData['numereferencia'] as String?;
    _remetente = snapshotData['remetente'] as String?;
    _recebedor = snapshotData['recebedor'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _nota = snapshotData['nota'] as String?;
    _encontro = snapshotData['encontro'] as DateTime?;
    _documento = snapshotData['documento'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recepregistropostal')
          : FirebaseFirestore.instance.collectionGroup('recepregistropostal');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recepregistropostal').doc(id);

  static Stream<RecepregistropostalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecepregistropostalRecord.fromSnapshot(s));

  static Future<RecepregistropostalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecepregistropostalRecord.fromSnapshot(s));

  static RecepregistropostalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecepregistropostalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecepregistropostalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecepregistropostalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecepregistropostalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecepregistropostalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecepregistropostalRecordData({
  String? filial,
  String? tipo,
  String? numereferencia,
  String? remetente,
  String? recebedor,
  String? endereco,
  String? nota,
  DateTime? encontro,
  String? documento,
  DocumentReference? filialref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'tipo': tipo,
      'numereferencia': numereferencia,
      'remetente': remetente,
      'recebedor': recebedor,
      'endereco': endereco,
      'nota': nota,
      'encontro': encontro,
      'documento': documento,
      'filialref': filialref,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecepregistropostalRecordDocumentEquality
    implements Equality<RecepregistropostalRecord> {
  const RecepregistropostalRecordDocumentEquality();

  @override
  bool equals(RecepregistropostalRecord? e1, RecepregistropostalRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.tipo == e2?.tipo &&
        e1?.numereferencia == e2?.numereferencia &&
        e1?.remetente == e2?.remetente &&
        e1?.recebedor == e2?.recebedor &&
        e1?.endereco == e2?.endereco &&
        e1?.nota == e2?.nota &&
        e1?.encontro == e2?.encontro &&
        e1?.documento == e2?.documento &&
        e1?.filialref == e2?.filialref;
  }

  @override
  int hash(RecepregistropostalRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.tipo,
        e?.numereferencia,
        e?.remetente,
        e?.recebedor,
        e?.endereco,
        e?.nota,
        e?.encontro,
        e?.documento,
        e?.filialref
      ]);

  @override
  bool isValidKey(Object? o) => o is RecepregistropostalRecord;
}
