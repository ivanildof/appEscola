import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioVendasRecord extends FirestoreRecord {
  InventarioVendasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "fatura" field.
  String? _fatura;
  String get fatura => _fatura ?? '';
  bool hasFatura() => _fatura != null;

  // "dataVenda" field.
  DateTime? _dataVenda;
  DateTime? get dataVenda => _dataVenda;
  bool hasDataVenda() => _dataVenda != null;

  // "pagamentoEstado" field.
  String? _pagamentoEstado;
  String get pagamentoEstado => _pagamentoEstado ?? '';
  bool hasPagamentoEstado() => _pagamentoEstado != null;

  // "aPagar" field.
  double? _aPagar;
  double get aPagar => _aPagar ?? 0.0;
  bool hasAPagar() => _aPagar != null;

  // "pago" field.
  double? _pago;
  double get pago => _pago ?? 0.0;
  bool hasPago() => _pago != null;

  // "devido" field.
  double? _devido;
  double get devido => _devido ?? 0.0;
  bool hasDevido() => _devido != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _funcao = snapshotData['funcao'] as String?;
    _vendaPara = snapshotData['vendaPara'] as String?;
    _fatura = snapshotData['fatura'] as String?;
    _dataVenda = snapshotData['dataVenda'] as DateTime?;
    _pagamentoEstado = snapshotData['pagamentoEstado'] as String?;
    _aPagar = castToType<double>(snapshotData['aPagar']);
    _pago = castToType<double>(snapshotData['pago']);
    _devido = castToType<double>(snapshotData['devido']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioVendas')
          : FirebaseFirestore.instance.collectionGroup('inventarioVendas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioVendas').doc(id);

  static Stream<InventarioVendasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioVendasRecord.fromSnapshot(s));

  static Future<InventarioVendasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioVendasRecord.fromSnapshot(s));

  static InventarioVendasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioVendasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioVendasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioVendasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioVendasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioVendasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioVendasRecordData({
  String? filial,
  String? funcao,
  String? vendaPara,
  String? fatura,
  DateTime? dataVenda,
  String? pagamentoEstado,
  double? aPagar,
  double? pago,
  double? devido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'funcao': funcao,
      'vendaPara': vendaPara,
      'fatura': fatura,
      'dataVenda': dataVenda,
      'pagamentoEstado': pagamentoEstado,
      'aPagar': aPagar,
      'pago': pago,
      'devido': devido,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioVendasRecordDocumentEquality
    implements Equality<InventarioVendasRecord> {
  const InventarioVendasRecordDocumentEquality();

  @override
  bool equals(InventarioVendasRecord? e1, InventarioVendasRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.funcao == e2?.funcao &&
        e1?.vendaPara == e2?.vendaPara &&
        e1?.fatura == e2?.fatura &&
        e1?.dataVenda == e2?.dataVenda &&
        e1?.pagamentoEstado == e2?.pagamentoEstado &&
        e1?.aPagar == e2?.aPagar &&
        e1?.pago == e2?.pago &&
        e1?.devido == e2?.devido;
  }

  @override
  int hash(InventarioVendasRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.funcao,
        e?.vendaPara,
        e?.fatura,
        e?.dataVenda,
        e?.pagamentoEstado,
        e?.aPagar,
        e?.pago,
        e?.devido
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioVendasRecord;
}
