import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/folder_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'a02inventario_widget.dart' show A02inventarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A02inventarioModel extends FlutterFlowModel<A02inventarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey6 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<InventarioProdutosRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue;
  FormFieldController<String>? filialValueController;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode;
  TextEditingController? nomeProdutoTextController;
  String? Function(BuildContext, String?)? nomeProdutoTextControllerValidator;
  String? _nomeProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for produtoscategori widget.
  String? produtoscategoriValue;
  FormFieldController<String>? produtoscategoriValueController;
  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode;
  TextEditingController? codigoProdutoTextController;
  String? Function(BuildContext, String?)? codigoProdutoTextControllerValidator;
  String? _codigoProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for unidadeCompra widget.
  String? unidadeCompraValue;
  FormFieldController<String>? unidadeCompraValueController;
  // State field(s) for unidadeVenda widget.
  String? unidadeVendaValue;
  FormFieldController<String>? unidadeVendaValueController;
  // State field(s) for razaoUnitaria widget.
  FocusNode? razaoUnitariaFocusNode;
  TextEditingController? razaoUnitariaTextController;
  String? Function(BuildContext, String?)? razaoUnitariaTextControllerValidator;
  String? _razaoUnitariaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for precoCompra widget.
  FocusNode? precoCompraFocusNode;
  TextEditingController? precoCompraTextController;
  String? Function(BuildContext, String?)? precoCompraTextControllerValidator;
  String? _precoCompraTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for precoVenda widget.
  FocusNode? precoVendaFocusNode;
  TextEditingController? precoVendaTextController;
  String? Function(BuildContext, String?)? precoVendaTextControllerValidator;
  String? _precoVendaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for observacao widget.
  FocusNode? observacaoFocusNode;
  TextEditingController? observacaoTextController;
  String? Function(BuildContext, String?)? observacaoTextControllerValidator;
  // Model for folder component.
  late FolderModel folderModel1;
  // State field(s) for filalCategoria widget.
  String? filalCategoriaValue;
  FormFieldController<String>? filalCategoriaValueController;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode;
  TextEditingController? nomeCategoriaTextController;
  String? Function(BuildContext, String?)? nomeCategoriaTextControllerValidator;
  String? _nomeCategoriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // Model for folder component.
  late FolderModel folderModel2;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  List<InventarioLoja1Record> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioLoja1Record>();
  // State field(s) for filialLoja widget.
  String? filialLojaValue;
  FormFieldController<String>? filialLojaValueController;
  // State field(s) for nomeLoja widget.
  FocusNode? nomeLojaFocusNode;
  TextEditingController? nomeLojaTextController;
  String? Function(BuildContext, String?)? nomeLojaTextControllerValidator;
  String? _nomeLojaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for codigoLoja widget.
  FocusNode? codigoLojaFocusNode;
  TextEditingController? codigoLojaTextController;
  String? Function(BuildContext, String?)? codigoLojaTextControllerValidator;
  String? _codigoLojaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telefoneLoja widget.
  FocusNode? telefoneLojaFocusNode;
  TextEditingController? telefoneLojaTextController;
  String? Function(BuildContext, String?)? telefoneLojaTextControllerValidator;
  String? _telefoneLojaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for enderecoLoja widget.
  FocusNode? enderecoLojaFocusNode;
  TextEditingController? enderecoLojaTextController;
  String? Function(BuildContext, String?)? enderecoLojaTextControllerValidator;
  String? _enderecoLojaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for descricaoLoja widget.
  FocusNode? descricaoLojaFocusNode;
  TextEditingController? descricaoLojaTextController;
  String? Function(BuildContext, String?)? descricaoLojaTextControllerValidator;
  // Model for folder component.
  late FolderModel folderModel3;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  List<InventarioFornecedoresRecord> simpleSearchResults3 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioFornecedoresRecord>();
  // State field(s) for filialFornecedor widget.
  String? filialFornecedorValue;
  FormFieldController<String>? filialFornecedorValueController;
  // State field(s) for nomeFornecedor widget.
  FocusNode? nomeFornecedorFocusNode;
  TextEditingController? nomeFornecedorTextController;
  String? Function(BuildContext, String?)?
      nomeFornecedorTextControllerValidator;
  String? _nomeFornecedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for emailFornecedor widget.
  FocusNode? emailFornecedorFocusNode;
  TextEditingController? emailFornecedorTextController;
  String? Function(BuildContext, String?)?
      emailFornecedorTextControllerValidator;
  String? _emailFornecedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telefoneFornecedor widget.
  FocusNode? telefoneFornecedorFocusNode;
  TextEditingController? telefoneFornecedorTextController;
  String? Function(BuildContext, String?)?
      telefoneFornecedorTextControllerValidator;
  String? _telefoneFornecedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for empresaFornecedor widget.
  FocusNode? empresaFornecedorFocusNode;
  TextEditingController? empresaFornecedorTextController;
  String? Function(BuildContext, String?)?
      empresaFornecedorTextControllerValidator;
  String? _empresaFornecedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for produtosFornecedor widget.
  FocusNode? produtosFornecedorFocusNode;
  TextEditingController? produtosFornecedorTextController;
  String? Function(BuildContext, String?)?
      produtosFornecedorTextControllerValidator;
  // State field(s) for enderecoFornecedor widget.
  FocusNode? enderecoFornecedorFocusNode;
  TextEditingController? enderecoFornecedorTextController;
  String? Function(BuildContext, String?)?
      enderecoFornecedorTextControllerValidator;
  // Model for folder component.
  late FolderModel folderModel4;
  // State field(s) for filalUnidade widget.
  String? filalUnidadeValue;
  FormFieldController<String>? filalUnidadeValueController;
  // State field(s) for nomeUnidade widget.
  FocusNode? nomeUnidadeFocusNode;
  TextEditingController? nomeUnidadeTextController;
  String? Function(BuildContext, String?)? nomeUnidadeTextControllerValidator;
  String? _nomeUnidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioUnidadesRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController4;
  int get tabBarCurrentIndex4 =>
      tabBarController4 != null ? tabBarController4!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  List<InventarioComprasRecord> simpleSearchResults4 = [];
  // State field(s) for DataTable widget.
  final dataTableController1 =
      FlutterFlowDataTableController<InventarioComprasRecord>();
  // State field(s) for filialCompra widget.
  String? filialCompraValue1;
  FormFieldController<String>? filialCompraValueController1;
  // State field(s) for FornecedorCompra widget.
  String? fornecedorCompraValue;
  FormFieldController<String>? fornecedorCompraValueController;
  // State field(s) for lojaCompra widget.
  String? lojaCompraValue1;
  FormFieldController<String>? lojaCompraValueController1;
  // State field(s) for faturaCompra widget.
  FocusNode? faturaCompraFocusNode1;
  TextEditingController? faturaCompraTextController1;
  String? Function(BuildContext, String?)? faturaCompraTextController1Validator;
  String? _faturaCompraTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for estadoCompra widget.
  String? estadoCompraValue;
  FormFieldController<String>? estadoCompraValueController;
  DateTime? datePicked1;
  // State field(s) for observacaoCompra widget.
  FocusNode? observacaoCompraFocusNode;
  TextEditingController? observacaoCompraTextController;
  String? Function(BuildContext, String?)?
      observacaoCompraTextControllerValidator;
  // State field(s) for produto widget.
  String? produtoValue1;
  FormFieldController<String>? produtoValueController1;
  // State field(s) for quantidade widget.
  FocusNode? quantidadeFocusNode1;
  TextEditingController? quantidadeTextController1;
  String? Function(BuildContext, String?)? quantidadeTextController1Validator;
  String? _quantidadeTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for desconto widget.
  FocusNode? descontoFocusNode1;
  TextEditingController? descontoTextController1;
  String? Function(BuildContext, String?)? descontoTextController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InventarioComprasRecord? comprasRef;
  InstantTimer? instantTimer;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<FaturaRecord>? listaFatura;
  // State field(s) for TabBar widget.
  TabController? tabBarController5;
  int get tabBarCurrentIndex5 =>
      tabBarController5 != null ? tabBarController5!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController28;
  String? Function(BuildContext, String?)? textController28Validator;
  List<InventarioVendasRecord> simpleSearchResults5 = [];
  // State field(s) for DataTable widget.
  final dataTableController2 =
      FlutterFlowDataTableController<InventarioVendasRecord>();
  // State field(s) for filialCompra widget.
  String? filialCompraValue2;
  FormFieldController<String>? filialCompraValueController2;
  // State field(s) for funcaoVenda widget.
  String? funcaoVendaValue1;
  FormFieldController<String>? funcaoVendaValueController1;
  // State field(s) for lojaCompra widget.
  String? lojaCompraValue2;
  FormFieldController<String>? lojaCompraValueController2;
  // State field(s) for faturaCompra widget.
  FocusNode? faturaCompraFocusNode2;
  TextEditingController? faturaCompraTextController2;
  String? Function(BuildContext, String?)? faturaCompraTextController2Validator;
  String? _faturaCompraTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for produto widget.
  String? produtoValue2;
  FormFieldController<String>? produtoValueController2;
  // State field(s) for quantidade widget.
  FocusNode? quantidadeFocusNode2;
  TextEditingController? quantidadeTextController2;
  String? Function(BuildContext, String?)? quantidadeTextController2Validator;
  String? _quantidadeTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for desconto widget.
  FocusNode? descontoFocusNode2;
  TextEditingController? descontoTextController2;
  String? Function(BuildContext, String?)? descontoTextController2Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController6;
  int get tabBarCurrentIndex6 =>
      tabBarController6 != null ? tabBarController6!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController32;
  String? Function(BuildContext, String?)? textController32Validator;
  List<InventarioEmitirRecord> simpleSearchResults6 = [];
  // State field(s) for DataTable widget.
  final dataTableController3 =
      FlutterFlowDataTableController<InventarioEmitirRecord>();
  // State field(s) for filialCompra widget.
  String? filialCompraValue3;
  FormFieldController<String>? filialCompraValueController3;
  // State field(s) for funcaoVenda widget.
  String? funcaoVendaValue2;
  FormFieldController<String>? funcaoVendaValueController2;
  // State field(s) for lojaCompra widget.
  String? lojaCompraValue3;
  FormFieldController<String>? lojaCompraValueController3;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for produto widget.
  String? produtoValue3;
  FormFieldController<String>? produtoValueController3;
  // State field(s) for quantidade widget.
  FocusNode? quantidadeFocusNode3;
  TextEditingController? quantidadeTextController3;
  String? Function(BuildContext, String?)? quantidadeTextController3Validator;
  String? _quantidadeTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for desconto widget.
  FocusNode? descontoFocusNode3;
  TextEditingController? descontoTextController3;
  String? Function(BuildContext, String?)? descontoTextController3Validator;

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeProdutoTextControllerValidator = _nomeProdutoTextControllerValidator;
    codigoProdutoTextControllerValidator =
        _codigoProdutoTextControllerValidator;
    razaoUnitariaTextControllerValidator =
        _razaoUnitariaTextControllerValidator;
    precoCompraTextControllerValidator = _precoCompraTextControllerValidator;
    precoVendaTextControllerValidator = _precoVendaTextControllerValidator;
    folderModel1 = createModel(context, () => FolderModel());
    nomeCategoriaTextControllerValidator =
        _nomeCategoriaTextControllerValidator;
    folderModel2 = createModel(context, () => FolderModel());
    nomeLojaTextControllerValidator = _nomeLojaTextControllerValidator;
    codigoLojaTextControllerValidator = _codigoLojaTextControllerValidator;
    telefoneLojaTextControllerValidator = _telefoneLojaTextControllerValidator;
    enderecoLojaTextControllerValidator = _enderecoLojaTextControllerValidator;
    folderModel3 = createModel(context, () => FolderModel());
    nomeFornecedorTextControllerValidator =
        _nomeFornecedorTextControllerValidator;
    emailFornecedorTextControllerValidator =
        _emailFornecedorTextControllerValidator;
    telefoneFornecedorTextControllerValidator =
        _telefoneFornecedorTextControllerValidator;
    empresaFornecedorTextControllerValidator =
        _empresaFornecedorTextControllerValidator;
    folderModel4 = createModel(context, () => FolderModel());
    nomeUnidadeTextControllerValidator = _nomeUnidadeTextControllerValidator;
    faturaCompraTextController1Validator =
        _faturaCompraTextController1Validator;
    quantidadeTextController1Validator = _quantidadeTextController1Validator;
    faturaCompraTextController2Validator =
        _faturaCompraTextController2Validator;
    quantidadeTextController2Validator = _quantidadeTextController2Validator;
    quantidadeTextController3Validator = _quantidadeTextController3Validator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    tabBarController1?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController1.dispose();
    nomeProdutoFocusNode?.dispose();
    nomeProdutoTextController?.dispose();

    codigoProdutoFocusNode?.dispose();
    codigoProdutoTextController?.dispose();

    razaoUnitariaFocusNode?.dispose();
    razaoUnitariaTextController?.dispose();

    precoCompraFocusNode?.dispose();
    precoCompraTextController?.dispose();

    precoVendaFocusNode?.dispose();
    precoVendaTextController?.dispose();

    observacaoFocusNode?.dispose();
    observacaoTextController?.dispose();

    folderModel1.dispose();
    nomeCategoriaFocusNode?.dispose();
    nomeCategoriaTextController?.dispose();

    paginatedDataTableController2.dispose();
    folderModel2.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();
    textController9?.dispose();

    paginatedDataTableController3.dispose();
    nomeLojaFocusNode?.dispose();
    nomeLojaTextController?.dispose();

    codigoLojaFocusNode?.dispose();
    codigoLojaTextController?.dispose();

    telefoneLojaFocusNode?.dispose();
    telefoneLojaTextController?.dispose();

    enderecoLojaFocusNode?.dispose();
    enderecoLojaTextController?.dispose();

    descricaoLojaFocusNode?.dispose();
    descricaoLojaTextController?.dispose();

    folderModel3.dispose();
    tabBarController3?.dispose();
    textFieldFocusNode3?.dispose();
    textController15?.dispose();

    paginatedDataTableController4.dispose();
    nomeFornecedorFocusNode?.dispose();
    nomeFornecedorTextController?.dispose();

    emailFornecedorFocusNode?.dispose();
    emailFornecedorTextController?.dispose();

    telefoneFornecedorFocusNode?.dispose();
    telefoneFornecedorTextController?.dispose();

    empresaFornecedorFocusNode?.dispose();
    empresaFornecedorTextController?.dispose();

    produtosFornecedorFocusNode?.dispose();
    produtosFornecedorTextController?.dispose();

    enderecoFornecedorFocusNode?.dispose();
    enderecoFornecedorTextController?.dispose();

    folderModel4.dispose();
    nomeUnidadeFocusNode?.dispose();
    nomeUnidadeTextController?.dispose();

    paginatedDataTableController5.dispose();
    tabBarController4?.dispose();
    textFieldFocusNode4?.dispose();
    textController23?.dispose();

    dataTableController1.dispose();
    faturaCompraFocusNode1?.dispose();
    faturaCompraTextController1?.dispose();

    observacaoCompraFocusNode?.dispose();
    observacaoCompraTextController?.dispose();

    quantidadeFocusNode1?.dispose();
    quantidadeTextController1?.dispose();

    descontoFocusNode1?.dispose();
    descontoTextController1?.dispose();

    instantTimer?.cancel();
    tabBarController5?.dispose();
    textFieldFocusNode5?.dispose();
    textController28?.dispose();

    dataTableController2.dispose();
    faturaCompraFocusNode2?.dispose();
    faturaCompraTextController2?.dispose();

    quantidadeFocusNode2?.dispose();
    quantidadeTextController2?.dispose();

    descontoFocusNode2?.dispose();
    descontoTextController2?.dispose();

    tabBarController6?.dispose();
    textFieldFocusNode6?.dispose();
    textController32?.dispose();

    dataTableController3.dispose();
    quantidadeFocusNode3?.dispose();
    quantidadeTextController3?.dispose();

    descontoFocusNode3?.dispose();
    descontoTextController3?.dispose();
  }
}
