import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'a01escola_widget.dart' show A01escolaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A01escolaModel extends FlutterFlowModel<A01escolaWidget> {
  ///  Local state fields for this page.

  bool cepOption = false;

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
  List<FilialRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FilialRecord>();
  // State field(s) for dropfilial widget.
  String? dropfilialValue;
  FormFieldController<String>? dropfilialValueController;
  // State field(s) for tcodigoescola widget.
  FocusNode? tcodigoescolaFocusNode;
  TextEditingController? tcodigoescolaTextController;
  String? Function(BuildContext, String?)? tcodigoescolaTextControllerValidator;
  // State field(s) for tregiaoadminis widget.
  FocusNode? tregiaoadminisFocusNode;
  TextEditingController? tregiaoadminisTextController;
  String? Function(BuildContext, String?)?
      tregiaoadminisTextControllerValidator;
  // State field(s) for Dropfuncionamento widget.
  String? dropfuncionamentoValue;
  FormFieldController<String>? dropfuncionamentoValueController;
  // State field(s) for tnomeescola widget.
  FocusNode? tnomeescolaFocusNode;
  TextEditingController? tnomeescolaTextController;
  String? Function(BuildContext, String?)? tnomeescolaTextControllerValidator;
  // State field(s) for tcodigoinep widget.
  FocusNode? tcodigoinepFocusNode;
  TextEditingController? tcodigoinepTextController;
  String? Function(BuildContext, String?)? tcodigoinepTextControllerValidator;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode;
  TextEditingController? acadTelMovelAlunoTextController;
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextControllerValidator;
  // State field(s) for acadEmailAluno widget.
  FocusNode? acadEmailAlunoFocusNode;
  TextEditingController? acadEmailAlunoTextController;
  String? Function(BuildContext, String?)?
      acadEmailAlunoTextControllerValidator;
  // State field(s) for DropDownItinerarios widget.
  String? dropDownItinerariosValue;
  FormFieldController<String>? dropDownItinerariosValueController;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode1;
  TextEditingController? acadEndAlunoTextController1;
  String? Function(BuildContext, String?)? acadEndAlunoTextController1Validator;
  // State field(s) for acadOratioperAluno widget.
  FocusNode? acadOratioperAlunoFocusNode1;
  TextEditingController? acadOratioperAlunoTextController1;
  String? Function(BuildContext, String?)?
      acadOratioperAlunoTextController1Validator;
  // State field(s) for acadOratioperAluno widget.
  FocusNode? acadOratioperAlunoFocusNode2;
  TextEditingController? acadOratioperAlunoTextController2;
  String? Function(BuildContext, String?)?
      acadOratioperAlunoTextController2Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode2;
  TextEditingController? acadEndAlunoTextController2;
  String? Function(BuildContext, String?)? acadEndAlunoTextController2Validator;
  // State field(s) for acadOratioperAluno widget.
  FocusNode? acadOratioperAlunoFocusNode3;
  TextEditingController? acadOratioperAlunoTextController3;
  String? Function(BuildContext, String?)?
      acadOratioperAlunoTextController3Validator;
  // State field(s) for acadOratioperAluno widget.
  FocusNode? acadOratioperAlunoFocusNode4;
  TextEditingController? acadOratioperAlunoTextController4;
  String? Function(BuildContext, String?)?
      acadOratioperAlunoTextController4Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode3;
  TextEditingController? acadEndAlunoTextController3;
  String? Function(BuildContext, String?)? acadEndAlunoTextController3Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode4;
  TextEditingController? acadEndAlunoTextController4;
  String? Function(BuildContext, String?)? acadEndAlunoTextController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;

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

    paginatedDataTableController.dispose();
    tcodigoescolaFocusNode?.dispose();
    tcodigoescolaTextController?.dispose();

    tregiaoadminisFocusNode?.dispose();
    tregiaoadminisTextController?.dispose();

    tnomeescolaFocusNode?.dispose();
    tnomeescolaTextController?.dispose();

    tcodigoinepFocusNode?.dispose();
    tcodigoinepTextController?.dispose();

    acadTelMovelAlunoFocusNode?.dispose();
    acadTelMovelAlunoTextController?.dispose();

    acadEmailAlunoFocusNode?.dispose();
    acadEmailAlunoTextController?.dispose();

    acadEndAlunoFocusNode1?.dispose();
    acadEndAlunoTextController1?.dispose();

    acadOratioperAlunoFocusNode1?.dispose();
    acadOratioperAlunoTextController1?.dispose();

    acadOratioperAlunoFocusNode2?.dispose();
    acadOratioperAlunoTextController2?.dispose();

    acadEndAlunoFocusNode2?.dispose();
    acadEndAlunoTextController2?.dispose();

    acadOratioperAlunoFocusNode3?.dispose();
    acadOratioperAlunoTextController3?.dispose();

    acadOratioperAlunoFocusNode4?.dispose();
    acadOratioperAlunoTextController4?.dispose();

    acadEndAlunoFocusNode3?.dispose();
    acadEndAlunoTextController3?.dispose();

    acadEndAlunoFocusNode4?.dispose();
    acadEndAlunoTextController4?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
