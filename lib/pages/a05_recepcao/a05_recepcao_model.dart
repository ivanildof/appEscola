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
import 'a05_recepcao_widget.dart' show A05RecepcaoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A05RecepcaoModel extends FlutterFlowModel<A05RecepcaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey8 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
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
  // State field(s) for filialAdmissao widget.
  String? filialAdmissaoValue;
  FormFieldController<String>? filialAdmissaoValueController;
  // State field(s) for nomeAdmissao widget.
  FocusNode? nomeAdmissaoFocusNode;
  TextEditingController? nomeAdmissaoTextController;
  String? Function(BuildContext, String?)? nomeAdmissaoTextControllerValidator;
  String? _nomeAdmissaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for generoAdmissao widget.
  String? generoAdmissaoValue;
  FormFieldController<String>? generoAdmissaoValueController;
  DateTime? datePicked1;
  // State field(s) for escolaAnteriorAdmissao widget.
  FocusNode? escolaAnteriorAdmissaoFocusNode;
  TextEditingController? escolaAnteriorAdmissaoTextController;
  String? Function(BuildContext, String?)?
      escolaAnteriorAdmissaoTextControllerValidator;
  String? _escolaAnteriorAdmissaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for nomePaiAdmissao widget.
  FocusNode? nomePaiAdmissaoFocusNode;
  TextEditingController? nomePaiAdmissaoTextController;
  String? Function(BuildContext, String?)?
      nomePaiAdmissaoTextControllerValidator;
  String? _nomePaiAdmissaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for nomeMaeAdmissao widget.
  FocusNode? nomeMaeAdmissaoFocusNode;
  TextEditingController? nomeMaeAdmissaoTextController;
  String? Function(BuildContext, String?)?
      nomeMaeAdmissaoTextControllerValidator;
  String? _nomeMaeAdmissaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telefoneAdmissao widget.
  FocusNode? telefoneAdmissaoFocusNode;
  TextEditingController? telefoneAdmissaoTextController;
  String? Function(BuildContext, String?)?
      telefoneAdmissaoTextControllerValidator;
  // State field(s) for emailAdmissao widget.
  FocusNode? emailAdmissaoFocusNode;
  TextEditingController? emailAdmissaoTextController;
  String? Function(BuildContext, String?)? emailAdmissaoTextControllerValidator;
  // State field(s) for enderecoAdmissao widget.
  FocusNode? enderecoAdmissaoFocusNode;
  TextEditingController? enderecoAdmissaoTextController;
  String? Function(BuildContext, String?)?
      enderecoAdmissaoTextControllerValidator;
  // State field(s) for precoVenda widget.
  FocusNode? precoVendaFocusNode;
  TextEditingController? precoVendaTextController;
  String? Function(BuildContext, String?)? precoVendaTextControllerValidator;
  // State field(s) for atribuidoAdmissao widget.
  String? atribuidoAdmissaoValue;
  FormFieldController<String>? atribuidoAdmissaoValueController;
  // State field(s) for referenciaAdmissao widget.
  String? referenciaAdmissaoValue;
  FormFieldController<String>? referenciaAdmissaoValueController;
  // State field(s) for respostaAdmissao widget.
  String? respostaAdmissaoValue;
  FormFieldController<String>? respostaAdmissaoValueController;
  // State field(s) for respostaTextoAdmissao widget.
  FocusNode? respostaTextoAdmissaoFocusNode;
  TextEditingController? respostaTextoAdmissaoTextController;
  String? Function(BuildContext, String?)?
      respostaTextoAdmissaoTextControllerValidator;
  // State field(s) for notaAdmissao widget.
  FocusNode? notaAdmissaoFocusNode;
  TextEditingController? notaAdmissaoTextController;
  String? Function(BuildContext, String?)? notaAdmissaoTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for classeInscricaoAdmissao widget.
  String? classeInscricaoAdmissaoValue;
  FormFieldController<String>? classeInscricaoAdmissaoValueController;
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
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filialPostal widget.
  String? filialPostalValue;
  FormFieldController<String>? filialPostalValueController;
  // State field(s) for tipoPostal widget.
  String? tipoPostalValue;
  FormFieldController<String>? tipoPostalValueController;
  // State field(s) for NReferenciaPostal widget.
  FocusNode? nReferenciaPostalFocusNode;
  TextEditingController? nReferenciaPostalTextController;
  String? Function(BuildContext, String?)?
      nReferenciaPostalTextControllerValidator;
  String? _nReferenciaPostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for remetentePostal widget.
  FocusNode? remetentePostalFocusNode;
  TextEditingController? remetentePostalTextController;
  String? Function(BuildContext, String?)?
      remetentePostalTextControllerValidator;
  String? _remetentePostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for recebedorPostal widget.
  FocusNode? recebedorPostalFocusNode;
  TextEditingController? recebedorPostalTextController;
  String? Function(BuildContext, String?)?
      recebedorPostalTextControllerValidator;
  String? _recebedorPostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for enderecoPostal widget.
  FocusNode? enderecoPostalFocusNode;
  TextEditingController? enderecoPostalTextController;
  String? Function(BuildContext, String?)?
      enderecoPostalTextControllerValidator;
  String? _enderecoPostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for notaPostal widget.
  FocusNode? notaPostalFocusNode;
  TextEditingController? notaPostalTextController;
  String? Function(BuildContext, String?)? notaPostalTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for documentoPostal widget.
  FocusNode? documentoPostalFocusNode1;
  TextEditingController? documentoPostalTextController1;
  String? Function(BuildContext, String?)?
      documentoPostalTextController1Validator;
  // State field(s) for confidencialPostal widget.
  bool? confidencialPostalValue;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey3 = GlobalKey();
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController19;
  String? textFieldSelectedOption3;
  String? Function(BuildContext, String?)? textController19Validator;
  List<InventarioProdutosRecord> simpleSearchResults3 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filialChamadas widget.
  String? filialChamadasValue;
  FormFieldController<String>? filialChamadasValueController;
  // State field(s) for tipoChamada widget.
  String? tipoChamadaValue;
  FormFieldController<String>? tipoChamadaValueController;
  // State field(s) for propositoChamadas widget.
  String? propositoChamadasValue;
  FormFieldController<String>? propositoChamadasValueController;
  // State field(s) for nomeChamadas widget.
  FocusNode? nomeChamadasFocusNode;
  TextEditingController? nomeChamadasTextController;
  String? Function(BuildContext, String?)? nomeChamadasTextControllerValidator;
  String? _nomeChamadasTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telefoneChamadas widget.
  FocusNode? telefoneChamadasFocusNode;
  TextEditingController? telefoneChamadasTextController;
  String? Function(BuildContext, String?)?
      telefoneChamadasTextControllerValidator;
  String? _telefoneChamadasTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  DateTime? datePicked4;
  DateTime? datePicked5;
  // State field(s) for notaChamadas widget.
  FocusNode? notaChamadasFocusNode;
  TextEditingController? notaChamadasTextController;
  String? Function(BuildContext, String?)? notaChamadasTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController4;
  int get tabBarCurrentIndex4 =>
      tabBarController4 != null ? tabBarController4!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey4 = GlobalKey();
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController23;
  String? textFieldSelectedOption4;
  String? Function(BuildContext, String?)? textController23Validator;
  List<InventarioProdutosRecord> simpleSearchResults4 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filialVisita widget.
  String? filialVisitaValue1;
  FormFieldController<String>? filialVisitaValueController1;
  // State field(s) for obejtivoVisita widget.
  String? obejtivoVisitaValue1;
  FormFieldController<String>? obejtivoVisitaValueController1;
  // State field(s) for nomeVisita widget.
  FocusNode? nomeVisitaFocusNode1;
  TextEditingController? nomeVisitaTextController1;
  String? Function(BuildContext, String?)? nomeVisitaTextController1Validator;
  String? _nomeVisitaTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telefoneVisita widget.
  FocusNode? telefoneVisitaFocusNode1;
  TextEditingController? telefoneVisitaTextController1;
  String? Function(BuildContext, String?)?
      telefoneVisitaTextController1Validator;
  String? _telefoneVisitaTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  DateTime? datePicked6;
  DateTime? datePicked7;
  DateTime? datePicked8;
  // State field(s) for visitantesNumberVisita widget.
  FocusNode? visitantesNumberVisitaFocusNode;
  TextEditingController? visitantesNumberVisitaTextController;
  String? Function(BuildContext, String?)?
      visitantesNumberVisitaTextControllerValidator;
  // State field(s) for identificacaoVisita widget.
  FocusNode? identificacaoVisitaFocusNode;
  TextEditingController? identificacaoVisitaTextController;
  String? Function(BuildContext, String?)?
      identificacaoVisitaTextControllerValidator;
  // State field(s) for tokenVisita widget.
  FocusNode? tokenVisitaFocusNode;
  TextEditingController? tokenVisitaTextController;
  String? Function(BuildContext, String?)? tokenVisitaTextControllerValidator;
  // State field(s) for notaVisita widget.
  FocusNode? notaVisitaFocusNode1;
  TextEditingController? notaVisitaTextController1;
  String? Function(BuildContext, String?)? notaVisitaTextController1Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController5;
  int get tabBarCurrentIndex5 =>
      tabBarController5 != null ? tabBarController5!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey5 = GlobalKey();
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController30;
  String? textFieldSelectedOption5;
  String? Function(BuildContext, String?)? textController30Validator;
  List<InventarioProdutosRecord> simpleSearchResults5 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<InventarioProdutosRecord>();
  // State field(s) for filialVisita widget.
  String? filialVisitaValue2;
  FormFieldController<String>? filialVisitaValueController2;
  // State field(s) for obejtivoVisita widget.
  String? obejtivoVisitaValue2;
  FormFieldController<String>? obejtivoVisitaValueController2;
  // State field(s) for obejtivoVisita widget.
  String? obejtivoVisitaValue3;
  FormFieldController<String>? obejtivoVisitaValueController3;
  // State field(s) for nomeVisita widget.
  FocusNode? nomeVisitaFocusNode2;
  TextEditingController? nomeVisitaTextController2;
  String? Function(BuildContext, String?)? nomeVisitaTextController2Validator;
  String? _nomeVisitaTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for telefoneVisita widget.
  FocusNode? telefoneVisitaFocusNode2;
  TextEditingController? telefoneVisitaTextController2;
  String? Function(BuildContext, String?)?
      telefoneVisitaTextController2Validator;
  String? _telefoneVisitaTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for notaVisita widget.
  FocusNode? notaVisitaFocusNode2;
  TextEditingController? notaVisitaTextController2;
  String? Function(BuildContext, String?)? notaVisitaTextController2Validator;
  DateTime? datePicked9;
  // State field(s) for documentoPostal widget.
  FocusNode? documentoPostalFocusNode2;
  TextEditingController? documentoPostalTextController2;
  String? Function(BuildContext, String?)?
      documentoPostalTextController2Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController6;
  int get tabBarCurrentIndex6 =>
      tabBarController6 != null ? tabBarController6!.index : 0;

  // State field(s) for filalReferencia widget.
  String? filalReferenciaValue;
  FormFieldController<String>? filalReferenciaValueController;
  // State field(s) for nomeReferencia widget.
  FocusNode? nomeReferenciaFocusNode;
  TextEditingController? nomeReferenciaTextController;
  String? Function(BuildContext, String?)?
      nomeReferenciaTextControllerValidator;
  String? _nomeReferenciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController6 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for filalResposta widget.
  String? filalRespostaValue;
  FormFieldController<String>? filalRespostaValueController;
  // State field(s) for nomeResposta widget.
  FocusNode? nomeRespostaFocusNode;
  TextEditingController? nomeRespostaTextController;
  String? Function(BuildContext, String?)? nomeRespostaTextControllerValidator;
  String? _nomeRespostaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController7 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for filalChamada widget.
  String? filalChamadaValue;
  FormFieldController<String>? filalChamadaValueController;
  // State field(s) for nomeChamada widget.
  FocusNode? nomeChamadaFocusNode;
  TextEditingController? nomeChamadaTextController;
  String? Function(BuildContext, String?)? nomeChamadaTextControllerValidator;
  String? _nomeChamadaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController8 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for filalVisitas widget.
  String? filalVisitasValue;
  FormFieldController<String>? filalVisitasValueController;
  // State field(s) for nomeVisitas widget.
  FocusNode? nomeVisitasFocusNode;
  TextEditingController? nomeVisitasTextController;
  String? Function(BuildContext, String?)? nomeVisitasTextControllerValidator;
  String? _nomeVisitasTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController9 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();
  // State field(s) for filalReclamacao widget.
  String? filalReclamacaoValue;
  FormFieldController<String>? filalReclamacaoValueController;
  // State field(s) for nomeReclamacao widget.
  FocusNode? nomeReclamacaoFocusNode;
  TextEditingController? nomeReclamacaoTextController;
  String? Function(BuildContext, String?)?
      nomeReclamacaoTextControllerValidator;
  String? _nomeReclamacaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController10 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeAdmissaoTextControllerValidator = _nomeAdmissaoTextControllerValidator;
    escolaAnteriorAdmissaoTextControllerValidator =
        _escolaAnteriorAdmissaoTextControllerValidator;
    nomePaiAdmissaoTextControllerValidator =
        _nomePaiAdmissaoTextControllerValidator;
    nomeMaeAdmissaoTextControllerValidator =
        _nomeMaeAdmissaoTextControllerValidator;
    nReferenciaPostalTextControllerValidator =
        _nReferenciaPostalTextControllerValidator;
    remetentePostalTextControllerValidator =
        _remetentePostalTextControllerValidator;
    recebedorPostalTextControllerValidator =
        _recebedorPostalTextControllerValidator;
    enderecoPostalTextControllerValidator =
        _enderecoPostalTextControllerValidator;
    nomeChamadasTextControllerValidator = _nomeChamadasTextControllerValidator;
    telefoneChamadasTextControllerValidator =
        _telefoneChamadasTextControllerValidator;
    nomeVisitaTextController1Validator = _nomeVisitaTextController1Validator;
    telefoneVisitaTextController1Validator =
        _telefoneVisitaTextController1Validator;
    nomeVisitaTextController2Validator = _nomeVisitaTextController2Validator;
    telefoneVisitaTextController2Validator =
        _telefoneVisitaTextController2Validator;
    nomeReferenciaTextControllerValidator =
        _nomeReferenciaTextControllerValidator;
    nomeRespostaTextControllerValidator = _nomeRespostaTextControllerValidator;
    nomeChamadaTextControllerValidator = _nomeChamadaTextControllerValidator;
    nomeVisitasTextControllerValidator = _nomeVisitasTextControllerValidator;
    nomeReclamacaoTextControllerValidator =
        _nomeReclamacaoTextControllerValidator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    tabBarController1?.dispose();
    textFieldFocusNode1?.dispose();

    paginatedDataTableController1.dispose();
    nomeAdmissaoFocusNode?.dispose();
    nomeAdmissaoTextController?.dispose();

    escolaAnteriorAdmissaoFocusNode?.dispose();
    escolaAnteriorAdmissaoTextController?.dispose();

    nomePaiAdmissaoFocusNode?.dispose();
    nomePaiAdmissaoTextController?.dispose();

    nomeMaeAdmissaoFocusNode?.dispose();
    nomeMaeAdmissaoTextController?.dispose();

    telefoneAdmissaoFocusNode?.dispose();
    telefoneAdmissaoTextController?.dispose();

    emailAdmissaoFocusNode?.dispose();
    emailAdmissaoTextController?.dispose();

    enderecoAdmissaoFocusNode?.dispose();
    enderecoAdmissaoTextController?.dispose();

    precoVendaFocusNode?.dispose();
    precoVendaTextController?.dispose();

    respostaTextoAdmissaoFocusNode?.dispose();
    respostaTextoAdmissaoTextController?.dispose();

    notaAdmissaoFocusNode?.dispose();
    notaAdmissaoTextController?.dispose();

    tabBarController2?.dispose();
    textFieldFocusNode2?.dispose();

    paginatedDataTableController2.dispose();
    nReferenciaPostalFocusNode?.dispose();
    nReferenciaPostalTextController?.dispose();

    remetentePostalFocusNode?.dispose();
    remetentePostalTextController?.dispose();

    recebedorPostalFocusNode?.dispose();
    recebedorPostalTextController?.dispose();

    enderecoPostalFocusNode?.dispose();
    enderecoPostalTextController?.dispose();

    notaPostalFocusNode?.dispose();
    notaPostalTextController?.dispose();

    documentoPostalFocusNode1?.dispose();
    documentoPostalTextController1?.dispose();

    tabBarController3?.dispose();
    textFieldFocusNode3?.dispose();

    paginatedDataTableController3.dispose();
    nomeChamadasFocusNode?.dispose();
    nomeChamadasTextController?.dispose();

    telefoneChamadasFocusNode?.dispose();
    telefoneChamadasTextController?.dispose();

    notaChamadasFocusNode?.dispose();
    notaChamadasTextController?.dispose();

    tabBarController4?.dispose();
    textFieldFocusNode4?.dispose();

    paginatedDataTableController4.dispose();
    nomeVisitaFocusNode1?.dispose();
    nomeVisitaTextController1?.dispose();

    telefoneVisitaFocusNode1?.dispose();
    telefoneVisitaTextController1?.dispose();

    visitantesNumberVisitaFocusNode?.dispose();
    visitantesNumberVisitaTextController?.dispose();

    identificacaoVisitaFocusNode?.dispose();
    identificacaoVisitaTextController?.dispose();

    tokenVisitaFocusNode?.dispose();
    tokenVisitaTextController?.dispose();

    notaVisitaFocusNode1?.dispose();
    notaVisitaTextController1?.dispose();

    tabBarController5?.dispose();
    textFieldFocusNode5?.dispose();

    paginatedDataTableController5.dispose();
    nomeVisitaFocusNode2?.dispose();
    nomeVisitaTextController2?.dispose();

    telefoneVisitaFocusNode2?.dispose();
    telefoneVisitaTextController2?.dispose();

    notaVisitaFocusNode2?.dispose();
    notaVisitaTextController2?.dispose();

    documentoPostalFocusNode2?.dispose();
    documentoPostalTextController2?.dispose();

    tabBarController6?.dispose();
    nomeReferenciaFocusNode?.dispose();
    nomeReferenciaTextController?.dispose();

    paginatedDataTableController6.dispose();
    nomeRespostaFocusNode?.dispose();
    nomeRespostaTextController?.dispose();

    paginatedDataTableController7.dispose();
    nomeChamadaFocusNode?.dispose();
    nomeChamadaTextController?.dispose();

    paginatedDataTableController8.dispose();
    nomeVisitasFocusNode?.dispose();
    nomeVisitasTextController?.dispose();

    paginatedDataTableController9.dispose();
    nomeReclamacaoFocusNode?.dispose();
    nomeReclamacaoTextController?.dispose();

    paginatedDataTableController10.dispose();
  }
}
