import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecepadmissaoRecord extends FirestoreRecord {
  RecepadmissaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "aniversario" field.
  String? _aniversario;
  String get aniversario => _aniversario ?? '';
  bool hasAniversario() => _aniversario != null;

  // "escolaanterior" field.
  String? _escolaanterior;
  String get escolaanterior => _escolaanterior ?? '';
  bool hasEscolaanterior() => _escolaanterior != null;

  // "nomepai" field.
  String? _nomepai;
  String get nomepai => _nomepai ?? '';
  bool hasNomepai() => _nomepai != null;

  // "nomemae" field.
  String? _nomemae;
  String get nomemae => _nomemae ?? '';
  bool hasNomemae() => _nomemae != null;

  // "numerotelefone" field.
  String? _numerotelefone;
  String get numerotelefone => _numerotelefone ?? '';
  bool hasNumerotelefone() => _numerotelefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "numercriancas" field.
  int? _numercriancas;
  int get numercriancas => _numercriancas ?? 0;
  bool hasNumercriancas() => _numercriancas != null;

  // "encontro" field.
  DateTime? _encontro;
  DateTime? get encontro => _encontro;
  bool hasEncontro() => _encontro != null;

  // "filial" field.
  String? _filial;
  String get filial => _filial ?? '';
  bool hasFilial() => _filial != null;

  // "filialref" field.
  DocumentReference? _filialref;
  DocumentReference? get filialref => _filialref;
  bool hasFilialref() => _filialref != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _genero = snapshotData['genero'] as String?;
    _aniversario = snapshotData['aniversario'] as String?;
    _escolaanterior = snapshotData['escolaanterior'] as String?;
    _nomepai = snapshotData['nomepai'] as String?;
    _nomemae = snapshotData['nomemae'] as String?;
    _numerotelefone = snapshotData['numerotelefone'] as String?;
    _email = snapshotData['email'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _numercriancas = castToType<int>(snapshotData['numercriancas']);
    _encontro = snapshotData['encontro'] as DateTime?;
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recepadmissao')
          : FirebaseFirestore.instance.collectionGroup('recepadmissao');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recepadmissao').doc(id);

  static Stream<RecepadmissaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecepadmissaoRecord.fromSnapshot(s));

  static Future<RecepadmissaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecepadmissaoRecord.fromSnapshot(s));

  static RecepadmissaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecepadmissaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecepadmissaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecepadmissaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecepadmissaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecepadmissaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecepadmissaoRecordData({
  String? nome,
  String? genero,
  String? aniversario,
  String? escolaanterior,
  String? nomepai,
  String? nomemae,
  String? numerotelefone,
  String? email,
  String? endereco,
  int? numercriancas,
  DateTime? encontro,
  String? filial,
  DocumentReference? filialref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'genero': genero,
      'aniversario': aniversario,
      'escolaanterior': escolaanterior,
      'nomepai': nomepai,
      'nomemae': nomemae,
      'numerotelefone': numerotelefone,
      'email': email,
      'endereco': endereco,
      'numercriancas': numercriancas,
      'encontro': encontro,
      'filial': filial,
      'filialref': filialref,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecepadmissaoRecordDocumentEquality
    implements Equality<RecepadmissaoRecord> {
  const RecepadmissaoRecordDocumentEquality();

  @override
  bool equals(RecepadmissaoRecord? e1, RecepadmissaoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.genero == e2?.genero &&
        e1?.aniversario == e2?.aniversario &&
        e1?.escolaanterior == e2?.escolaanterior &&
        e1?.nomepai == e2?.nomepai &&
        e1?.nomemae == e2?.nomemae &&
        e1?.numerotelefone == e2?.numerotelefone &&
        e1?.email == e2?.email &&
        e1?.endereco == e2?.endereco &&
        e1?.numercriancas == e2?.numercriancas &&
        e1?.encontro == e2?.encontro &&
        e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref;
  }

  @override
  int hash(RecepadmissaoRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.genero,
        e?.aniversario,
        e?.escolaanterior,
        e?.nomepai,
        e?.nomemae,
        e?.numerotelefone,
        e?.email,
        e?.endereco,
        e?.numercriancas,
        e?.encontro,
        e?.filial,
        e?.filialref
      ]);

  @override
  bool isValidKey(Object? o) => o is RecepadmissaoRecord;
}
