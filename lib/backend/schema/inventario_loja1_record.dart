import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioLoja1Record extends FirestoreRecord {
  InventarioLoja1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "nomeLoja" field.
  String? _nomeLoja;
  String get nomeLoja => _nomeLoja ?? '';
  bool hasNomeLoja() => _nomeLoja != null;

  // "codigoLoja" field.
  String? _codigoLoja;
  String get codigoLoja => _codigoLoja ?? '';
  bool hasCodigoLoja() => _codigoLoja != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "createData" field.
  DateTime? _createData;
  DateTime? get createData => _createData;
  bool hasCreateData() => _createData != null;

  // "filialRef" field.
  DocumentReference? _filialRef;
  DocumentReference? get filialRef => _filialRef;
  bool hasFilialRef() => _filialRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _nomeLoja = snapshotData['nomeLoja'] as String?;
    _codigoLoja = snapshotData['codigoLoja'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _createData = snapshotData['createData'] as DateTime?;
    _filialRef = snapshotData['filialRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('inventarioLoja1')
          : FirebaseFirestore.instance.collectionGroup('inventarioLoja1');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('inventarioLoja1').doc(id);

  static Stream<InventarioLoja1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioLoja1Record.fromSnapshot(s));

  static Future<InventarioLoja1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventarioLoja1Record.fromSnapshot(s));

  static InventarioLoja1Record fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioLoja1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioLoja1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioLoja1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioLoja1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioLoja1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioLoja1RecordData({
  String? filial,
  String? nomeLoja,
  String? codigoLoja,
  String? telefone,
  String? endereco,
  String? descricao,
  DateTime? createData,
  DocumentReference? filialRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'nomeLoja': nomeLoja,
      'codigoLoja': codigoLoja,
      'telefone': telefone,
      'endereco': endereco,
      'descricao': descricao,
      'createData': createData,
      'filialRef': filialRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioLoja1RecordDocumentEquality
    implements Equality<InventarioLoja1Record> {
  const InventarioLoja1RecordDocumentEquality();

  @override
  bool equals(InventarioLoja1Record? e1, InventarioLoja1Record? e2) {
    return e1?.filial == e2?.filial &&
        e1?.nomeLoja == e2?.nomeLoja &&
        e1?.codigoLoja == e2?.codigoLoja &&
        e1?.telefone == e2?.telefone &&
        e1?.endereco == e2?.endereco &&
        e1?.descricao == e2?.descricao &&
        e1?.createData == e2?.createData &&
        e1?.filialRef == e2?.filialRef;
  }

  @override
  int hash(InventarioLoja1Record? e) => const ListEquality().hash([
        e?.filial,
        e?.nomeLoja,
        e?.codigoLoja,
        e?.telefone,
        e?.endereco,
        e?.descricao,
        e?.createData,
        e?.filialRef
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioLoja1Record;
}
