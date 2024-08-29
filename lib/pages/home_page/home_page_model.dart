import '/components/folder_widget.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // Model for folder component.
  late FolderModel folderModel1;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode1;
  TextEditingController? nomeTextController1;
  String? Function(BuildContext, String?)? nomeTextController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode3;
  TextEditingController? nomeTextController3;
  String? Function(BuildContext, String?)? nomeTextController3Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<String>();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Model for folder component.
  late FolderModel folderModel2;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode4;
  TextEditingController? nomeTextController4;
  String? Function(BuildContext, String?)? nomeTextController4Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode5;
  TextEditingController? nomeTextController5;
  String? Function(BuildContext, String?)? nomeTextController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<String>();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay3;
  // Model for folder component.
  late FolderModel folderModel3;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay4;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode6;
  TextEditingController? nomeTextController6;
  String? Function(BuildContext, String?)? nomeTextController6Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode7;
  TextEditingController? nomeTextController7;
  String? Function(BuildContext, String?)? nomeTextController7Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode8;
  TextEditingController? nomeTextController8;
  String? Function(BuildContext, String?)? nomeTextController8Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<String>();
  // Model for folder component.
  late FolderModel folderModel4;

  @override
  void initState(BuildContext context) {
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    folderModel1 = createModel(context, () => FolderModel());
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    folderModel2 = createModel(context, () => FolderModel());
    calendarSelectedDay3 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    folderModel3 = createModel(context, () => FolderModel());
    calendarSelectedDay4 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    folderModel4 = createModel(context, () => FolderModel());
  }

  @override
  void dispose() {
    menuSuperiorCelularModel.dispose();
    menuSuperiorModel.dispose();
    menuLateralModel.dispose();
    folderModel1.dispose();
    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    nomeFocusNode3?.dispose();
    nomeTextController3?.dispose();

    paginatedDataTableController1.dispose();
    folderModel2.dispose();
    nomeFocusNode4?.dispose();
    nomeTextController4?.dispose();

    nomeFocusNode5?.dispose();
    nomeTextController5?.dispose();

    paginatedDataTableController2.dispose();
    folderModel3.dispose();
    nomeFocusNode6?.dispose();
    nomeTextController6?.dispose();

    nomeFocusNode7?.dispose();
    nomeTextController7?.dispose();

    nomeFocusNode8?.dispose();
    nomeTextController8?.dispose();

    paginatedDataTableController3.dispose();
    folderModel4.dispose();
  }
}
