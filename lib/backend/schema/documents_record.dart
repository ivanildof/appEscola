import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsRecord extends FirestoreRecord {
  DocumentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tipodocument" field.
  String? _tipodocument;
  String get tipodocument => _tipodocument ?? '';
  bool hasTipodocument() => _tipodocument != null;

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  bool hasMatricula() => _matricula != null;

  // "termo" field.
  String? _termo;
  String get termo => _termo ?? '';
  bool hasTermo() => _termo != null;

  // "folha" field.
  String? _folha;
  String get folha => _folha ?? '';
  bool hasFolha() => _folha != null;

  // "livro" field.
  String? _livro;
  String get livro => _livro ?? '';
  bool hasLivro() => _livro != null;

  // "dataemissao" field.
  String? _dataemissao;
  String get dataemissao => _dataemissao ?? '';
  bool hasDataemissao() => _dataemissao != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "municipio" field.
  String? _municipio;
  String get municipio => _municipio ?? '';
  bool hasMunicipio() => _municipio != null;

  // "cartorio" field.
  String? _cartorio;
  String get cartorio => _cartorio ?? '';
  bool hasCartorio() => _cartorio != null;

  // "document" field.
  List<String>? _document;
  List<String> get document => _document ?? const [];
  bool hasDocument() => _document != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "categoriacnh" field.
  String? _categoriacnh;
  String get categoriacnh => _categoriacnh ?? '';
  bool hasCategoriacnh() => _categoriacnh != null;

  // "passaport" field.
  String? _passaport;
  String get passaport => _passaport ?? '';
  bool hasPassaport() => _passaport != null;

  // "aluno" field.
  DocumentReference? _aluno;
  DocumentReference? get aluno => _aluno;
  bool hasAluno() => _aluno != null;

  // "orgaoemissor" field.
  String? _orgaoemissor;
  String get orgaoemissor => _orgaoemissor ?? '';
  bool hasOrgaoemissor() => _orgaoemissor != null;

  // "cartaosus" field.
  String? _cartaosus;
  String get cartaosus => _cartaosus ?? '';
  bool hasCartaosus() => _cartaosus != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tipodocument = snapshotData['tipodocument'] as String?;
    _matricula = snapshotData['matricula'] as String?;
    _termo = snapshotData['termo'] as String?;
    _folha = snapshotData['folha'] as String?;
    _livro = snapshotData['livro'] as String?;
    _dataemissao = snapshotData['dataemissao'] as String?;
    _uf = snapshotData['uf'] as String?;
    _municipio = snapshotData['municipio'] as String?;
    _cartorio = snapshotData['cartorio'] as String?;
    _document = getDataList(snapshotData['document']);
    _numero = snapshotData['numero'] as String?;
    _categoriacnh = snapshotData['categoriacnh'] as String?;
    _passaport = snapshotData['passaport'] as String?;
    _aluno = snapshotData['aluno'] as DocumentReference?;
    _orgaoemissor = snapshotData['orgaoemissor'] as String?;
    _cartaosus = snapshotData['cartaosus'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('documents')
          : FirebaseFirestore.instance.collectionGroup('documents');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('documents').doc(id);

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentsRecord.fromSnapshot(s));

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentsRecord.fromSnapshot(s));

  static DocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentsRecordData({
  String? tipodocument,
  String? matricula,
  String? termo,
  String? folha,
  String? livro,
  String? dataemissao,
  String? uf,
  String? municipio,
  String? cartorio,
  String? numero,
  String? categoriacnh,
  String? passaport,
  DocumentReference? aluno,
  String? orgaoemissor,
  String? cartaosus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipodocument': tipodocument,
      'matricula': matricula,
      'termo': termo,
      'folha': folha,
      'livro': livro,
      'dataemissao': dataemissao,
      'uf': uf,
      'municipio': municipio,
      'cartorio': cartorio,
      'numero': numero,
      'categoriacnh': categoriacnh,
      'passaport': passaport,
      'aluno': aluno,
      'orgaoemissor': orgaoemissor,
      'cartaosus': cartaosus,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentsRecordDocumentEquality implements Equality<DocumentsRecord> {
  const DocumentsRecordDocumentEquality();

  @override
  bool equals(DocumentsRecord? e1, DocumentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tipodocument == e2?.tipodocument &&
        e1?.matricula == e2?.matricula &&
        e1?.termo == e2?.termo &&
        e1?.folha == e2?.folha &&
        e1?.livro == e2?.livro &&
        e1?.dataemissao == e2?.dataemissao &&
        e1?.uf == e2?.uf &&
        e1?.municipio == e2?.municipio &&
        e1?.cartorio == e2?.cartorio &&
        listEquality.equals(e1?.document, e2?.document) &&
        e1?.numero == e2?.numero &&
        e1?.categoriacnh == e2?.categoriacnh &&
        e1?.passaport == e2?.passaport &&
        e1?.aluno == e2?.aluno &&
        e1?.orgaoemissor == e2?.orgaoemissor &&
        e1?.cartaosus == e2?.cartaosus;
  }

  @override
  int hash(DocumentsRecord? e) => const ListEquality().hash([
        e?.tipodocument,
        e?.matricula,
        e?.termo,
        e?.folha,
        e?.livro,
        e?.dataemissao,
        e?.uf,
        e?.municipio,
        e?.cartorio,
        e?.document,
        e?.numero,
        e?.categoriacnh,
        e?.passaport,
        e?.aluno,
        e?.orgaoemissor,
        e?.cartaosus
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentsRecord;
}
