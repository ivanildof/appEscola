import '/backend/backend.dart';
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
import 'a08_cadastro_professores_widget.dart' show A08CadastroProfessoresWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A08CadastroProfessoresModel
    extends FlutterFlowModel<A08CadastroProfessoresWidget> {
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
  // State field(s) for filialAdmissao widget.
  String? filialAdmissaoValue;
  FormFieldController<String>? filialAdmissaoValueController;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue1;
  FormFieldController<String>? secaoAcademicoValueController1;
  // State field(s) for CampoDataNascimen widget.
  FocusNode? campoDataNascimenFocusNode1;
  TextEditingController? campoDataNascimenTextController1;
  final campoDataNascimenMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      campoDataNascimenTextController1Validator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue3;
  FormFieldController<String>? secaoAcademicoValueController3;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue4;
  FormFieldController<String>? secaoAcademicoValueController4;
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode1;
  TextEditingController? nomeAlunoTextController1;
  String? Function(BuildContext, String?)? nomeAlunoTextController1Validator;
  // State field(s) for acadOratioperAluno widget.
  FocusNode? acadOratioperAlunoFocusNode;
  TextEditingController? acadOratioperAlunoTextController;
  String? Function(BuildContext, String?)?
      acadOratioperAlunoTextControllerValidator;
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode2;
  TextEditingController? nomeAlunoTextController2;
  String? Function(BuildContext, String?)? nomeAlunoTextController2Validator;
  // State field(s) for SobreAluno widget.
  FocusNode? sobreAlunoFocusNode;
  TextEditingController? sobreAlunoTextController;
  String? Function(BuildContext, String?)? sobreAlunoTextControllerValidator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue1;
  FormFieldController<String>? acadDropDownGeneroValueController1;
  // State field(s) for DropDownGrupSanguineo widget.
  String? dropDownGrupSanguineoValue;
  FormFieldController<String>? dropDownGrupSanguineoValueController;
  // State field(s) for CampoDataNascimen widget.
  FocusNode? campoDataNascimenFocusNode2;
  TextEditingController? campoDataNascimenTextController2;
  final campoDataNascimenMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      campoDataNascimenTextController2Validator;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue5;
  FormFieldController<String>? secaoAcademicoValueController5;
  // State field(s) for acadIdiomaAluno widget.
  FocusNode? acadIdiomaAlunoFocusNode;
  TextEditingController? acadIdiomaAlunoTextController;
  String? Function(BuildContext, String?)?
      acadIdiomaAlunoTextControllerValidator;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue6;
  FormFieldController<String>? secaoAcademicoValueController6;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode;
  TextEditingController? acadTelMovelAlunoTextController;
  final acadTelMovelAlunoMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextControllerValidator;
  // State field(s) for acadEmailAluno widget.
  FocusNode? acadEmailAlunoFocusNode;
  TextEditingController? acadEmailAlunoTextController;
  String? Function(BuildContext, String?)?
      acadEmailAlunoTextControllerValidator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode1;
  TextEditingController? acadEndAlunoTextController1;
  String? Function(BuildContext, String?)? acadEndAlunoTextController1Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue2;
  FormFieldController<String>? acadDropDownGeneroValueController2;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue3;
  FormFieldController<String>? acadDropDownGeneroValueController3;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode2;
  TextEditingController? acadEndAlunoTextController2;
  String? Function(BuildContext, String?)? acadEndAlunoTextController2Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode3;
  TextEditingController? acadEndAlunoTextController3;
  String? Function(BuildContext, String?)? acadEndAlunoTextController3Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode4;
  TextEditingController? acadEndAlunoTextController4;
  String? Function(BuildContext, String?)? acadEndAlunoTextController4Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode5;
  TextEditingController? acadEndAlunoTextController5;
  String? Function(BuildContext, String?)? acadEndAlunoTextController5Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue4;
  FormFieldController<String>? acadDropDownGeneroValueController4;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue5;
  FormFieldController<String>? acadDropDownGeneroValueController5;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode6;
  TextEditingController? acadEndAlunoTextController6;
  String? Function(BuildContext, String?)? acadEndAlunoTextController6Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode7;
  TextEditingController? acadEndAlunoTextController7;
  String? Function(BuildContext, String?)? acadEndAlunoTextController7Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode8;
  TextEditingController? acadEndAlunoTextController8;
  String? Function(BuildContext, String?)? acadEndAlunoTextController8Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue6;
  FormFieldController<String>? acadDropDownGeneroValueController6;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue7;
  FormFieldController<String>? acadDropDownGeneroValueController7;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode9;
  TextEditingController? acadEndAlunoTextController9;
  String? Function(BuildContext, String?)? acadEndAlunoTextController9Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode10;
  TextEditingController? acadEndAlunoTextController10;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController10Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode11;
  TextEditingController? acadEndAlunoTextController11;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController11Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue8;
  FormFieldController<String>? acadDropDownGeneroValueController8;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue9;
  FormFieldController<String>? acadDropDownGeneroValueController9;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode12;
  TextEditingController? acadEndAlunoTextController12;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController12Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode13;
  TextEditingController? acadEndAlunoTextController13;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController13Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode14;
  TextEditingController? acadEndAlunoTextController14;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController14Validator;
  // State field(s) for userLoginNome widget.
  FocusNode? userLoginNomeFocusNode1;
  TextEditingController? userLoginNomeTextController1;
  String? Function(BuildContext, String?)?
      userLoginNomeTextController1Validator;
  // State field(s) for userLoginSenha widget.
  FocusNode? userLoginSenhaFocusNode1;
  TextEditingController? userLoginSenhaTextController1;
  String? Function(BuildContext, String?)?
      userLoginSenhaTextController1Validator;
  // State field(s) for userLoginRedifinirSenha widget.
  FocusNode? userLoginRedifinirSenhaFocusNode1;
  TextEditingController? userLoginRedifinirSenhaTextController1;
  String? Function(BuildContext, String?)?
      userLoginRedifinirSenhaTextController1Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for userLoginNome widget.
  FocusNode? userLoginNomeFocusNode2;
  TextEditingController? userLoginNomeTextController2;
  String? Function(BuildContext, String?)?
      userLoginNomeTextController2Validator;
  // State field(s) for userLoginSenha widget.
  FocusNode? userLoginSenhaFocusNode2;
  TextEditingController? userLoginSenhaTextController2;
  String? Function(BuildContext, String?)?
      userLoginSenhaTextController2Validator;
  // State field(s) for userLoginRedifinirSenha widget.
  FocusNode? userLoginRedifinirSenhaFocusNode2;
  TextEditingController? userLoginRedifinirSenhaTextController2;
  String? Function(BuildContext, String?)?
      userLoginRedifinirSenhaTextController2Validator;
  // State field(s) for escAnteriorNome widget.
  FocusNode? escAnteriorNomeFocusNode;
  TextEditingController? escAnteriorNomeTextController;
  String? Function(BuildContext, String?)?
      escAnteriorNomeTextControllerValidator;
  // State field(s) for escAnteriorQualificacao widget.
  FocusNode? escAnteriorQualificacaoFocusNode1;
  TextEditingController? escAnteriorQualificacaoTextController1;
  String? Function(BuildContext, String?)?
      escAnteriorQualificacaoTextController1Validator;
  // State field(s) for escAnteriorQualificacao widget.
  FocusNode? escAnteriorQualificacaoFocusNode2;
  TextEditingController? escAnteriorQualificacaoTextController2;
  String? Function(BuildContext, String?)?
      escAnteriorQualificacaoTextController2Validator;
  // State field(s) for escAnteriorObservacao widget.
  FocusNode? escAnteriorObservacaoFocusNode1;
  TextEditingController? escAnteriorObservacaoTextController1;
  String? Function(BuildContext, String?)?
      escAnteriorObservacaoTextController1Validator;
  // State field(s) for escAnteriorObservacao widget.
  FocusNode? escAnteriorObservacaoFocusNode2;
  TextEditingController? escAnteriorObservacaoTextController2;
  String? Function(BuildContext, String?)?
      escAnteriorObservacaoTextController2Validator;
  // State field(s) for escAnteriorObservacao widget.
  FocusNode? escAnteriorObservacaoFocusNode3;
  TextEditingController? escAnteriorObservacaoTextController3;
  String? Function(BuildContext, String?)?
      escAnteriorObservacaoTextController3Validator;
  // Model for folder component.
  late FolderModel folderModel1;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController36;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController36Validator;
  List<InventarioProdutosRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController37;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController37Validator;
  List<InventarioProdutosRecord> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController38;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController38Validator;
  List<InventarioProdutosRecord> simpleSearchResults3 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TextField widget.
  final textFieldKey4 = GlobalKey();
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController39;
  String? textFieldSelectedOption4;
  String? Function(BuildContext, String?)? textController39Validator;
  List<InventarioProdutosRecord> simpleSearchResults4 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for TextField widget.
  final textFieldKey5 = GlobalKey();
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController40;
  String? textFieldSelectedOption5;
  String? Function(BuildContext, String?)? textController40Validator;
  List<InventarioProdutosRecord> simpleSearchResults5 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // Model for folder component.
  late FolderModel folderModel2;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue;
  FormFieldController<String>? categpriaAcademicoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController41;
  String? Function(BuildContext, String?)? textController41Validator;
  List<InventarioLoja1Record> simpleSearchResults6 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<InventarioLoja1Record>();
  // Model for folder component.
  late FolderModel folderModel3;
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
  final paginatedDataTableController7 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // Model for folder component.
  late FolderModel folderModel4;
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

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController8 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // Model for folder component.
  late FolderModel folderModel5;

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    folderModel1 = createModel(context, () => FolderModel());
    folderModel2 = createModel(context, () => FolderModel());
    folderModel3 = createModel(context, () => FolderModel());
    nomeCategoriaTextController1Validator =
        _nomeCategoriaTextController1Validator;
    folderModel4 = createModel(context, () => FolderModel());
    nomeCategoriaTextController2Validator =
        _nomeCategoriaTextController2Validator;
    folderModel5 = createModel(context, () => FolderModel());
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    campoDataNascimenFocusNode1?.dispose();
    campoDataNascimenTextController1?.dispose();

    nomeAlunoFocusNode1?.dispose();
    nomeAlunoTextController1?.dispose();

    acadOratioperAlunoFocusNode?.dispose();
    acadOratioperAlunoTextController?.dispose();

    nomeAlunoFocusNode2?.dispose();
    nomeAlunoTextController2?.dispose();

    sobreAlunoFocusNode?.dispose();
    sobreAlunoTextController?.dispose();

    campoDataNascimenFocusNode2?.dispose();
    campoDataNascimenTextController2?.dispose();

    acadIdiomaAlunoFocusNode?.dispose();
    acadIdiomaAlunoTextController?.dispose();

    acadTelMovelAlunoFocusNode?.dispose();
    acadTelMovelAlunoTextController?.dispose();

    acadEmailAlunoFocusNode?.dispose();
    acadEmailAlunoTextController?.dispose();

    acadEndAlunoFocusNode1?.dispose();
    acadEndAlunoTextController1?.dispose();

    acadEndAlunoFocusNode2?.dispose();
    acadEndAlunoTextController2?.dispose();

    acadEndAlunoFocusNode3?.dispose();
    acadEndAlunoTextController3?.dispose();

    acadEndAlunoFocusNode4?.dispose();
    acadEndAlunoTextController4?.dispose();

    acadEndAlunoFocusNode5?.dispose();
    acadEndAlunoTextController5?.dispose();

    acadEndAlunoFocusNode6?.dispose();
    acadEndAlunoTextController6?.dispose();

    acadEndAlunoFocusNode7?.dispose();
    acadEndAlunoTextController7?.dispose();

    acadEndAlunoFocusNode8?.dispose();
    acadEndAlunoTextController8?.dispose();

    acadEndAlunoFocusNode9?.dispose();
    acadEndAlunoTextController9?.dispose();

    acadEndAlunoFocusNode10?.dispose();
    acadEndAlunoTextController10?.dispose();

    acadEndAlunoFocusNode11?.dispose();
    acadEndAlunoTextController11?.dispose();

    acadEndAlunoFocusNode12?.dispose();
    acadEndAlunoTextController12?.dispose();

    acadEndAlunoFocusNode13?.dispose();
    acadEndAlunoTextController13?.dispose();

    acadEndAlunoFocusNode14?.dispose();
    acadEndAlunoTextController14?.dispose();

    userLoginNomeFocusNode1?.dispose();
    userLoginNomeTextController1?.dispose();

    userLoginSenhaFocusNode1?.dispose();
    userLoginSenhaTextController1?.dispose();

    userLoginRedifinirSenhaFocusNode1?.dispose();
    userLoginRedifinirSenhaTextController1?.dispose();

    userLoginNomeFocusNode2?.dispose();
    userLoginNomeTextController2?.dispose();

    userLoginSenhaFocusNode2?.dispose();
    userLoginSenhaTextController2?.dispose();

    userLoginRedifinirSenhaFocusNode2?.dispose();
    userLoginRedifinirSenhaTextController2?.dispose();

    escAnteriorNomeFocusNode?.dispose();
    escAnteriorNomeTextController?.dispose();

    escAnteriorQualificacaoFocusNode1?.dispose();
    escAnteriorQualificacaoTextController1?.dispose();

    escAnteriorQualificacaoFocusNode2?.dispose();
    escAnteriorQualificacaoTextController2?.dispose();

    escAnteriorObservacaoFocusNode1?.dispose();
    escAnteriorObservacaoTextController1?.dispose();

    escAnteriorObservacaoFocusNode2?.dispose();
    escAnteriorObservacaoTextController2?.dispose();

    escAnteriorObservacaoFocusNode3?.dispose();
    escAnteriorObservacaoTextController3?.dispose();

    folderModel1.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController1.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController2.dispose();
    textFieldFocusNode3?.dispose();

    paginatedDataTableController3.dispose();
    textFieldFocusNode4?.dispose();

    paginatedDataTableController4.dispose();
    textFieldFocusNode5?.dispose();

    paginatedDataTableController5.dispose();
    folderModel2.dispose();
    textFieldFocusNode6?.dispose();
    textController41?.dispose();

    paginatedDataTableController6.dispose();
    folderModel3.dispose();
    nomeCategoriaFocusNode1?.dispose();
    nomeCategoriaTextController1?.dispose();

    paginatedDataTableController7.dispose();
    folderModel4.dispose();
    nomeCategoriaFocusNode2?.dispose();
    nomeCategoriaTextController2?.dispose();

    paginatedDataTableController8.dispose();
    folderModel5.dispose();
  }
}
