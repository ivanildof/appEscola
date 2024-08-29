import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GerenCartaoAdmissRecord extends FirestoreRecord {
  GerenCartaoAdmissRecord._(
    super.reference,
    super.data,
  ) {
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

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "pgaltura" field.
  int? _pgaltura;
  int get pgaltura => _pgaltura ?? 0;
  bool hasPgaltura() => _pgaltura != null;

  // "pglargura" field.
  int? _pglargura;
  int get pglargura => _pglargura ?? 0;
  bool hasPglargura() => _pglargura != null;

  // "fotouser" field.
  String? _fotouser;
  String get fotouser => _fotouser ?? '';
  bool hasFotouser() => _fotouser != null;

  // "tamanho_foto" field.
  int? _tamanhoFoto;
  int get tamanhoFoto => _tamanhoFoto ?? 0;
  bool hasTamanhoFoto() => _tamanhoFoto != null;

  // "logoimg" field.
  String? _logoimg;
  String get logoimg => _logoimg ?? '';
  bool hasLogoimg() => _logoimg != null;

  // "fundoimg" field.
  String? _fundoimg;
  String get fundoimg => _fundoimg ?? '';
  bool hasFundoimg() => _fundoimg != null;

  // "conteudo_certifica" field.
  String? _conteudoCertifica;
  String get conteudoCertifica => _conteudoCertifica ?? '';
  bool hasConteudoCertifica() => _conteudoCertifica != null;

  // "nome_admissao" field.
  String? _nomeAdmissao;
  String get nomeAdmissao => _nomeAdmissao ?? '';
  bool hasNomeAdmissao() => _nomeAdmissao != null;

  // "assinaturaimg" field.
  String? _assinaturaimg;
  String get assinaturaimg => _assinaturaimg ?? '';
  bool hasAssinaturaimg() => _assinaturaimg != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
    _usuario = snapshotData['usuario'] as String?;
    _pgaltura = castToType<int>(snapshotData['pgaltura']);
    _pglargura = castToType<int>(snapshotData['pglargura']);
    _fotouser = snapshotData['fotouser'] as String?;
    _tamanhoFoto = castToType<int>(snapshotData['tamanho_foto']);
    _logoimg = snapshotData['logoimg'] as String?;
    _fundoimg = snapshotData['fundoimg'] as String?;
    _conteudoCertifica = snapshotData['conteudo_certifica'] as String?;
    _nomeAdmissao = snapshotData['nome_admissao'] as String?;
    _assinaturaimg = snapshotData['assinaturaimg'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('geren_cartao_admiss')
          : FirebaseFirestore.instance.collectionGroup('geren_cartao_admiss');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('geren_cartao_admiss').doc(id);

  static Stream<GerenCartaoAdmissRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GerenCartaoAdmissRecord.fromSnapshot(s));

  static Future<GerenCartaoAdmissRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GerenCartaoAdmissRecord.fromSnapshot(s));

  static GerenCartaoAdmissRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GerenCartaoAdmissRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GerenCartaoAdmissRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GerenCartaoAdmissRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GerenCartaoAdmissRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GerenCartaoAdmissRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGerenCartaoAdmissRecordData({
  String? filial,
  DocumentReference? filialref,
  String? usuario,
  int? pgaltura,
  int? pglargura,
  String? fotouser,
  int? tamanhoFoto,
  String? logoimg,
  String? fundoimg,
  String? conteudoCertifica,
  String? nomeAdmissao,
  String? assinaturaimg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'filialref': filialref,
      'usuario': usuario,
      'pgaltura': pgaltura,
      'pglargura': pglargura,
      'fotouser': fotouser,
      'tamanho_foto': tamanhoFoto,
      'logoimg': logoimg,
      'fundoimg': fundoimg,
      'conteudo_certifica': conteudoCertifica,
      'nome_admissao': nomeAdmissao,
      'assinaturaimg': assinaturaimg,
    }.withoutNulls,
  );

  return firestoreData;
}

class GerenCartaoAdmissRecordDocumentEquality
    implements Equality<GerenCartaoAdmissRecord> {
  const GerenCartaoAdmissRecordDocumentEquality();

  @override
  bool equals(GerenCartaoAdmissRecord? e1, GerenCartaoAdmissRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.usuario == e2?.usuario &&
        e1?.pgaltura == e2?.pgaltura &&
        e1?.pglargura == e2?.pglargura &&
        e1?.fotouser == e2?.fotouser &&
        e1?.tamanhoFoto == e2?.tamanhoFoto &&
        e1?.logoimg == e2?.logoimg &&
        e1?.fundoimg == e2?.fundoimg &&
        e1?.conteudoCertifica == e2?.conteudoCertifica &&
        e1?.nomeAdmissao == e2?.nomeAdmissao &&
        e1?.assinaturaimg == e2?.assinaturaimg;
  }

  @override
  int hash(GerenCartaoAdmissRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.filialref,
        e?.usuario,
        e?.pgaltura,
        e?.pglargura,
        e?.fotouser,
        e?.tamanhoFoto,
        e?.logoimg,
        e?.fundoimg,
        e?.conteudoCertifica,
        e?.nomeAdmissao,
        e?.assinaturaimg
      ]);

  @override
  bool isValidKey(Object? o) => o is GerenCartaoAdmissRecord;
}
