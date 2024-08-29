import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaturaRecord extends FirestoreRecord {
  FaturaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "comprasRef" field.
  DocumentReference? _comprasRef;
  DocumentReference? get comprasRef => _comprasRef;
  bool hasComprasRef() => _comprasRef != null;

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "precoUnidade" field.
  double? _precoUnidade;
  double get precoUnidade => _precoUnidade ?? 0.0;
  bool hasPrecoUnidade() => _precoUnidade != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  bool hasDesconto() => _desconto != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _comprasRef = snapshotData['comprasRef'] as DocumentReference?;
    _produto = snapshotData['produto'] as String?;
    _precoUnidade = castToType<double>(snapshotData['precoUnidade']);
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _desconto = castToType<double>(snapshotData['desconto']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('fatura')
          : FirebaseFirestore.instance.collectionGroup('fatura');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('fatura').doc(id);

  static Stream<FaturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaturaRecord.fromSnapshot(s));

  static Future<FaturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaturaRecord.fromSnapshot(s));

  static FaturaRecord fromSnapshot(DocumentSnapshot snapshot) => FaturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaturaRecordData({
  DocumentReference? comprasRef,
  String? produto,
  double? precoUnidade,
  int? quantidade,
  double? desconto,
  double? subTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comprasRef': comprasRef,
      'produto': produto,
      'precoUnidade': precoUnidade,
      'quantidade': quantidade,
      'desconto': desconto,
      'subTotal': subTotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaturaRecordDocumentEquality implements Equality<FaturaRecord> {
  const FaturaRecordDocumentEquality();

  @override
  bool equals(FaturaRecord? e1, FaturaRecord? e2) {
    return e1?.comprasRef == e2?.comprasRef &&
        e1?.produto == e2?.produto &&
        e1?.precoUnidade == e2?.precoUnidade &&
        e1?.quantidade == e2?.quantidade &&
        e1?.desconto == e2?.desconto &&
        e1?.subTotal == e2?.subTotal;
  }

  @override
  int hash(FaturaRecord? e) => const ListEquality().hash([
        e?.comprasRef,
        e?.produto,
        e?.precoUnidade,
        e?.quantidade,
        e?.desconto,
        e?.subTotal
      ]);

  @override
  bool isValidKey(Object? o) => o is FaturaRecord;
}
