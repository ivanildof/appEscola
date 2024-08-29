// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaProdutosStruct extends FFFirebaseStruct {
  ListaProdutosStruct({
    String? produto,
    double? precoUnidade,
    int? quantidade,
    double? desconto,
    double? precoTotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _produto = produto,
        _precoUnidade = precoUnidade,
        _quantidade = quantidade,
        _desconto = desconto,
        _precoTotal = precoTotal,
        super(firestoreUtilData);

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  set produto(String? val) => _produto = val;

  bool hasProduto() => _produto != null;

  // "precoUnidade" field.
  double? _precoUnidade;
  double get precoUnidade => _precoUnidade ?? 0.0;
  set precoUnidade(double? val) => _precoUnidade = val;

  void incrementPrecoUnidade(double amount) =>
      precoUnidade = precoUnidade + amount;

  bool hasPrecoUnidade() => _precoUnidade != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  set desconto(double? val) => _desconto = val;

  void incrementDesconto(double amount) => desconto = desconto + amount;

  bool hasDesconto() => _desconto != null;

  // "PrecoTotal" field.
  double? _precoTotal;
  double get precoTotal => _precoTotal ?? 0.0;
  set precoTotal(double? val) => _precoTotal = val;

  void incrementPrecoTotal(double amount) => precoTotal = precoTotal + amount;

  bool hasPrecoTotal() => _precoTotal != null;

  static ListaProdutosStruct fromMap(Map<String, dynamic> data) =>
      ListaProdutosStruct(
        produto: data['produto'] as String?,
        precoUnidade: castToType<double>(data['precoUnidade']),
        quantidade: castToType<int>(data['quantidade']),
        desconto: castToType<double>(data['desconto']),
        precoTotal: castToType<double>(data['PrecoTotal']),
      );

  static ListaProdutosStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaProdutosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'produto': _produto,
        'precoUnidade': _precoUnidade,
        'quantidade': _quantidade,
        'desconto': _desconto,
        'PrecoTotal': _precoTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'produto': serializeParam(
          _produto,
          ParamType.String,
        ),
        'precoUnidade': serializeParam(
          _precoUnidade,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'desconto': serializeParam(
          _desconto,
          ParamType.double,
        ),
        'PrecoTotal': serializeParam(
          _precoTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static ListaProdutosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaProdutosStruct(
        produto: deserializeParam(
          data['produto'],
          ParamType.String,
          false,
        ),
        precoUnidade: deserializeParam(
          data['precoUnidade'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        desconto: deserializeParam(
          data['desconto'],
          ParamType.double,
          false,
        ),
        precoTotal: deserializeParam(
          data['PrecoTotal'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ListaProdutosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaProdutosStruct &&
        produto == other.produto &&
        precoUnidade == other.precoUnidade &&
        quantidade == other.quantidade &&
        desconto == other.desconto &&
        precoTotal == other.precoTotal;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([produto, precoUnidade, quantidade, desconto, precoTotal]);
}

ListaProdutosStruct createListaProdutosStruct({
  String? produto,
  double? precoUnidade,
  int? quantidade,
  double? desconto,
  double? precoTotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListaProdutosStruct(
      produto: produto,
      precoUnidade: precoUnidade,
      quantidade: quantidade,
      desconto: desconto,
      precoTotal: precoTotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListaProdutosStruct? updateListaProdutosStruct(
  ListaProdutosStruct? listaProdutos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listaProdutos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListaProdutosStructData(
  Map<String, dynamic> firestoreData,
  ListaProdutosStruct? listaProdutos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listaProdutos == null) {
    return;
  }
  if (listaProdutos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listaProdutos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listaProdutosData =
      getListaProdutosFirestoreData(listaProdutos, forFieldValue);
  final nestedData =
      listaProdutosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listaProdutos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListaProdutosFirestoreData(
  ListaProdutosStruct? listaProdutos, [
  bool forFieldValue = false,
]) {
  if (listaProdutos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listaProdutos.toMap());

  // Add any Firestore field values
  listaProdutos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListaProdutosListFirestoreData(
  List<ListaProdutosStruct>? listaProdutoss,
) =>
    listaProdutoss
        ?.map((e) => getListaProdutosFirestoreData(e, true))
        .toList() ??
    [];
