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
import 'a24contabilidade_estudantil_widget.dart'
    show A24contabilidadeEstudantilWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A24contabilidadeEstudantilModel
    extends FlutterFlowModel<A24contabilidadeEstudantilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey7 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
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
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController5Validator;
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
  // State field(s) for categoria widget.
  String? categoriaValue2;
  FormFieldController<String>? categoriaValueController2;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode2;
  TextEditingController? conteudoCertificadoTextController2;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController2Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey4 = GlobalKey();
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController8;
  String? textFieldSelectedOption4;
  String? Function(BuildContext, String?)? textController8Validator;
  List<InventarioProdutosRecord> simpleSearchResults3 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue3;
  FormFieldController<String>? filialValueController3;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for categoria widget.
  String? categoriaValue3;
  FormFieldController<String>? categoriaValueController3;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode3;
  TextEditingController? conteudoCertificadoTextController3;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController3Validator;
  // State field(s) for filial widget.
  String? filialValue4;
  FormFieldController<String>? filialValueController4;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController4;
  int get tabBarCurrentIndex4 =>
      tabBarController4 != null ? tabBarController4!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey5 = GlobalKey();
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController13;
  String? textFieldSelectedOption5;
  String? Function(BuildContext, String?)? textController13Validator;
  List<InventarioProdutosRecord> simpleSearchResults4 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue5;
  FormFieldController<String>? filialValueController5;
  // State field(s) for filial widget.
  String? filialValue6;
  FormFieldController<String>? filialValueController6;
  // State field(s) for categoria widget.
  String? categoriaValue4;
  FormFieldController<String>? categoriaValueController4;
  // State field(s) for filial widget.
  String? filialValue7;
  FormFieldController<String>? filialValueController7;
  // State field(s) for filial widget.
  String? filialValue8;
  FormFieldController<String>? filialValueController8;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode6;
  TextEditingController? nomeProdutoTextController6;
  String? Function(BuildContext, String?)? nomeProdutoTextController6Validator;
  // State field(s) for filial widget.
  String? filialValue9;
  FormFieldController<String>? filialValueController9;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue1;
  FormFieldController<String>? categpriaAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue2;
  FormFieldController<String>? categpriaAcademicoValueController2;
  // State field(s) for TextField widget.
  final textFieldKey6 = GlobalKey();
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController15;
  String? textFieldSelectedOption6;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue3;
  FormFieldController<String>? secaoAcademicoValueController3;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue3;
  FormFieldController<String>? categpriaAcademicoValueController3;
  // State field(s) for TextField widget.
  final textFieldKey7 = GlobalKey();
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController16;
  String? textFieldSelectedOption7;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController7 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController5;
  int get tabBarCurrentIndex5 =>
      tabBarController5 != null ? tabBarController5!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController8 =
      FlutterFlowDataTableController<String>();
  // State field(s) for filial widget.
  String? filialValue10;
  FormFieldController<String>? filialValueController10;
  // State field(s) for categoria widget.
  String? categoriaValue5;
  FormFieldController<String>? categoriaValueController5;
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
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode10;
  TextEditingController? nomeProdutoTextController10;
  String? Function(BuildContext, String?)? nomeProdutoTextController10Validator;
  // State field(s) for filial widget.
  String? filialValue11;
  FormFieldController<String>? filialValueController11;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode11;
  TextEditingController? nomeProdutoTextController11;
  String? Function(BuildContext, String?)? nomeProdutoTextController11Validator;
  // State field(s) for categoria widget.
  String? categoriaValue6;
  FormFieldController<String>? categoriaValueController6;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode12;
  TextEditingController? nomeProdutoTextController12;
  String? Function(BuildContext, String?)? nomeProdutoTextController12Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode13;
  TextEditingController? nomeProdutoTextController13;
  String? Function(BuildContext, String?)? nomeProdutoTextController13Validator;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode14;
  TextEditingController? nomeProdutoTextController14;
  String? Function(BuildContext, String?)? nomeProdutoTextController14Validator;
  // State field(s) for filial widget.
  String? filialValue12;
  FormFieldController<String>? filialValueController12;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode15;
  TextEditingController? nomeProdutoTextController15;
  String? Function(BuildContext, String?)? nomeProdutoTextController15Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue4;
  FormFieldController<String>? calssAcademicoValueController4;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue4;
  FormFieldController<String>? secaoAcademicoValueController4;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue4;
  FormFieldController<String>? categpriaAcademicoValueController4;
  // State field(s) for TextField widget.
  final textFieldKey8 = GlobalKey();
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController26;
  String? textFieldSelectedOption8;
  String? Function(BuildContext, String?)? textController26Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController9 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TabBar widget.
  TabController? tabBarController6;
  int get tabBarCurrentIndex6 =>
      tabBarController6 != null ? tabBarController6!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey9 = GlobalKey();
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController27;
  String? textFieldSelectedOption9;
  String? Function(BuildContext, String?)? textController27Validator;
  List<InventarioProdutosRecord> simpleSearchResults5 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController10 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filial widget.
  String? filialValue13;
  FormFieldController<String>? filialValueController13;
  // State field(s) for filial widget.
  String? filialValue14;
  FormFieldController<String>? filialValueController14;
  // State field(s) for categoria widget.
  String? categoriaValue7;
  FormFieldController<String>? categoriaValueController7;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode16;
  TextEditingController? nomeProdutoTextController16;
  String? Function(BuildContext, String?)? nomeProdutoTextController16Validator;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode4;
  TextEditingController? conteudoCertificadoTextController4;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

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

    conteudoCertificadoFocusNode1?.dispose();
    conteudoCertificadoTextController1?.dispose();

    textFieldFocusNode2?.dispose();

    paginatedDataTableController2.dispose();
    tabBarController2?.dispose();
    textFieldFocusNode3?.dispose();

    paginatedDataTableController3.dispose();
    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    conteudoCertificadoFocusNode2?.dispose();
    conteudoCertificadoTextController2?.dispose();

    tabBarController3?.dispose();
    textFieldFocusNode4?.dispose();

    paginatedDataTableController4.dispose();
    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    conteudoCertificadoFocusNode3?.dispose();
    conteudoCertificadoTextController3?.dispose();

    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();

    tabBarController4?.dispose();
    textFieldFocusNode5?.dispose();

    paginatedDataTableController5.dispose();
    nomeProdutoFocusNode6?.dispose();
    nomeProdutoTextController6?.dispose();

    textFieldFocusNode6?.dispose();

    paginatedDataTableController6.dispose();
    textFieldFocusNode7?.dispose();

    paginatedDataTableController7.dispose();
    tabBarController5?.dispose();
    paginatedDataTableController8.dispose();
    nomeProdutoFocusNode7?.dispose();
    nomeProdutoTextController7?.dispose();

    nomeProdutoFocusNode8?.dispose();
    nomeProdutoTextController8?.dispose();

    nomeProdutoFocusNode9?.dispose();
    nomeProdutoTextController9?.dispose();

    nomeProdutoFocusNode10?.dispose();
    nomeProdutoTextController10?.dispose();

    nomeProdutoFocusNode11?.dispose();
    nomeProdutoTextController11?.dispose();

    nomeProdutoFocusNode12?.dispose();
    nomeProdutoTextController12?.dispose();

    nomeProdutoFocusNode13?.dispose();
    nomeProdutoTextController13?.dispose();

    nomeProdutoFocusNode14?.dispose();
    nomeProdutoTextController14?.dispose();

    nomeProdutoFocusNode15?.dispose();
    nomeProdutoTextController15?.dispose();

    textFieldFocusNode8?.dispose();

    paginatedDataTableController9.dispose();
    tabBarController6?.dispose();
    textFieldFocusNode9?.dispose();

    paginatedDataTableController10.dispose();
    nomeProdutoFocusNode16?.dispose();
    nomeProdutoTextController16?.dispose();

    conteudoCertificadoFocusNode4?.dispose();
    conteudoCertificadoTextController4?.dispose();
  }
}
