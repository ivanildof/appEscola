import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilialRecord extends FirestoreRecord {
  FilialRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeFilial" field.
  String? _nomeFilial;
  String get nomeFilial => _nomeFilial ?? '';
  bool hasNomeFilial() => _nomeFilial != null;

  // "nomeEscola" field.
  String? _nomeEscola;
  String get nomeEscola => _nomeEscola ?? '';
  bool hasNomeEscola() => _nomeEscola != null;

  // "oEmail" field.
  String? _oEmail;
  String get oEmail => _oEmail ?? '';
  bool hasOEmail() => _oEmail != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "moeda" field.
  String? _moeda;
  String get moeda => _moeda ?? '';
  bool hasMoeda() => _moeda != null;

  // "simboloMonetario" field.
  String? _simboloMonetario;
  String get simboloMonetario => _simboloMonetario ?? '';
  bool hasSimboloMonetario() => _simboloMonetario != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "creatData" field.
  DateTime? _creatData;
  DateTime? get creatData => _creatData;
  bool hasCreatData() => _creatData != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _nomeFilial = snapshotData['nomeFilial'] as String?;
    _nomeEscola = snapshotData['nomeEscola'] as String?;
    _oEmail = snapshotData['oEmail'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _moeda = snapshotData['moeda'] as String?;
    _simboloMonetario = snapshotData['simboloMonetario'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _estado = snapshotData['estado'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _logo = snapshotData['logo'] as String?;
    _creatData = snapshotData['creatData'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('filial');

  static Stream<FilialRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilialRecord.fromSnapshot(s));

  static Future<FilialRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilialRecord.fromSnapshot(s));

  static FilialRecord fromSnapshot(DocumentSnapshot snapshot) => FilialRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilialRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilialRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilialRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilialRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilialRecordData({
  String? nomeFilial,
  String? nomeEscola,
  String? oEmail,
  String? telefone,
  String? moeda,
  String? simboloMonetario,
  String? cidade,
  String? estado,
  String? endereco,
  String? cep,
  String? logo,
  DateTime? creatData,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeFilial': nomeFilial,
      'nomeEscola': nomeEscola,
      'oEmail': oEmail,
      'telefone': telefone,
      'moeda': moeda,
      'simboloMonetario': simboloMonetario,
      'cidade': cidade,
      'estado': estado,
      'endereco': endereco,
      'CEP': cep,
      'logo': logo,
      'creatData': creatData,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilialRecordDocumentEquality implements Equality<FilialRecord> {
  const FilialRecordDocumentEquality();

  @override
  bool equals(FilialRecord? e1, FilialRecord? e2) {
    return e1?.nomeFilial == e2?.nomeFilial &&
        e1?.nomeEscola == e2?.nomeEscola &&
        e1?.oEmail == e2?.oEmail &&
        e1?.telefone == e2?.telefone &&
        e1?.moeda == e2?.moeda &&
        e1?.simboloMonetario == e2?.simboloMonetario &&
        e1?.cidade == e2?.cidade &&
        e1?.estado == e2?.estado &&
        e1?.endereco == e2?.endereco &&
        e1?.cep == e2?.cep &&
        e1?.logo == e2?.logo &&
        e1?.creatData == e2?.creatData &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(FilialRecord? e) => const ListEquality().hash([
        e?.nomeFilial,
        e?.nomeEscola,
        e?.oEmail,
        e?.telefone,
        e?.moeda,
        e?.simboloMonetario,
        e?.cidade,
        e?.estado,
        e?.endereco,
        e?.cep,
        e?.logo,
        e?.creatData,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is FilialRecord;
}
