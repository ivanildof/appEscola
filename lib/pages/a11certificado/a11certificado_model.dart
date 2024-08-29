import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a11certificado_widget.dart' show A11certificadoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class A11certificadoModel extends FlutterFlowModel<A11certificadoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
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
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textController1Validator;
  List<InventarioProdutosRecord> simpleSearchResults = [];
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
  // State field(s) for produtoscategori widget.
  String? produtoscategoriValue;
  FormFieldController<String>? produtoscategoriValueController;
  // State field(s) for layoutLargura widget.
  FocusNode? layoutLarguraFocusNode1;
  TextEditingController? layoutLarguraTextController1;
  String? Function(BuildContext, String?)?
      layoutLarguraTextController1Validator;
  // State field(s) for layoutAltura widget.
  FocusNode? layoutAlturaFocusNode1;
  TextEditingController? layoutAlturaTextController1;
  String? Function(BuildContext, String?)? layoutAlturaTextController1Validator;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TamnhoFoto widget.
  FocusNode? tamnhoFotoFocusNode;
  TextEditingController? tamnhoFotoTextController;
  String? Function(BuildContext, String?)? tamnhoFotoTextControllerValidator;
  // State field(s) for layoutLargura widget.
  FocusNode? layoutLarguraFocusNode2;
  TextEditingController? layoutLarguraTextController2;
  String? Function(BuildContext, String?)?
      layoutLarguraTextController2Validator;
  // State field(s) for layoutAltura widget.
  FocusNode? layoutAlturaFocusNode2;
  TextEditingController? layoutAlturaTextController2;
  String? Function(BuildContext, String?)? layoutAlturaTextController2Validator;
  // State field(s) for layoutLargura widget.
  FocusNode? layoutLarguraFocusNode3;
  TextEditingController? layoutLarguraTextController3;
  String? Function(BuildContext, String?)?
      layoutLarguraTextController3Validator;
  // State field(s) for layoutAltura widget.
  FocusNode? layoutAlturaFocusNode3;
  TextEditingController? layoutAlturaTextController3;
  String? Function(BuildContext, String?)? layoutAlturaTextController3Validator;
  // State field(s) for AssinatiraIMGcartoes widget.
  FocusNode? assinatiraIMGcartoesFocusNode;
  TextEditingController? assinatiraIMGcartoesTextController;
  final assinatiraIMGcartoesMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      assinatiraIMGcartoesTextControllerValidator;
  // State field(s) for LogoIMGcartoes widget.
  FocusNode? logoIMGcartoesFocusNode;
  TextEditingController? logoIMGcartoesTextController;
  final logoIMGcartoesMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      logoIMGcartoesTextControllerValidator;
  // State field(s) for FundoIMGcartoes widget.
  FocusNode? fundoIMGcartoesFocusNode;
  TextEditingController? fundoIMGcartoesTextController;
  final fundoIMGcartoesMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      fundoIMGcartoesTextControllerValidator;
  // State field(s) for conteudoCertificado widget.
  FocusNode? conteudoCertificadoFocusNode;
  TextEditingController? conteudoCertificadoTextController;
  String? Function(BuildContext, String?)?
      conteudoCertificadoTextControllerValidator;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue1;
  FormFieldController<String>? secaoAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue;
  FormFieldController<String>? categpriaAcademicoValueController;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode1;
  TextEditingController? acadTelMovelAlunoTextController1;
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue3;
  FormFieldController<String>? secaoAcademicoValueController3;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue4;
  FormFieldController<String>? secaoAcademicoValueController4;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode2;
  TextEditingController? acadTelMovelAlunoTextController2;
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
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
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();

    paginatedDataTableController1.dispose();
    nomeProdutoFocusNode?.dispose();
    nomeProdutoTextController?.dispose();

    layoutLarguraFocusNode1?.dispose();
    layoutLarguraTextController1?.dispose();

    layoutAlturaFocusNode1?.dispose();
    layoutAlturaTextController1?.dispose();

    tamnhoFotoFocusNode?.dispose();
    tamnhoFotoTextController?.dispose();

    layoutLarguraFocusNode2?.dispose();
    layoutLarguraTextController2?.dispose();

    layoutAlturaFocusNode2?.dispose();
    layoutAlturaTextController2?.dispose();

    layoutLarguraFocusNode3?.dispose();
    layoutLarguraTextController3?.dispose();

    layoutAlturaFocusNode3?.dispose();
    layoutAlturaTextController3?.dispose();

    assinatiraIMGcartoesFocusNode?.dispose();
    assinatiraIMGcartoesTextController?.dispose();

    logoIMGcartoesFocusNode?.dispose();
    logoIMGcartoesTextController?.dispose();

    fundoIMGcartoesFocusNode?.dispose();
    fundoIMGcartoesTextController?.dispose();

    conteudoCertificadoFocusNode?.dispose();
    conteudoCertificadoTextController?.dispose();

    acadTelMovelAlunoFocusNode1?.dispose();
    acadTelMovelAlunoTextController1?.dispose();

    paginatedDataTableController2.dispose();
    acadTelMovelAlunoFocusNode2?.dispose();
    acadTelMovelAlunoTextController2?.dispose();

    paginatedDataTableController3.dispose();
  }
}
