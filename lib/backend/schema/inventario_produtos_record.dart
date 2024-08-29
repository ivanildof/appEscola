import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioProdutosRecord extends FirestoreRecord {
  InventarioProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "nomeProduto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  bool hasNomeProduto() => _nomeProduto != null;

  // "produtoCodigo" field.
  String? _produtoCodigo;
  String get produtoCodigo => _produtoCodigo ?? '';
  bool hasProdutoCodigo() => _produtoCodigo != null;

  // "produtoCategoria" field.
  String? _produtoCategoria;
  String get produtoCategoria => _produtoCategoria ?? '';
  bool hasProdutoCategoria() => _produtoCategoria != null;

  // "unidadeCompra" field.
  String? _unidadeCompra;
  String get unidadeCompra => _unidadeCompra ?? '';
  bool hasUnidadeCompra() => _unidadeCompra != null;

  // "unidadeVenda" field.
  String? _unidadeVenda;
  String get unidadeVenda => _unidadeVenda ?? '';
  bool hasUnidadeVenda() => _unidadeVenda != null;

  // "razaoUnitaria" field.
  String? _razaoUnitaria;
  String get razaoUnitaria => _razaoUnitaria ?? '';
  bool hasRazaoUnitaria() => _razaoUnitaria != null;

  // "precoCompra" field.
  double? _precoCompra;
  double get precoCompra => _precoCompra ?? 0.0;
  bool hasPrecoCompra() => _precoCompra != null;

  // "precoVenda" field.
  double? _precoVenda;
  double get precoVenda => _precoVenda ?? 0.0;
  bool hasPrecoVenda() => _precoVenda != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  // "categoriaRef" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef;
  bool hasCategoriaRef() => _categoriaRef != null;

  // "produtoID" field.
  String? _produtoID;
  String get produtoID => _produtoID ?? '';
  bool hasProdutoID() => _produtoID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _nomeProduto = snapshotData['nomeProduto'] as String?;
    _produtoCodigo = snapshotData['produtoCodigo'] as String?;
    _produtoCategoria = snapshotData['produtoCategoria'] as String?;
    _unidadeCompra = snapshotData['unidadeCompra'] as String?;
    _unidadeVenda = snapshotData['unidadeVenda'] as String?;
    _razaoUnitaria = snapshotData['razaoUnitaria'] as String?;
    _precoCompra = castToType<double>(snapshotData['precoCompra']);
    _precoVenda = castToType<double>(snapshotData['precoVenda']);
    _observacao = snapshotData['observacao'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
    _categoriaRef = snapshotData['categoriaRef'] as DocumentReference?;
    _produtoID = snapshotData['produtoID'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioProdutos')
          : FirebaseFirestore.instance.collectionGroup('inventarioProdutos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioProdutos').doc(id);

  static Stream<InventarioProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioProdutosRecord.fromSnapshot(s));

  static Future<InventarioProdutosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioProdutosRecord.fromSnapshot(s));

  static InventarioProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioProdutosRecordData({
  String? filial,
  String? nomeProduto,
  String? produtoCodigo,
  String? produtoCategoria,
  String? unidadeCompra,
  String? unidadeVenda,
  String? razaoUnitaria,
  double? precoCompra,
  double? precoVenda,
  String? observacao,
  DateTime? creatData,
  DocumentReference? categoriaRef,
  String? produtoID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'nomeProduto': nomeProduto,
      'produtoCodigo': produtoCodigo,
      'produtoCategoria': produtoCategoria,
      'unidadeCompra': unidadeCompra,
      'unidadeVenda': unidadeVenda,
      'razaoUnitaria': razaoUnitaria,
      'precoCompra': precoCompra,
      'precoVenda': precoVenda,
      'observacao': observacao,
      'creatData': creatData,
      'categoriaRef': categoriaRef,
      'produtoID': produtoID,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioProdutosRecordDocumentEquality
    implements Equality<InventarioProdutosRecord> {
  const InventarioProdutosRecordDocumentEquality();

  @override
  bool equals(InventarioProdutosRecord? e1, InventarioProdutosRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.nomeProduto == e2?.nomeProduto &&
        e1?.produtoCodigo == e2?.produtoCodigo &&
        e1?.produtoCategoria == e2?.produtoCategoria &&
        e1?.unidadeCompra == e2?.unidadeCompra &&
        e1?.unidadeVenda == e2?.unidadeVenda &&
        e1?.razaoUnitaria == e2?.razaoUnitaria &&
        e1?.precoCompra == e2?.precoCompra &&
        e1?.precoVenda == e2?.precoVenda &&
        e1?.observacao == e2?.observacao &&
        e1?.creatData == e2?.creatData &&
        e1?.categoriaRef == e2?.categoriaRef &&
        e1?.produtoID == e2?.produtoID;
  }

  @override
  int hash(InventarioProdutosRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.nomeProduto,
        e?.produtoCodigo,
        e?.produtoCategoria,
        e?.unidadeCompra,
        e?.unidadeVenda,
        e?.razaoUnitaria,
        e?.precoCompra,
        e?.precoVenda,
        e?.observacao,
        e?.creatData,
        e?.categoriaRef,
        e?.produtoID
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioProdutosRecord;
}
