import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioFornecedoresRecord extends FirestoreRecord {
  InventarioFornecedoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "nomeFornecedor" field.
  String? _nomeFornecedor;
  String get nomeFornecedor => _nomeFornecedor ?? '';
  bool hasNomeFornecedor() => _nomeFornecedor != null;

  // "numeroContato" field.
  String? _numeroContato;
  String get numeroContato => _numeroContato ?? '';
  bool hasNumeroContato() => _numeroContato != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nomeEmpresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "listaProdutos" field.
  String? _listaProdutos;
  String get listaProdutos => _listaProdutos ?? '';
  bool hasListaProdutos() => _listaProdutos != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "filialRef" field.
  DocumentReference? _filialRef;
  DocumentReference? get filialRef => _filialRef;
  bool hasFilialRef() => _filialRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _nomeFornecedor = snapshotData['nomeFornecedor'] as String?;
    _numeroContato = snapshotData['numeroContato'] as String?;
    _email = snapshotData['email'] as String?;
    _nomeEmpresa = snapshotData['nomeEmpresa'] as String?;
    _listaProdutos = snapshotData['listaProdutos'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _filialRef = snapshotData['filialRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioFornecedores')
          : FirebaseFirestore.instance
              .collectionGroup('inventarioFornecedores');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioFornecedores').doc(id);

  static Stream<InventarioFornecedoresRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioFornecedoresRecord.fromSnapshot(s));

  static Future<InventarioFornecedoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InventarioFornecedoresRecord.fromSnapshot(s));

  static InventarioFornecedoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioFornecedoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioFornecedoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioFornecedoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioFornecedoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioFornecedoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioFornecedoresRecordData({
  String? filial,
  String? nomeFornecedor,
  String? numeroContato,
  String? email,
  String? nomeEmpresa,
  String? listaProdutos,
  String? endereco,
  DocumentReference? filialRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'nomeFornecedor': nomeFornecedor,
      'numeroContato': numeroContato,
      'email': email,
      'nomeEmpresa': nomeEmpresa,
      'listaProdutos': listaProdutos,
      'endereco': endereco,
      'filialRef': filialRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioFornecedoresRecordDocumentEquality
    implements Equality<InventarioFornecedoresRecord> {
  const InventarioFornecedoresRecordDocumentEquality();

  @override
  bool equals(
      InventarioFornecedoresRecord? e1, InventarioFornecedoresRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.nomeFornecedor == e2?.nomeFornecedor &&
        e1?.numeroContato == e2?.numeroContato &&
        e1?.email == e2?.email &&
        e1?.nomeEmpresa == e2?.nomeEmpresa &&
        e1?.listaProdutos == e2?.listaProdutos &&
        e1?.endereco == e2?.endereco &&
        e1?.filialRef == e2?.filialRef;
  }

  @override
  int hash(InventarioFornecedoresRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.nomeFornecedor,
        e?.numeroContato,
        e?.email,
        e?.nomeEmpresa,
        e?.listaProdutos,
        e?.endereco,
        e?.filialRef
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioFornecedoresRecord;
}
