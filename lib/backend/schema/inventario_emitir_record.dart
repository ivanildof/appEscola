import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioEmitirRecord extends FirestoreRecord {
  InventarioEmitirRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "funcao" field.
  String? _funcao;
  String get funcao => _funcao ?? '';
  bool hasFuncao() => _funcao != null;

  // "vendaPara" field.
  String? _vendaPara;
  String get vendaPara => _vendaPara ?? '';
  bool hasVendaPara() => _vendaPara != null;

  // "dataEmissao" field.
  DateTime? _dataEmissao;
  DateTime? get dataEmissao => _dataEmissao;
  bool hasDataEmissao() => _dataEmissao != null;

  // "dataVencimento" field.
  DateTime? _dataVencimento;
  DateTime? get dataVencimento => _dataVencimento;
  bool hasDataVencimento() => _dataVencimento != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "dataRetorno" field.
  DateTime? _dataRetorno;
  DateTime? get dataRetorno => _dataRetorno;
  bool hasDataRetorno() => _dataRetorno != null;

  // "publicadoPor" field.
  String? _publicadoPor;
  String get publicadoPor => _publicadoPor ?? '';
  bool hasPublicadoPor() => _publicadoPor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _funcao = snapshotData['funcao'] as String?;
    _vendaPara = snapshotData['vendaPara'] as String?;
    _dataEmissao = snapshotData['dataEmissao'] as DateTime?;
    _dataVencimento = snapshotData['dataVencimento'] as DateTime?;
    _observacao = snapshotData['observacao'] as String?;
    _dataRetorno = snapshotData['dataRetorno'] as DateTime?;
    _publicadoPor = snapshotData['publicadoPor'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioEmitir')
          : FirebaseFirestore.instance.collectionGroup('inventarioEmitir');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioEmitir').doc(id);

  static Stream<InventarioEmitirRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioEmitirRecord.fromSnapshot(s));

  static Future<InventarioEmitirRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioEmitirRecord.fromSnapshot(s));

  static InventarioEmitirRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioEmitirRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioEmitirRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioEmitirRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioEmitirRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioEmitirRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioEmitirRecordData({
  String? filial,
  String? funcao,
  String? vendaPara,
  DateTime? dataEmissao,
  DateTime? dataVencimento,
  String? observacao,
  DateTime? dataRetorno,
  String? publicadoPor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'funcao': funcao,
      'vendaPara': vendaPara,
      'dataEmissao': dataEmissao,
      'dataVencimento': dataVencimento,
      'observacao': observacao,
      'dataRetorno': dataRetorno,
      'publicadoPor': publicadoPor,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioEmitirRecordDocumentEquality
    implements Equality<InventarioEmitirRecord> {
  const InventarioEmitirRecordDocumentEquality();

  @override
  bool equals(InventarioEmitirRecord? e1, InventarioEmitirRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.funcao == e2?.funcao &&
        e1?.vendaPara == e2?.vendaPara &&
        e1?.dataEmissao == e2?.dataEmissao &&
        e1?.dataVencimento == e2?.dataVencimento &&
        e1?.observacao == e2?.observacao &&
        e1?.dataRetorno == e2?.dataRetorno &&
        e1?.publicadoPor == e2?.publicadoPor;
  }

  @override
  int hash(InventarioEmitirRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.funcao,
        e?.vendaPara,
        e?.dataEmissao,
        e?.dataVencimento,
        e?.observacao,
        e?.dataRetorno,
        e?.publicadoPor
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioEmitirRecord;
}
