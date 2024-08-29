import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GerenCartaoAddRecord extends FirestoreRecord {
  GerenCartaoAddRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "identidade_nome" field.
  String? _identidadeNome;
  String get identidadeNome => _identidadeNome ?? '';
  bool hasIdentidadeNome() => _identidadeNome != null;

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
    _identidadeNome = snapshotData['identidade_nome'] as String?;
    _usuario = snapshotData['usuario'] as String?;
    _pgaltura = castToType<int>(snapshotData['pgaltura']);
    _pglargura = castToType<int>(snapshotData['pglargura']);
    _fotouser = snapshotData['fotouser'] as String?;
    _tamanhoFoto = castToType<int>(snapshotData['tamanho_foto']);
    _logoimg = snapshotData['logoimg'] as String?;
    _fundoimg = snapshotData['fundoimg'] as String?;
    _conteudoCertifica = snapshotData['conteudo_certifica'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('geren_cartao_add')
          : FirebaseFirestore.instance.collectionGroup('geren_cartao_add');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('geren_cartao_add').doc(id);

  static Stream<GerenCartaoAddRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GerenCartaoAddRecord.fromSnapshot(s));

  static Future<GerenCartaoAddRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GerenCartaoAddRecord.fromSnapshot(s));

  static GerenCartaoAddRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GerenCartaoAddRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GerenCartaoAddRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GerenCartaoAddRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GerenCartaoAddRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GerenCartaoAddRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGerenCartaoAddRecordData({
  String? filial,
  DocumentReference? filialref,
  String? identidadeNome,
  String? usuario,
  int? pgaltura,
  int? pglargura,
  String? fotouser,
  int? tamanhoFoto,
  String? logoimg,
  String? fundoimg,
  String? conteudoCertifica,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filial': filial,
      'filialref': filialref,
      'identidade_nome': identidadeNome,
      'usuario': usuario,
      'pgaltura': pgaltura,
      'pglargura': pglargura,
      'fotouser': fotouser,
      'tamanho_foto': tamanhoFoto,
      'logoimg': logoimg,
      'fundoimg': fundoimg,
      'conteudo_certifica': conteudoCertifica,
    }.withoutNulls,
  );

  return firestoreData;
}

class GerenCartaoAddRecordDocumentEquality
    implements Equality<GerenCartaoAddRecord> {
  const GerenCartaoAddRecordDocumentEquality();

  @override
  bool equals(GerenCartaoAddRecord? e1, GerenCartaoAddRecord? e2) {
    return e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref &&
        e1?.identidadeNome == e2?.identidadeNome &&
        e1?.usuario == e2?.usuario &&
        e1?.pgaltura == e2?.pgaltura &&
        e1?.pglargura == e2?.pglargura &&
        e1?.fotouser == e2?.fotouser &&
        e1?.tamanhoFoto == e2?.tamanhoFoto &&
        e1?.logoimg == e2?.logoimg &&
        e1?.fundoimg == e2?.fundoimg &&
        e1?.conteudoCertifica == e2?.conteudoCertifica;
  }

  @override
  int hash(GerenCartaoAddRecord? e) => const ListEquality().hash([
        e?.filial,
        e?.filialref,
        e?.identidadeNome,
        e?.usuario,
        e?.pgaltura,
        e?.pglargura,
        e?.fotouser,
        e?.tamanhoFoto,
        e?.logoimg,
        e?.fundoimg,
        e?.conteudoCertifica
      ]);

  @override
  bool isValidKey(Object? o) => o is GerenCartaoAddRecord;
}
