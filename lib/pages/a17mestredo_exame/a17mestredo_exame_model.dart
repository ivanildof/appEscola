import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a17mestredo_exame_widget.dart' show A17mestredoExameWidget;
import 'package:flutter/material.dart';

class A17mestredoExameModel extends FlutterFlowModel<A17mestredoExameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for filalCategoria widget.
  String? filalCategoriaValue1;
  FormFieldController<String>? filalCategoriaValueController1;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode1;
  TextEditingController? nomeCategoriaTextController1;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController1Validator;
  String? _nomeCategoriaTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for filalCategoria widget.
  String? filalCategoriaValue2;
  FormFieldController<String>? filalCategoriaValueController2;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode2;
  TextEditingController? nomeCategoriaTextController2;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController2Validator;
  String? _nomeCategoriaTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode3;
  TextEditingController? nomeCategoriaTextController3;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController3Validator;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode4;
  TextEditingController? nomeCategoriaTextController4;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController4Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for filalCategoria widget.
  String? filalCategoriaValue3;
  FormFieldController<String>? filalCategoriaValueController3;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode5;
  TextEditingController? nomeCategoriaTextController5;
  String? Function(BuildContext, String?)?
      nomeCategoriaTextController5Validator;
  String? _nomeCategoriaTextController5Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController6Validator;
  List<InventarioProdutosRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue1;
  FormFieldController<String>? filialValueController1;
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

  // State field(s) for prazo widget.
  String? prazoValue;
  FormFieldController<String>? prazoValueController;
  // State field(s) for exame widget.
  String? exameValue;
  FormFieldController<String>? exameValueController;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue;
  FormFieldController<String>? secaoAcademicoValueController;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue1;
  FormFieldController<String>? categpriaAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue2;
  FormFieldController<String>? categpriaAcademicoValueController2;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue3;
  FormFieldController<String>? categpriaAcademicoValueController3;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue4;
  FormFieldController<String>? categpriaAcademicoValueController4;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue4;
  FormFieldController<String>? calssAcademicoValueController4;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController11;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController11Validator;
  List<InventarioProdutosRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController7 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue2;
  FormFieldController<String>? filialValueController2;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode6;
  TextEditingController? nomeProdutoTextController6;
  String? Function(BuildContext, String?)? nomeProdutoTextController6Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode7;
  TextEditingController? nomeProdutoTextController7;
  String? Function(BuildContext, String?)? nomeProdutoTextController7Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode8;
  TextEditingController? nomeProdutoTextController8;
  String? Function(BuildContext, String?)? nomeProdutoTextController8Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode9;
  TextEditingController? nomeProdutoTextController9;
  String? Function(BuildContext, String?)? nomeProdutoTextController9Validator;

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeCategoriaTextController1Validator =
        _nomeCategoriaTextController1Validator;
    nomeCategoriaTextController2Validator =
        _nomeCategoriaTextController2Validator;
    nomeCategoriaTextController5Validator =
        _nomeCategoriaTextController5Validator;
    nomeProdutoTextController1Validator = _nomeProdutoTextController1Validator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    nomeCategoriaFocusNode1?.dispose();
    nomeCategoriaTextController1?.dispose();

    paginatedDataTableController1.dispose();
    nomeCategoriaFocusNode2?.dispose();
    nomeCategoriaTextController2?.dispose();

    nomeCategoriaFocusNode3?.dispose();
    nomeCategoriaTextController3?.dispose();

    nomeCategoriaFocusNode4?.dispose();
    nomeCategoriaTextController4?.dispose();

    paginatedDataTableController2.dispose();
    nomeCategoriaFocusNode5?.dispose();
    nomeCategoriaTextController5?.dispose();

    paginatedDataTableController3.dispose();
    tabBarController1?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController4.dispose();
    nomeProdutoFocusNode1?.dispose();
    nomeProdutoTextController1?.dispose();

    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    paginatedDataTableController5.dispose();
    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    paginatedDataTableController6.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController7.dispose();
    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();

    nomeProdutoFocusNode6?.dispose();
    nomeProdutoTextController6?.dispose();

    nomeProdutoFocusNode7?.dispose();
    nomeProdutoTextController7?.dispose();

    nomeProdutoFocusNode8?.dispose();
    nomeProdutoTextController8?.dispose();

    nomeProdutoFocusNode9?.dispose();
    nomeProdutoTextController9?.dispose();
  }
}
