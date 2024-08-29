import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a13academico_widget.dart' show A13academicoWidget;
import 'package:flutter/material.dart';

class A13academicoModel extends FlutterFlowModel<A13academicoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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

  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode1;
  TextEditingController? nomeTextController1;
  String? Function(BuildContext, String?)? nomeTextController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode3;
  TextEditingController? nomeTextController3;
  String? Function(BuildContext, String?)? nomeTextController3Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode4;
  TextEditingController? nomeTextController4;
  String? Function(BuildContext, String?)? nomeTextController4Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue4;
  FormFieldController<String>? calssAcademicoValueController4;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue;
  FormFieldController<String>? secaoAcademicoValueController;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue;
  FormFieldController<String>? categpriaAcademicoValueController;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue5;
  FormFieldController<String>? calssAcademicoValueController5;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController5;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController5Validator;
  List<InventarioProdutosRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue1;
  FormFieldController<String>? filialValueController1;
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

  // State field(s) for precoCompra widget.
  FocusNode? precoCompraFocusNode;
  TextEditingController? precoCompraTextController;
  String? Function(BuildContext, String?)? precoCompraTextControllerValidator;
  // State field(s) for filial widget.
  String? filialValue2;
  FormFieldController<String>? filialValueController2;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController9Validator;
  List<InventarioProdutosRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue3;
  FormFieldController<String>? filialValueController3;
  // State field(s) for filial widget.
  String? filialValue4;
  FormFieldController<String>? filialValueController4;
  // State field(s) for filial widget.
  String? filialValue5;
  FormFieldController<String>? filialValueController5;
  // State field(s) for filial widget.
  String? filialValue6;
  FormFieldController<String>? filialValueController6;

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeProdutoTextControllerValidator = _nomeProdutoTextControllerValidator;
    codigoProdutoTextControllerValidator =
        _codigoProdutoTextControllerValidator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    tabBarController1?.dispose();
    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    paginatedDataTableController1.dispose();
    nomeFocusNode3?.dispose();
    nomeTextController3?.dispose();

    nomeFocusNode4?.dispose();
    nomeTextController4?.dispose();

    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController4.dispose();
    nomeProdutoFocusNode?.dispose();
    nomeProdutoTextController?.dispose();

    codigoProdutoFocusNode?.dispose();
    codigoProdutoTextController?.dispose();

    precoCompraFocusNode?.dispose();
    precoCompraTextController?.dispose();

    tabBarController3?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController5.dispose();
  }
}
