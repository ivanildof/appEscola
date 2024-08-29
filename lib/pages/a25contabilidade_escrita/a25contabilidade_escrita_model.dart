import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a25contabilidade_escrita_widget.dart'
    show A25contabilidadeEscritaWidget;
import 'package:flutter/material.dart';

class A25contabilidadeEscritaModel
    extends FlutterFlowModel<A25contabilidadeEscritaWidget> {
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
  // State field(s) for filial widget.
  String? filialValue1;
  FormFieldController<String>? filialValueController1;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode1;
  TextEditingController? nomeProdutoTextController1;
  String? Function(BuildContext, String?)? nomeProdutoTextController1Validator;
  // State field(s) for categoria widget.
  String? categoriaValue1;
  FormFieldController<String>? categoriaValueController1;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode1;
  TextEditingController? conteudoCertificadoTextController1;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController1Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController6Validator;
  List<InventarioProdutosRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue2;
  FormFieldController<String>? filialValueController2;
  // State field(s) for filial widget.
  String? filialValue3;
  FormFieldController<String>? filialValueController3;
  // State field(s) for categoria widget.
  String? categoriaValue2;
  FormFieldController<String>? categoriaValueController2;
  // State field(s) for filial widget.
  String? filialValue4;
  FormFieldController<String>? filialValueController4;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode2;
  TextEditingController? conteudoCertificadoTextController2;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController2Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;
  // State field(s) for filial widget.
  String? filialValue5;
  FormFieldController<String>? filialValueController5;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode6;
  TextEditingController? nomeProdutoTextController6;
  String? Function(BuildContext, String?)? nomeProdutoTextController6Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController11;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController11Validator;
  List<InventarioProdutosRecord> simpleSearchResults3 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue6;
  FormFieldController<String>? filialValueController6;
  // State field(s) for filial widget.
  String? filialValue7;
  FormFieldController<String>? filialValueController7;
  // State field(s) for categoria widget.
  String? categoriaValue3;
  FormFieldController<String>? categoriaValueController3;
  // State field(s) for filial widget.
  String? filialValue8;
  FormFieldController<String>? filialValueController8;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode3;
  TextEditingController? conteudoCertificadoTextController3;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController3Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode7;
  TextEditingController? nomeProdutoTextController7;
  String? Function(BuildContext, String?)? nomeProdutoTextController7Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode8;
  TextEditingController? nomeProdutoTextController8;
  String? Function(BuildContext, String?)? nomeProdutoTextController8Validator;
  // State field(s) for filial widget.
  String? filialValue9;
  FormFieldController<String>? filialValueController9;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode9;
  TextEditingController? nomeProdutoTextController9;
  String? Function(BuildContext, String?)? nomeProdutoTextController9Validator;
  // State field(s) for TextField widget.
  final textFieldKey4 = GlobalKey();
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController16;
  String? textFieldSelectedOption4;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
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

    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    conteudoCertificadoFocusNode1?.dispose();
    conteudoCertificadoTextController1?.dispose();

    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController2.dispose();
    conteudoCertificadoFocusNode2?.dispose();
    conteudoCertificadoTextController2?.dispose();

    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();

    nomeProdutoFocusNode6?.dispose();
    nomeProdutoTextController6?.dispose();

    tabBarController3?.dispose();
    textFieldFocusNode3?.dispose();

    paginatedDataTableController3.dispose();
    conteudoCertificadoFocusNode3?.dispose();
    conteudoCertificadoTextController3?.dispose();

    nomeProdutoFocusNode7?.dispose();
    nomeProdutoTextController7?.dispose();

    nomeProdutoFocusNode8?.dispose();
    nomeProdutoTextController8?.dispose();

    nomeProdutoFocusNode9?.dispose();
    nomeProdutoTextController9?.dispose();

    textFieldFocusNode4?.dispose();

    paginatedDataTableController4.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    paginatedDataTableController5.dispose();
  }
}
