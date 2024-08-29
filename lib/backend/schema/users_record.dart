import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "funcoes" field.
  List<String>? _funcoes;
  List<String> get funcoes => _funcoes ?? const [];
  bool hasFuncoes() => _funcoes != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  bool hasMatricula() => _matricula != null;

  // "codigoinep" field.
  String? _codigoinep;
  String get codigoinep => _codigoinep ?? '';
  bool hasCodigoinep() => _codigoinep != null;

  // "nis" field.
  String? _nis;
  String get nis => _nis ?? '';
  bool hasNis() => _nis != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "tiposangue" field.
  String? _tiposangue;
  String get tiposangue => _tiposangue ?? '';
  bool hasTiposangue() => _tiposangue != null;

  // "datanascimento" field.
  String? _datanascimento;
  String get datanascimento => _datanascimento ?? '';
  bool hasDatanascimento() => _datanascimento != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "bolsafamilia" field.
  String? _bolsafamilia;
  String get bolsafamilia => _bolsafamilia ?? '';
  bool hasBolsafamilia() => _bolsafamilia != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "municipio" field.
  String? _municipio;
  String get municipio => _municipio ?? '';
  bool hasMunicipio() => _municipio != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "zona" field.
  String? _zona;
  String get zona => _zona ?? '';
  bool hasZona() => _zona != null;

  // "nomeresponsavel" field.
  String? _nomeresponsavel;
  String get nomeresponsavel => _nomeresponsavel ?? '';
  bool hasNomeresponsavel() => _nomeresponsavel != null;

  // "relacaoresponsavel" field.
  String? _relacaoresponsavel;
  String get relacaoresponsavel => _relacaoresponsavel ?? '';
  bool hasRelacaoresponsavel() => _relacaoresponsavel != null;

  // "emailresponsavel" field.
  String? _emailresponsavel;
  String get emailresponsavel => _emailresponsavel ?? '';
  bool hasEmailresponsavel() => _emailresponsavel != null;

  // "ocupacaoresponsavel" field.
  String? _ocupacaoresponsavel;
  String get ocupacaoresponsavel => _ocupacaoresponsavel ?? '';
  bool hasOcupacaoresponsavel() => _ocupacaoresponsavel != null;

  // "rendaresponsavel" field.
  String? _rendaresponsavel;
  String get rendaresponsavel => _rendaresponsavel ?? '';
  bool hasRendaresponsavel() => _rendaresponsavel != null;

  // "cpfresponsavel" field.
  String? _cpfresponsavel;
  String get cpfresponsavel => _cpfresponsavel ?? '';
  bool hasCpfresponsavel() => _cpfresponsavel != null;

  // "nomepai" field.
  String? _nomepai;
  String get nomepai => _nomepai ?? '';
  bool hasNomepai() => _nomepai != null;

  // "cpfpai" field.
  String? _cpfpai;
  String get cpfpai => _cpfpai ?? '';
  bool hasCpfpai() => _cpfpai != null;

  // "nomemae" field.
  String? _nomemae;
  String get nomemae => _nomemae ?? '';
  bool hasNomemae() => _nomemae != null;

  // "cpfmae" field.
  String? _cpfmae;
  String get cpfmae => _cpfmae ?? '';
  bool hasCpfmae() => _cpfmae != null;

  // "fotoresponsavel" field.
  String? _fotoresponsavel;
  String get fotoresponsavel => _fotoresponsavel ?? '';
  bool hasFotoresponsavel() => _fotoresponsavel != null;

  // "deficiencia" field.
  String? _deficiencia;
  String get deficiencia => _deficiencia ?? '';
  bool hasDeficiencia() => _deficiencia != null;

  // "apoiopedagogico" field.
  String? _apoiopedagogico;
  String get apoiopedagogico => _apoiopedagogico ?? '';
  bool hasApoiopedagogico() => _apoiopedagogico != null;

  // "diagnostico" field.
  String? _diagnostico;
  String get diagnostico => _diagnostico ?? '';
  bool hasDiagnostico() => _diagnostico != null;

  // "tipoatendimento" field.
  String? _tipoatendimento;
  String get tipoatendimento => _tipoatendimento ?? '';
  bool hasTipoatendimento() => _tipoatendimento != null;

  // "cadeirante" field.
  String? _cadeirante;
  String get cadeirante => _cadeirante ?? '';
  bool hasCadeirante() => _cadeirante != null;

  // "possuibpc" field.
  String? _possuibpc;
  String get possuibpc => _possuibpc ?? '';
  bool hasPossuibpc() => _possuibpc != null;

  // "classe" field.
  String? _classe;
  String get classe => _classe ?? '';
  bool hasClasse() => _classe != null;

  // "secao" field.
  String? _secao;
  String get secao => _secao ?? '';
  bool hasSecao() => _secao != null;

  // "turno" field.
  String? _turno;
  String get turno => _turno ?? '';
  bool hasTurno() => _turno != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _funcoes = getDataList(snapshotData['funcoes']);
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _matricula = snapshotData['matricula'] as String?;
    _codigoinep = snapshotData['codigoinep'] as String?;
    _nis = snapshotData['nis'] as String?;
    _genero = snapshotData['genero'] as String?;
    _tiposangue = snapshotData['tiposangue'] as String?;
    _datanascimento = snapshotData['datanascimento'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _bolsafamilia = snapshotData['bolsafamilia'] as String?;
    _cep = snapshotData['cep'] as String?;
    _uf = snapshotData['uf'] as String?;
    _municipio = snapshotData['municipio'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _numero = castToType<int>(snapshotData['numero']);
    _complemento = snapshotData['complemento'] as String?;
    _rua = snapshotData['rua'] as String?;
    _zona = snapshotData['zona'] as String?;
    _nomeresponsavel = snapshotData['nomeresponsavel'] as String?;
    _relacaoresponsavel = snapshotData['relacaoresponsavel'] as String?;
    _emailresponsavel = snapshotData['emailresponsavel'] as String?;
    _ocupacaoresponsavel = snapshotData['ocupacaoresponsavel'] as String?;
    _rendaresponsavel = snapshotData['rendaresponsavel'] as String?;
    _cpfresponsavel = snapshotData['cpfresponsavel'] as String?;
    _nomepai = snapshotData['nomepai'] as String?;
    _cpfpai = snapshotData['cpfpai'] as String?;
    _nomemae = snapshotData['nomemae'] as String?;
    _cpfmae = snapshotData['cpfmae'] as String?;
    _fotoresponsavel = snapshotData['fotoresponsavel'] as String?;
    _deficiencia = snapshotData['deficiencia'] as String?;
    _apoiopedagogico = snapshotData['apoiopedagogico'] as String?;
    _diagnostico = snapshotData['diagnostico'] as String?;
    _tipoatendimento = snapshotData['tipoatendimento'] as String?;
    _cadeirante = snapshotData['cadeirante'] as String?;
    _possuibpc = snapshotData['possuibpc'] as String?;
    _classe = snapshotData['classe'] as String?;
    _secao = snapshotData['secao'] as String?;
    _turno = snapshotData['turno'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? displayName,
  String? phoneNumber,
  String? matricula,
  String? codigoinep,
  String? nis,
  String? genero,
  String? tiposangue,
  String? datanascimento,
  int? idade,
  String? bolsafamilia,
  String? cep,
  String? uf,
  String? municipio,
  String? bairro,
  int? numero,
  String? complemento,
  String? rua,
  String? zona,
  String? nomeresponsavel,
  String? relacaoresponsavel,
  String? emailresponsavel,
  String? ocupacaoresponsavel,
  String? rendaresponsavel,
  String? cpfresponsavel,
  String? nomepai,
  String? cpfpai,
  String? nomemae,
  String? cpfmae,
  String? fotoresponsavel,
  String? deficiencia,
  String? apoiopedagogico,
  String? diagnostico,
  String? tipoatendimento,
  String? cadeirante,
  String? possuibpc,
  String? classe,
  String? secao,
  String? turno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'matricula': matricula,
      'codigoinep': codigoinep,
      'nis': nis,
      'genero': genero,
      'tiposangue': tiposangue,
      'datanascimento': datanascimento,
      'idade': idade,
      'bolsafamilia': bolsafamilia,
      'cep': cep,
      'uf': uf,
      'municipio': municipio,
      'bairro': bairro,
      'numero': numero,
      'complemento': complemento,
      'rua': rua,
      'zona': zona,
      'nomeresponsavel': nomeresponsavel,
      'relacaoresponsavel': relacaoresponsavel,
      'emailresponsavel': emailresponsavel,
      'ocupacaoresponsavel': ocupacaoresponsavel,
      'rendaresponsavel': rendaresponsavel,
      'cpfresponsavel': cpfresponsavel,
      'nomepai': nomepai,
      'cpfpai': cpfpai,
      'nomemae': nomemae,
      'cpfmae': cpfmae,
      'fotoresponsavel': fotoresponsavel,
      'deficiencia': deficiencia,
      'apoiopedagogico': apoiopedagogico,
      'diagnostico': diagnostico,
      'tipoatendimento': tipoatendimento,
      'cadeirante': cadeirante,
      'possuibpc': possuibpc,
      'classe': classe,
      'secao': secao,
      'turno': turno,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.funcoes, e2?.funcoes) &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.matricula == e2?.matricula &&
        e1?.codigoinep == e2?.codigoinep &&
        e1?.nis == e2?.nis &&
        e1?.genero == e2?.genero &&
        e1?.tiposangue == e2?.tiposangue &&
        e1?.datanascimento == e2?.datanascimento &&
        e1?.idade == e2?.idade &&
        e1?.bolsafamilia == e2?.bolsafamilia &&
        e1?.cep == e2?.cep &&
        e1?.uf == e2?.uf &&
        e1?.municipio == e2?.municipio &&
        e1?.bairro == e2?.bairro &&
        e1?.numero == e2?.numero &&
        e1?.complemento == e2?.complemento &&
        e1?.rua == e2?.rua &&
        e1?.zona == e2?.zona &&
        e1?.nomeresponsavel == e2?.nomeresponsavel &&
        e1?.relacaoresponsavel == e2?.relacaoresponsavel &&
        e1?.emailresponsavel == e2?.emailresponsavel &&
        e1?.ocupacaoresponsavel == e2?.ocupacaoresponsavel &&
        e1?.rendaresponsavel == e2?.rendaresponsavel &&
        e1?.cpfresponsavel == e2?.cpfresponsavel &&
        e1?.nomepai == e2?.nomepai &&
        e1?.cpfpai == e2?.cpfpai &&
        e1?.nomemae == e2?.nomemae &&
        e1?.cpfmae == e2?.cpfmae &&
        e1?.fotoresponsavel == e2?.fotoresponsavel &&
        e1?.deficiencia == e2?.deficiencia &&
        e1?.apoiopedagogico == e2?.apoiopedagogico &&
        e1?.diagnostico == e2?.diagnostico &&
        e1?.tipoatendimento == e2?.tipoatendimento &&
        e1?.cadeirante == e2?.cadeirante &&
        e1?.possuibpc == e2?.possuibpc &&
        e1?.classe == e2?.classe &&
        e1?.secao == e2?.secao &&
        e1?.turno == e2?.turno;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.funcoes,
        e?.displayName,
        e?.phoneNumber,
        e?.matricula,
        e?.codigoinep,
        e?.nis,
        e?.genero,
        e?.tiposangue,
        e?.datanascimento,
        e?.idade,
        e?.bolsafamilia,
        e?.cep,
        e?.uf,
        e?.municipio,
        e?.bairro,
        e?.numero,
        e?.complemento,
        e?.rua,
        e?.zona,
        e?.nomeresponsavel,
        e?.relacaoresponsavel,
        e?.emailresponsavel,
        e?.ocupacaoresponsavel,
        e?.rendaresponsavel,
        e?.cpfresponsavel,
        e?.nomepai,
        e?.cpfpai,
        e?.nomemae,
        e?.cpfmae,
        e?.fotoresponsavel,
        e?.deficiencia,
        e?.apoiopedagogico,
        e?.diagnostico,
        e?.tipoatendimento,
        e?.cadeirante,
        e?.possuibpc,
        e?.classe,
        e?.secao,
        e?.turno
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
