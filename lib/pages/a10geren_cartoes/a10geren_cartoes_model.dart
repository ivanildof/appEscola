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
import 'a10geren_cartoes_widget.dart' show A10gerenCartoesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A10gerenCartoesModel extends FlutterFlowModel<A10gerenCartoesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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
  String? _nomeProdutoTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for produtoscategori widget.
  String? produtoscategoriValue1;
  FormFieldController<String>? produtoscategoriValueController1;
  // State field(s) for layoutLargura widget.
  FocusNode? layoutLarguraFocusNode1;
  TextEditingController? layoutLarguraTextController1;
  String? Function(BuildContext, String?)?
      layoutLarguraTextController1Validator;
  String? _layoutLarguraTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for layoutAltura widget.
  FocusNode? layoutAlturaFocusNode1;
  TextEditingController? layoutAlturaTextController1;
  String? Function(BuildContext, String?)? layoutAlturaTextController1Validator;
  // State field(s) for categoria widget.
  String? categoriaValue1;
  FormFieldController<String>? categoriaValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TamnhoFoto widget.
  FocusNode? tamnhoFotoFocusNode1;
  TextEditingController? tamnhoFotoTextController1;
  String? Function(BuildContext, String?)? tamnhoFotoTextController1Validator;
  // State field(s) for AssinatiraIMGcartoes widget.
  FocusNode? assinatiraIMGcartoesFocusNode1;
  TextEditingController? assinatiraIMGcartoesTextController1;
  final assinatiraIMGcartoesMask1 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      assinatiraIMGcartoesTextController1Validator;
  // State field(s) for LogoIMGcartoes widget.
  FocusNode? logoIMGcartoesFocusNode1;
  TextEditingController? logoIMGcartoesTextController1;
  final logoIMGcartoesMask1 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      logoIMGcartoesTextController1Validator;
  // State field(s) for FundoIMGcartoes widget.
  FocusNode? fundoIMGcartoesFocusNode1;
  TextEditingController? fundoIMGcartoesTextController1;
  final fundoIMGcartoesMask1 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      fundoIMGcartoesTextController1Validator;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode1;
  TextEditingController? conteudoCertificadoTextController1;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController1Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue1;
  FormFieldController<String>? secaoAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue1;
  FormFieldController<String>? categpriaAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode1;
  TextEditingController? acadTelMovelAlunoTextController1;
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextController1Validator;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode2;
  TextEditingController? acadTelMovelAlunoTextController2;
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue3;
  FormFieldController<String>? secaoAcademicoValueController3;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue2;
  FormFieldController<String>? categpriaAcademicoValueController2;
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
  // State field(s) for filial widget.
  String? filialValue2;
  FormFieldController<String>? filialValueController2;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  String? _nomeProdutoTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for produtoscategori widget.
  String? produtoscategoriValue2;
  FormFieldController<String>? produtoscategoriValueController2;
  // State field(s) for layoutLargura widget.
  FocusNode? layoutLarguraFocusNode2;
  TextEditingController? layoutLarguraTextController2;
  String? Function(BuildContext, String?)?
      layoutLarguraTextController2Validator;
  String? _layoutLarguraTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for layoutAltura widget.
  FocusNode? layoutAlturaFocusNode2;
  TextEditingController? layoutAlturaTextController2;
  String? Function(BuildContext, String?)? layoutAlturaTextController2Validator;
  // State field(s) for categoria widget.
  String? categoriaValue2;
  FormFieldController<String>? categoriaValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TamnhoFoto widget.
  FocusNode? tamnhoFotoFocusNode2;
  TextEditingController? tamnhoFotoTextController2;
  String? Function(BuildContext, String?)? tamnhoFotoTextController2Validator;
  // State field(s) for AssinatiraIMGcartoes widget.
  FocusNode? assinatiraIMGcartoesFocusNode2;
  TextEditingController? assinatiraIMGcartoesTextController2;
  final assinatiraIMGcartoesMask2 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      assinatiraIMGcartoesTextController2Validator;
  // State field(s) for LogoIMGcartoes widget.
  FocusNode? logoIMGcartoesFocusNode2;
  TextEditingController? logoIMGcartoesTextController2;
  final logoIMGcartoesMask2 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      logoIMGcartoesTextController2Validator;
  // State field(s) for FundoIMGcartoes widget.
  FocusNode? fundoIMGcartoesFocusNode2;
  TextEditingController? fundoIMGcartoesTextController2;
  final fundoIMGcartoesMask2 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      fundoIMGcartoesTextController2Validator;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode2;
  TextEditingController? conteudoCertificadoTextController2;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController2Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue4;
  FormFieldController<String>? secaoAcademicoValueController4;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue3;
  FormFieldController<String>? categpriaAcademicoValueController3;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue5;
  FormFieldController<String>? secaoAcademicoValueController5;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue6;
  FormFieldController<String>? secaoAcademicoValueController6;

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeProdutoTextController1Validator = _nomeProdutoTextController1Validator;
    layoutLarguraTextController1Validator =
        _layoutLarguraTextController1Validator;
    nomeProdutoTextController2Validator = _nomeProdutoTextController2Validator;
    layoutLarguraTextController2Validator =
        _layoutLarguraTextController2Validator;
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

    layoutLarguraFocusNode1?.dispose();
    layoutLarguraTextController1?.dispose();

    layoutAlturaFocusNode1?.dispose();
    layoutAlturaTextController1?.dispose();

    tamnhoFotoFocusNode1?.dispose();
    tamnhoFotoTextController1?.dispose();

    assinatiraIMGcartoesFocusNode1?.dispose();
    assinatiraIMGcartoesTextController1?.dispose();

    logoIMGcartoesFocusNode1?.dispose();
    logoIMGcartoesTextController1?.dispose();

    fundoIMGcartoesFocusNode1?.dispose();
    fundoIMGcartoesTextController1?.dispose();

    conteudoCertificadoFocusNode1?.dispose();
    conteudoCertificadoTextController1?.dispose();

    acadTelMovelAlunoFocusNode1?.dispose();
    acadTelMovelAlunoTextController1?.dispose();

    acadTelMovelAlunoFocusNode2?.dispose();
    acadTelMovelAlunoTextController2?.dispose();

    paginatedDataTableController2.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController3.dispose();
    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    layoutLarguraFocusNode2?.dispose();
    layoutLarguraTextController2?.dispose();

    layoutAlturaFocusNode2?.dispose();
    layoutAlturaTextController2?.dispose();

    tamnhoFotoFocusNode2?.dispose();
    tamnhoFotoTextController2?.dispose();

    assinatiraIMGcartoesFocusNode2?.dispose();
    assinatiraIMGcartoesTextController2?.dispose();

    logoIMGcartoesFocusNode2?.dispose();
    logoIMGcartoesTextController2?.dispose();

    fundoIMGcartoesFocusNode2?.dispose();
    fundoIMGcartoesTextController2?.dispose();

    conteudoCertificadoFocusNode2?.dispose();
    conteudoCertificadoTextController2?.dispose();
  }
}
