import '/backend/backend.dart';
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
import 'a23sms_email_widget.dart' show A23smsEmailWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A23smsEmailModel extends FlutterFlowModel<A23smsEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
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
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode3;
  TextEditingController? nomeTextController3;
  String? Function(BuildContext, String?)? nomeTextController3Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue4;
  FormFieldController<String>? calssAcademicoValueController4;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode1;
  TextEditingController? nomeProdutoTextController1;
  String? Function(BuildContext, String?)? nomeProdutoTextController1Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue5;
  FormFieldController<String>? calssAcademicoValueController5;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode4;
  TextEditingController? nomeTextController4;
  String? Function(BuildContext, String?)? nomeTextController4Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue6;
  FormFieldController<String>? calssAcademicoValueController6;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode5;
  TextEditingController? nomeTextController5;
  String? Function(BuildContext, String?)? nomeTextController5Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode6;
  TextEditingController? nomeTextController6;
  String? Function(BuildContext, String?)? nomeTextController6Validator;
  // State field(s) for Tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue7;
  FormFieldController<String>? calssAcademicoValueController7;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue8;
  FormFieldController<String>? calssAcademicoValueController8;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue9;
  FormFieldController<String>? calssAcademicoValueController9;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue10;
  FormFieldController<String>? calssAcademicoValueController10;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue11;
  FormFieldController<String>? calssAcademicoValueController11;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue12;
  FormFieldController<String>? calssAcademicoValueController12;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue;
  FormFieldController<String>? secaoAcademicoValueController;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue;
  FormFieldController<String>? categpriaAcademicoValueController;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController10;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController10Validator;
  List<InventarioProdutosRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue1;
  FormFieldController<String>? filialValueController1;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for categoria widget.
  String? categoriaValue1;
  FormFieldController<String>? categoriaValueController1;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode1;
  TextEditingController? conteudoCertificadoTextController1;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController1Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController13;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController13Validator;
  List<InventarioProdutosRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue2;
  FormFieldController<String>? filialValueController2;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;
  // State field(s) for categoria widget.
  String? categoriaValue2;
  FormFieldController<String>? categoriaValueController2;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode2;
  TextEditingController? conteudoCertificadoTextController2;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController2Validator;

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
    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    nomeFocusNode3?.dispose();
    nomeTextController3?.dispose();

    nomeProdutoFocusNode1?.dispose();
    nomeProdutoTextController1?.dispose();

    nomeFocusNode4?.dispose();
    nomeTextController4?.dispose();

    nomeFocusNode5?.dispose();
    nomeTextController5?.dispose();

    nomeFocusNode6?.dispose();
    nomeTextController6?.dispose();

    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    paginatedDataTableController1.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController2.dispose();
    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    conteudoCertificadoFocusNode1?.dispose();
    conteudoCertificadoTextController1?.dispose();

    tabBarController3?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController3.dispose();
    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();

    conteudoCertificadoFocusNode2?.dispose();
    conteudoCertificadoTextController2?.dispose();
  }
}
