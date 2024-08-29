import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClasseRecord extends FirestoreRecord {
  ClasseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeclasse" field.
  String? _nomeclasse;
  String get nomeclasse => _nomeclasse ?? '';
  bool hasNomeclasse() => _nomeclasse != null;

  // "numeroclasse" field.
  String? _numeroclasse;
  String get numeroclasse => _numeroclasse ?? '';
  bool hasNumeroclasse() => _numeroclasse != null;

  // "secao" field.
  String? _secao;
  String get secao => _secao ?? '';
  bool hasSecao() => _secao != null;

  // "capacidade" field.
  int? _capacidade;
  int get capacidade => _capacidade ?? 0;
  bool hasCapacidade() => _capacidade != null;

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
    _nomeclasse = snapshotData['nomeclasse'] as String?;
    _numeroclasse = snapshotData['numeroclasse'] as String?;
    _secao = snapshotData['secao'] as String?;
    _capacidade = castToType<int>(snapshotData['capacidade']);
    _filial = snapshotData['filial'] as String?;
    _filialref = snapshotData['filialref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('classe')
          : FirebaseFirestore.instance.collectionGroup('classe');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('classe').doc(id);

  static Stream<ClasseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClasseRecord.fromSnapshot(s));

  static Future<ClasseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClasseRecord.fromSnapshot(s));

  static ClasseRecord fromSnapshot(DocumentSnapshot snapshot) => ClasseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClasseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClasseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClasseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClasseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClasseRecordData({
  String? nomeclasse,
  String? numeroclasse,
  String? secao,
  int? capacidade,
  String? filial,
  DocumentReference? filialref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeclasse': nomeclasse,
      'numeroclasse': numeroclasse,
      'secao': secao,
      'capacidade': capacidade,
      'filial': filial,
      'filialref': filialref,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClasseRecordDocumentEquality implements Equality<ClasseRecord> {
  const ClasseRecordDocumentEquality();

  @override
  bool equals(ClasseRecord? e1, ClasseRecord? e2) {
    return e1?.nomeclasse == e2?.nomeclasse &&
        e1?.numeroclasse == e2?.numeroclasse &&
        e1?.secao == e2?.secao &&
        e1?.capacidade == e2?.capacidade &&
        e1?.filial == e2?.filial &&
        e1?.filialref == e2?.filialref;
  }

  @override
  int hash(ClasseRecord? e) => const ListEquality().hash([
        e?.nomeclasse,
        e?.numeroclasse,
        e?.secao,
        e?.capacidade,
        e?.filial,
        e?.filialref
      ]);

  @override
  bool isValidKey(Object? o) => o is ClasseRecord;
}
