import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a21biblioteca_widget.dart' show A21bibliotecaWidget;
import 'package:flutter/material.dart';

class A21bibliotecaModel extends FlutterFlowModel<A21bibliotecaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
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
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue1;
  FormFieldController<String>? categoriaLivroValueController1;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode1;
  TextEditingController? nomeProdutoTextController1;
  String? Function(BuildContext, String?)? nomeProdutoTextController1Validator;
  String? _nomeProdutoTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode1;
  TextEditingController? codigoProdutoTextController1;
  String? Function(BuildContext, String?)?
      codigoProdutoTextController1Validator;
  String? _codigoProdutoTextController1Validator(
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
  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode2;
  TextEditingController? codigoProdutoTextController2;
  String? Function(BuildContext, String?)?
      codigoProdutoTextController2Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  // State field(s) for filial widget.
  String? filialValue;
  FormFieldController<String>? filialValueController;
  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode3;
  TextEditingController? codigoProdutoTextController3;
  String? Function(BuildContext, String?)?
      codigoProdutoTextController3Validator;
  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode4;
  TextEditingController? codigoProdutoTextController4;
  String? Function(BuildContext, String?)?
      codigoProdutoTextController4Validator;
  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode5;
  TextEditingController? codigoProdutoTextController5;
  String? Function(BuildContext, String?)?
      codigoProdutoTextController5Validator;
  // State field(s) for codigoProduto widget.
  FocusNode? codigoProdutoFocusNode6;
  TextEditingController? codigoProdutoTextController6;
  String? Function(BuildContext, String?)?
      codigoProdutoTextController6Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue;
  FormFieldController<String>? calssAcademicoValueController;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController12;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController12Validator;
  List<InventarioProdutosRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue2;
  FormFieldController<String>? categoriaLivroValueController2;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController15;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController15Validator;
  List<InventarioProdutosRecord> simpleSearchResults3 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue3;
  FormFieldController<String>? categoriaLivroValueController3;
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue4;
  FormFieldController<String>? categoriaLivroValueController4;
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue5;
  FormFieldController<String>? categoriaLivroValueController5;
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue6;
  FormFieldController<String>? categoriaLivroValueController6;
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue7;
  FormFieldController<String>? categoriaLivroValueController7;
  // State field(s) for CategoriaLivro widget.
  String? categoriaLivroValue8;
  FormFieldController<String>? categoriaLivroValueController8;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeProdutoTextController1Validator = _nomeProdutoTextController1Validator;
    codigoProdutoTextController1Validator =
        _codigoProdutoTextController1Validator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    tabBarController1?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController1.dispose();
    nomeProdutoFocusNode1?.dispose();
    nomeProdutoTextController1?.dispose();

    codigoProdutoFocusNode1?.dispose();
    codigoProdutoTextController1?.dispose();

    precoCompraFocusNode?.dispose();
    precoCompraTextController?.dispose();

    codigoProdutoFocusNode2?.dispose();
    codigoProdutoTextController2?.dispose();

    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    codigoProdutoFocusNode3?.dispose();
    codigoProdutoTextController3?.dispose();

    codigoProdutoFocusNode4?.dispose();
    codigoProdutoTextController4?.dispose();

    codigoProdutoFocusNode5?.dispose();
    codigoProdutoTextController5?.dispose();

    codigoProdutoFocusNode6?.dispose();
    codigoProdutoTextController6?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    paginatedDataTableController2.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController3.dispose();
    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    tabBarController3?.dispose();
    textFieldFocusNode3?.dispose();

    paginatedDataTableController4.dispose();
    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();
  }
}
