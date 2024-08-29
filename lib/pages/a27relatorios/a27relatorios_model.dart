import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a27relatorios_widget.dart' show A27relatoriosWidget;
import 'package:flutter/material.dart';

class A27relatoriosModel extends FlutterFlowModel<A27relatoriosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue1;
  FormFieldController<String>? calssAcademicoValueController1;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue1;
  FormFieldController<String>? secaoAcademicoValueController1;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue1;
  FormFieldController<String>? categpriaAcademicoValueController1;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue2;
  FormFieldController<String>? calssAcademicoValueController2;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue2;
  FormFieldController<String>? secaoAcademicoValueController2;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue2;
  FormFieldController<String>? categpriaAcademicoValueController2;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode1;
  TextEditingController? nomeProdutoTextController1;
  String? Function(BuildContext, String?)? nomeProdutoTextController1Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue3;
  FormFieldController<String>? calssAcademicoValueController3;
  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue4;
  FormFieldController<String>? calssAcademicoValueController4;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue3;
  FormFieldController<String>? secaoAcademicoValueController3;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue3;
  FormFieldController<String>? categpriaAcademicoValueController3;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue5;
  FormFieldController<String>? calssAcademicoValueController5;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue4;
  FormFieldController<String>? secaoAcademicoValueController4;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode2;
  TextEditingController? nomeProdutoTextController2;
  String? Function(BuildContext, String?)? nomeProdutoTextController2Validator;
  // State field(s) for TextField widget.
  final textFieldKey4 = GlobalKey();
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? textFieldSelectedOption4;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue6;
  FormFieldController<String>? calssAcademicoValueController6;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue5;
  FormFieldController<String>? secaoAcademicoValueController5;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue4;
  FormFieldController<String>? categpriaAcademicoValueController4;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode3;
  TextEditingController? nomeProdutoTextController3;
  String? Function(BuildContext, String?)? nomeProdutoTextController3Validator;
  // State field(s) for TextField widget.
  final textFieldKey5 = GlobalKey();
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  String? textFieldSelectedOption5;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue7;
  FormFieldController<String>? calssAcademicoValueController7;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue6;
  FormFieldController<String>? secaoAcademicoValueController6;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue5;
  FormFieldController<String>? categpriaAcademicoValueController5;
  // State field(s) for TextField widget.
  final textFieldKey6 = GlobalKey();
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController9;
  String? textFieldSelectedOption6;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue8;
  FormFieldController<String>? calssAcademicoValueController8;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue7;
  FormFieldController<String>? secaoAcademicoValueController7;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue6;
  FormFieldController<String>? categpriaAcademicoValueController6;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode4;
  TextEditingController? nomeProdutoTextController4;
  String? Function(BuildContext, String?)? nomeProdutoTextController4Validator;
  // State field(s) for TextField widget.
  final textFieldKey7 = GlobalKey();
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController11;
  String? textFieldSelectedOption7;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController7 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue9;
  FormFieldController<String>? calssAcademicoValueController9;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue8;
  FormFieldController<String>? secaoAcademicoValueController8;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue7;
  FormFieldController<String>? categpriaAcademicoValueController7;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode5;
  TextEditingController? nomeProdutoTextController5;
  String? Function(BuildContext, String?)? nomeProdutoTextController5Validator;
  // State field(s) for TextField widget.
  final textFieldKey8 = GlobalKey();
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController13;
  String? textFieldSelectedOption8;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController8 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue10;
  FormFieldController<String>? calssAcademicoValueController10;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode6;
  TextEditingController? nomeProdutoTextController6;
  String? Function(BuildContext, String?)? nomeProdutoTextController6Validator;
  // State field(s) for TextField widget.
  final textFieldKey9 = GlobalKey();
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController15;
  String? textFieldSelectedOption9;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController9 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue11;
  FormFieldController<String>? calssAcademicoValueController11;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode7;
  TextEditingController? nomeProdutoTextController7;
  String? Function(BuildContext, String?)? nomeProdutoTextController7Validator;
  // State field(s) for TextField widget.
  final textFieldKey10 = GlobalKey();
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController17;
  String? textFieldSelectedOption10;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController10 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue12;
  FormFieldController<String>? calssAcademicoValueController12;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode8;
  TextEditingController? nomeProdutoTextController8;
  String? Function(BuildContext, String?)? nomeProdutoTextController8Validator;
  // State field(s) for TextField widget.
  final textFieldKey11 = GlobalKey();
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController19;
  String? textFieldSelectedOption11;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController11 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue13;
  FormFieldController<String>? calssAcademicoValueController13;
  // State field(s) for TextField widget.
  final textFieldKey12 = GlobalKey();
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController20;
  String? textFieldSelectedOption12;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController12 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue14;
  FormFieldController<String>? calssAcademicoValueController14;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode9;
  TextEditingController? nomeProdutoTextController9;
  String? Function(BuildContext, String?)? nomeProdutoTextController9Validator;
  // State field(s) for TextField widget.
  final textFieldKey13 = GlobalKey();
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController22;
  String? textFieldSelectedOption13;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController13 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue15;
  FormFieldController<String>? calssAcademicoValueController15;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue9;
  FormFieldController<String>? secaoAcademicoValueController9;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue8;
  FormFieldController<String>? categpriaAcademicoValueController8;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode10;
  TextEditingController? nomeProdutoTextController10;
  String? Function(BuildContext, String?)? nomeProdutoTextController10Validator;
  // State field(s) for TextField widget.
  final textFieldKey14 = GlobalKey();
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController24;
  String? textFieldSelectedOption14;
  String? Function(BuildContext, String?)? textController24Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController14 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue16;
  FormFieldController<String>? calssAcademicoValueController16;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode11;
  TextEditingController? nomeProdutoTextController11;
  String? Function(BuildContext, String?)? nomeProdutoTextController11Validator;
  // State field(s) for TextField widget.
  final textFieldKey15 = GlobalKey();
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController26;
  String? textFieldSelectedOption15;
  String? Function(BuildContext, String?)? textController26Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController15 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue17;
  FormFieldController<String>? calssAcademicoValueController17;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue10;
  FormFieldController<String>? secaoAcademicoValueController10;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue9;
  FormFieldController<String>? categpriaAcademicoValueController9;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue10;
  FormFieldController<String>? categpriaAcademicoValueController10;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode12;
  TextEditingController? nomeProdutoTextController12;
  String? Function(BuildContext, String?)? nomeProdutoTextController12Validator;
  // State field(s) for TextField widget.
  final textFieldKey16 = GlobalKey();
  FocusNode? textFieldFocusNode16;
  TextEditingController? textController28;
  String? textFieldSelectedOption16;
  String? Function(BuildContext, String?)? textController28Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController16 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue18;
  FormFieldController<String>? calssAcademicoValueController18;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue11;
  FormFieldController<String>? secaoAcademicoValueController11;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue11;
  FormFieldController<String>? categpriaAcademicoValueController11;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue12;
  FormFieldController<String>? categpriaAcademicoValueController12;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode13;
  TextEditingController? nomeProdutoTextController13;
  String? Function(BuildContext, String?)? nomeProdutoTextController13Validator;
  // State field(s) for TextField widget.
  final textFieldKey17 = GlobalKey();
  FocusNode? textFieldFocusNode17;
  TextEditingController? textController30;
  String? textFieldSelectedOption17;
  String? Function(BuildContext, String?)? textController30Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController17 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue19;
  FormFieldController<String>? calssAcademicoValueController19;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue13;
  FormFieldController<String>? categpriaAcademicoValueController13;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode14;
  TextEditingController? nomeProdutoTextController14;
  String? Function(BuildContext, String?)? nomeProdutoTextController14Validator;
  // State field(s) for TextField widget.
  final textFieldKey18 = GlobalKey();
  FocusNode? textFieldFocusNode18;
  TextEditingController? textController32;
  String? textFieldSelectedOption18;
  String? Function(BuildContext, String?)? textController32Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController18 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue20;
  FormFieldController<String>? calssAcademicoValueController20;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue12;
  FormFieldController<String>? secaoAcademicoValueController12;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue14;
  FormFieldController<String>? categpriaAcademicoValueController14;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue15;
  FormFieldController<String>? categpriaAcademicoValueController15;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue21;
  FormFieldController<String>? calssAcademicoValueController21;
  // State field(s) for TextField widget.
  final textFieldKey19 = GlobalKey();
  FocusNode? textFieldFocusNode19;
  TextEditingController? textController33;
  String? textFieldSelectedOption19;
  String? Function(BuildContext, String?)? textController33Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController19 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue22;
  FormFieldController<String>? calssAcademicoValueController22;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode15;
  TextEditingController? nomeProdutoTextController15;
  String? Function(BuildContext, String?)? nomeProdutoTextController15Validator;
  // State field(s) for TextField widget.
  final textFieldKey20 = GlobalKey();
  FocusNode? textFieldFocusNode20;
  TextEditingController? textController35;
  String? textFieldSelectedOption20;
  String? Function(BuildContext, String?)? textController35Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController20 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue23;
  FormFieldController<String>? calssAcademicoValueController23;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue13;
  FormFieldController<String>? secaoAcademicoValueController13;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode16;
  TextEditingController? nomeProdutoTextController16;
  String? Function(BuildContext, String?)? nomeProdutoTextController16Validator;
  // State field(s) for TextField widget.
  final textFieldKey21 = GlobalKey();
  FocusNode? textFieldFocusNode21;
  TextEditingController? textController37;
  String? textFieldSelectedOption21;
  String? Function(BuildContext, String?)? textController37Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController21 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue24;
  FormFieldController<String>? calssAcademicoValueController24;
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue25;
  FormFieldController<String>? calssAcademicoValueController25;
  // State field(s) for TextField widget.
  final textFieldKey22 = GlobalKey();
  FocusNode? textFieldFocusNode22;
  TextEditingController? textController38;
  String? textFieldSelectedOption22;
  String? Function(BuildContext, String?)? textController38Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController22 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue26;
  FormFieldController<String>? calssAcademicoValueController26;
  // State field(s) for secaoAcademico widget.
  String? secaoAcademicoValue14;
  FormFieldController<String>? secaoAcademicoValueController14;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue16;
  FormFieldController<String>? categpriaAcademicoValueController16;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode17;
  TextEditingController? nomeProdutoTextController17;
  String? Function(BuildContext, String?)? nomeProdutoTextController17Validator;
  // State field(s) for TextField widget.
  final textFieldKey23 = GlobalKey();
  FocusNode? textFieldFocusNode23;
  TextEditingController? textController40;
  String? textFieldSelectedOption23;
  String? Function(BuildContext, String?)? textController40Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController23 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue27;
  FormFieldController<String>? calssAcademicoValueController27;
  // State field(s) for categpriaAcademico widget.
  String? categpriaAcademicoValue17;
  FormFieldController<String>? categpriaAcademicoValueController17;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode18;
  TextEditingController? nomeProdutoTextController18;
  String? Function(BuildContext, String?)? nomeProdutoTextController18Validator;
  // State field(s) for TextField widget.
  final textFieldKey24 = GlobalKey();
  FocusNode? textFieldFocusNode24;
  TextEditingController? textController42;
  String? textFieldSelectedOption24;
  String? Function(BuildContext, String?)? textController42Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController24 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for calssAcademico widget.
  String? calssAcademicoValue28;
  FormFieldController<String>? calssAcademicoValueController28;
  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode19;
  TextEditingController? nomeProdutoTextController19;
  String? Function(BuildContext, String?)? nomeProdutoTextController19Validator;
  // State field(s) for TextField widget.
  final textFieldKey25 = GlobalKey();
  FocusNode? textFieldFocusNode25;
  TextEditingController? textController44;
  String? textFieldSelectedOption25;
  String? Function(BuildContext, String?)? textController44Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController25 =
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
    textFieldFocusNode1?.dispose();

    paginatedDataTableController1.dispose();
    nomeProdutoFocusNode1?.dispose();
    nomeProdutoTextController1?.dispose();

    textFieldFocusNode2?.dispose();

    paginatedDataTableController2.dispose();
    textFieldFocusNode3?.dispose();

    paginatedDataTableController3.dispose();
    nomeProdutoFocusNode2?.dispose();
    nomeProdutoTextController2?.dispose();

    textFieldFocusNode4?.dispose();

    paginatedDataTableController4.dispose();
    nomeProdutoFocusNode3?.dispose();
    nomeProdutoTextController3?.dispose();

    textFieldFocusNode5?.dispose();

    paginatedDataTableController5.dispose();
    textFieldFocusNode6?.dispose();

    paginatedDataTableController6.dispose();
    nomeProdutoFocusNode4?.dispose();
    nomeProdutoTextController4?.dispose();

    textFieldFocusNode7?.dispose();

    paginatedDataTableController7.dispose();
    nomeProdutoFocusNode5?.dispose();
    nomeProdutoTextController5?.dispose();

    textFieldFocusNode8?.dispose();

    paginatedDataTableController8.dispose();
    nomeProdutoFocusNode6?.dispose();
    nomeProdutoTextController6?.dispose();

    textFieldFocusNode9?.dispose();

    paginatedDataTableController9.dispose();
    nomeProdutoFocusNode7?.dispose();
    nomeProdutoTextController7?.dispose();

    textFieldFocusNode10?.dispose();

    paginatedDataTableController10.dispose();
    nomeProdutoFocusNode8?.dispose();
    nomeProdutoTextController8?.dispose();

    textFieldFocusNode11?.dispose();

    paginatedDataTableController11.dispose();
    textFieldFocusNode12?.dispose();

    paginatedDataTableController12.dispose();
    nomeProdutoFocusNode9?.dispose();
    nomeProdutoTextController9?.dispose();

    textFieldFocusNode13?.dispose();

    paginatedDataTableController13.dispose();
    nomeProdutoFocusNode10?.dispose();
    nomeProdutoTextController10?.dispose();

    textFieldFocusNode14?.dispose();

    paginatedDataTableController14.dispose();
    nomeProdutoFocusNode11?.dispose();
    nomeProdutoTextController11?.dispose();

    textFieldFocusNode15?.dispose();

    paginatedDataTableController15.dispose();
    nomeProdutoFocusNode12?.dispose();
    nomeProdutoTextController12?.dispose();

    textFieldFocusNode16?.dispose();

    paginatedDataTableController16.dispose();
    nomeProdutoFocusNode13?.dispose();
    nomeProdutoTextController13?.dispose();

    textFieldFocusNode17?.dispose();

    paginatedDataTableController17.dispose();
    nomeProdutoFocusNode14?.dispose();
    nomeProdutoTextController14?.dispose();

    textFieldFocusNode18?.dispose();

    paginatedDataTableController18.dispose();
    textFieldFocusNode19?.dispose();

    paginatedDataTableController19.dispose();
    nomeProdutoFocusNode15?.dispose();
    nomeProdutoTextController15?.dispose();

    textFieldFocusNode20?.dispose();

    paginatedDataTableController20.dispose();
    nomeProdutoFocusNode16?.dispose();
    nomeProdutoTextController16?.dispose();

    textFieldFocusNode21?.dispose();

    paginatedDataTableController21.dispose();
    textFieldFocusNode22?.dispose();

    paginatedDataTableController22.dispose();
    nomeProdutoFocusNode17?.dispose();
    nomeProdutoTextController17?.dispose();

    textFieldFocusNode23?.dispose();

    paginatedDataTableController23.dispose();
    nomeProdutoFocusNode18?.dispose();
    nomeProdutoTextController18?.dispose();

    textFieldFocusNode24?.dispose();

    paginatedDataTableController24.dispose();
    nomeProdutoFocusNode19?.dispose();
    nomeProdutoTextController19?.dispose();

    textFieldFocusNode25?.dispose();

    paginatedDataTableController25.dispose();
  }
}
