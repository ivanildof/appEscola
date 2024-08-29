import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a14salas_ao_vivo_widget.dart' show A14salasAoVivoWidget;
import 'package:flutter/material.dart';

class A14salasAoVivoModel extends FlutterFlowModel<A14salasAoVivoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
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

  // State field(s) for filial widget.
  String? filialValue2;
  FormFieldController<String>? filialValueController2;
  // State field(s) for filial widget.
  String? filialValue3;
  FormFieldController<String>? filialValueController3;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode6;
  TextEditingController? nomeProdutoTextController6;
  String? Function(BuildContext, String?)? nomeProdutoTextController6Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue;
  FormFieldController<String>? calssAcademicoValueController;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue;
  FormFieldController<String>? secaoAcademicoValueController;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue1;
  FormFieldController<String>? categpriaAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue2;
  FormFieldController<String>? categpriaAcademicoValueController2;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode7;
  TextEditingController? nomeProdutoTextController7;
  String? Function(BuildContext, String?)? nomeProdutoTextController7Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController9;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeProdutoTextController1Validator = _nomeProdutoTextController1Validator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController1.dispose();
    nomeProdutoFocusNode1?.dispose();
    nomeProdutoTextController1?.dispose();

    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();

    nomeProdutoFocusNode6?.dispose();
    nomeProdutoTextController6?.dispose();

    nomeProdutoFocusNode7?.dispose();
    nomeProdutoTextController7?.dispose();

    textFieldFocusNode2?.dispose();

    paginatedDataTableController2.dispose();
  }
}
