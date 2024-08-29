import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioComprasRecord extends FirestoreRecord {
  InventarioComprasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "fornecedor" field.
  String? _fornecedor;
  String get fornecedor => _fornecedor ?? '';
  bool hasFornecedor() => _fornecedor != null;

  // "loja" field.
  String? _loja;
  String get loja => _loja ?? '';
  bool hasLoja() => _loja != null;

  // "fatura" field.
  String? _fatura;
  String get fatura => _fatura ?? '';
  bool hasFatura() => _fatura != null;

  // "dataCompra" field.
  DateTime? _dataCompra;
  DateTime? get dataCompra => _dataCompra;
  bool hasDataCompra() => _dataCompra != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "filialRef" field.
  DocumentReference? _filialRef;
  DocumentReference? get filialRef => _filialRef;
  bool hasFilialRef() => _filialRef != null;

  // "statusPagamento" field.
  String? _statusPagamento;
  String get statusPagamento => _statusPagamento ?? '';
  bool hasStatusPagamento() => _statusPagamento != null;

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

  // "compraEstado" field.
  String? _compraEstado;
  String get compraEstado => _compraEstado ?? '';
  bool hasCompraEstado() => _compraEstado != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _fornecedor = snapshotData['fornecedor'] as String?;
    _loja = snapshotData['loja'] as String?;
    _fatura = snapshotData['fatura'] as String?;
    _dataCompra = snapshotData['dataCompra'] as DateTime?;
    _observacao = snapshotData['observacao'] as String?;
    _filialRef = snapshotData['filialRef'] as DocumentReference?;
    _statusPagamento = snapshotData['statusPagamento'] as String?;
    _aPagar = castToType<double>(snapshotData['aPagar']);
    _pago = castToType<double>(snapshotData['pago']);
    _devido = castToType<double>(snapshotData['devido']);
    _compraEstado = snapshotData['compraEstado'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioCompras')
          : FirebaseFirestore.instance.collectionGroup('inventarioCompras');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioCompras').doc(id);

  static Stream<InventarioComprasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioComprasRecord.fromSnapshot(s));

  static Future<InventarioComprasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioComprasRecord.fromSnapshot(s));

  static InventarioComprasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioComprasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioComprasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioComprasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioComprasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioComprasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioComprasRecordData({
  String? filial,
  String? fornecedor,
  String? loja,
  String? fatura,
  DateTime? dataCompra,
  String? observacao,
  DocumentReference? filialRef,
  String? statusPagamento,
  double? aPagar,
  double? pago,
  double? devido,
  String? compraEstado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'fornecedor': fornecedor,
      'loja': loja,
      'fatura': fatura,
      'dataCompra': dataCompra,
      'observacao': observacao,
      'filialRef': filialRef,
      'statusPagamento': statusPagamento,
      'aPagar': aPagar,
      'pago': pago,
      'devido': devido,
      'compraEstado': compraEstado,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioComprasRecordDocumentEquality
    implements Equality<InventarioComprasRecord> {
  const InventarioComprasRecordDocumentEquality();

  @override
  bool equals(InventarioComprasRecord? e1, InventarioComprasRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.fornecedor == e2?.fornecedor &&
        e1?.loja == e2?.loja &&
        e1?.fatura == e2?.fatura &&
        e1?.dataCompra == e2?.dataCompra &&
        e1?.observacao == e2?.observacao &&
        e1?.filialRef == e2?.filialRef &&
        e1?.statusPagamento == e2?.statusPagamento &&
        e1?.aPagar == e2?.aPagar &&
        e1?.pago == e2?.pago &&
        e1?.devido == e2?.devido &&
        e1?.compraEstado == e2?.compraEstado;
  }

  @override
  int hash(InventarioComprasRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.fornecedor,
        e?.loja,
        e?.fatura,
        e?.dataCompra,
        e?.observacao,
        e?.filialRef,
        e?.statusPagamento,
        e?.aPagar,
        e?.pago,
        e?.devido,
        e?.compraEstado
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioComprasRecord;
}
