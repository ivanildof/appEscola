import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a071_detalhes_alunos_widget.dart' show A071DetalhesAlunosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class A071DetalhesAlunosModel
    extends FlutterFlowModel<A071DetalhesAlunosWidget> {
  ///  Local state fields for this page.

  List<String> imgdocumentvari = [];
  void addToImgdocumentvari(String item) => imgdocumentvari.add(item);
  void removeFromImgdocumentvari(String item) => imgdocumentvari.remove(item);
  void removeAtIndexFromImgdocumentvari(int index) =>
      imgdocumentvari.removeAt(index);
  void insertAtIndexInImgdocumentvari(int index, String item) =>
      imgdocumentvari.insert(index, item);
  void updateImgdocumentvariAtIndex(int index, Function(String) updateFn) =>
      imgdocumentvari[index] = updateFn(imgdocumentvari[index]);

  String? visivel = 'não';

  String? perfiluser;

  String? responsavelimg;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for dropfilial widget.
  String? dropfilialValue;
  FormFieldController<String>? dropfilialValueController;
  // State field(s) for classeEstudante widget.
  String? classeEstudanteValue;
  FormFieldController<String>? classeEstudanteValueController;
  // State field(s) for secaoEstudante widget.
  String? secaoEstudanteValue;
  FormFieldController<String>? secaoEstudanteValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<UsersRecord>();
  // State field(s) for Tmatricula widget.
  FocusNode? tmatriculaFocusNode;
  TextEditingController? tmatriculaTextController;
  String? Function(BuildContext, String?)? tmatriculaTextControllerValidator;
  String? _tmatriculaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tinep widget.
  FocusNode? tinepFocusNode;
  TextEditingController? tinepTextController;
  String? Function(BuildContext, String?)? tinepTextControllerValidator;
  // State field(s) for Tnis widget.
  FocusNode? tnisFocusNode;
  TextEditingController? tnisTextController;
  String? Function(BuildContext, String?)? tnisTextControllerValidator;
  // State field(s) for Tnomealuno widget.
  FocusNode? tnomealunoFocusNode;
  TextEditingController? tnomealunoTextController;
  String? Function(BuildContext, String?)? tnomealunoTextControllerValidator;
  String? _tnomealunoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for dropGenero widget.
  String? dropGeneroValue;
  FormFieldController<String>? dropGeneroValueController;
  // State field(s) for Dropsangue widget.
  String? dropsangueValue;
  FormFieldController<String>? dropsangueValueController;
  // State field(s) for Tnascimento widget.
  FocusNode? tnascimentoFocusNode;
  TextEditingController? tnascimentoTextController;
  final tnascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? tnascimentoTextControllerValidator;
  String? _tnascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tidade widget.
  FocusNode? tidadeFocusNode;
  TextEditingController? tidadeTextController;
  final tidadeMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? tidadeTextControllerValidator;
  String? _tidadeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Dropbolsafamilia widget.
  String? dropbolsafamiliaValue;
  FormFieldController<String>? dropbolsafamiliaValueController;
  // State field(s) for TtelefonAluno widget.
  FocusNode? ttelefonAlunoFocusNode;
  TextEditingController? ttelefonAlunoTextController;
  final ttelefonAlunoMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? ttelefonAlunoTextControllerValidator;
  String? _ttelefonAlunoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TEmailAluno widget.
  FocusNode? tEmailAlunoFocusNode;
  TextEditingController? tEmailAlunoTextController;
  String? Function(BuildContext, String?)? tEmailAlunoTextControllerValidator;
  String? _tEmailAlunoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TCEP widget.
  FocusNode? tcepFocusNode;
  TextEditingController? tcepTextController;
  final tcepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? tcepTextControllerValidator;
  String? _tcepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tuf widget.
  FocusNode? tufFocusNode;
  TextEditingController? tufTextController;
  final tufMask = MaskTextInputFormatter(mask: 'AA');
  String? Function(BuildContext, String?)? tufTextControllerValidator;
  String? _tufTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tmunicipio widget.
  FocusNode? tmunicipioFocusNode;
  TextEditingController? tmunicipioTextController;
  String? Function(BuildContext, String?)? tmunicipioTextControllerValidator;
  String? _tmunicipioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tbairro widget.
  FocusNode? tbairroFocusNode;
  TextEditingController? tbairroTextController;
  String? Function(BuildContext, String?)? tbairroTextControllerValidator;
  String? _tbairroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tnumerocasa widget.
  FocusNode? tnumerocasaFocusNode;
  TextEditingController? tnumerocasaTextController;
  String? Function(BuildContext, String?)? tnumerocasaTextControllerValidator;
  String? _tnumerocasaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Tcomplemento widget.
  FocusNode? tcomplementoFocusNode;
  TextEditingController? tcomplementoTextController;
  String? Function(BuildContext, String?)? tcomplementoTextControllerValidator;
  String? _tcomplementoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Trua widget.
  FocusNode? truaFocusNode;
  TextEditingController? truaTextController;
  String? Function(BuildContext, String?)? truaTextControllerValidator;
  String? _truaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Dropzona widget.
  String? dropzonaValue;
  FormFieldController<String>? dropzonaValueController;
  // Stores action output result for [Custom Action - uploadImage] action in Column widget.
  String? fotoperfilaluno;
  // State field(s) for TuserLoginEmail widget.
  FocusNode? tuserLoginEmailFocusNode;
  TextEditingController? tuserLoginEmailTextController;
  String? Function(BuildContext, String?)?
      tuserLoginEmailTextControllerValidator;
  String? _tuserLoginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TuserLoginSenha widget.
  FocusNode? tuserLoginSenhaFocusNode;
  TextEditingController? tuserLoginSenhaTextController;
  late bool tuserLoginSenhaVisibility;
  String? Function(BuildContext, String?)?
      tuserLoginSenhaTextControllerValidator;
  String? _tuserLoginSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TuserLoginCONFIRMARSenha widget.
  FocusNode? tuserLoginCONFIRMARSenhaFocusNode;
  TextEditingController? tuserLoginCONFIRMARSenhaTextController;
  late bool tuserLoginCONFIRMARSenhaVisibility;
  String? Function(BuildContext, String?)?
      tuserLoginCONFIRMARSenhaTextControllerValidator;
  String? _tuserLoginCONFIRMARSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TCampoNomeResponsa widget.
  FocusNode? tCampoNomeResponsaFocusNode;
  TextEditingController? tCampoNomeResponsaTextController;
  String? Function(BuildContext, String?)?
      tCampoNomeResponsaTextControllerValidator;
  String? _tCampoNomeResponsaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Droprelacao widget.
  String? droprelacaoValue;
  FormFieldController<String>? droprelacaoValueController;
  // State field(s) for TCampoEmailResp widget.
  FocusNode? tCampoEmailRespFocusNode;
  TextEditingController? tCampoEmailRespTextController;
  String? Function(BuildContext, String?)?
      tCampoEmailRespTextControllerValidator;
  String? _tCampoEmailRespTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TOcupacaoRespon widget.
  FocusNode? tOcupacaoResponFocusNode;
  TextEditingController? tOcupacaoResponTextController;
  String? Function(BuildContext, String?)?
      tOcupacaoResponTextControllerValidator;
  String? _tOcupacaoResponTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TAcadRendaRESPONSA widget.
  FocusNode? tAcadRendaRESPONSAFocusNode;
  TextEditingController? tAcadRendaRESPONSATextController;
  String? Function(BuildContext, String?)?
      tAcadRendaRESPONSATextControllerValidator;
  String? _tAcadRendaRESPONSATextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TCPFresponsavel widget.
  FocusNode? tCPFresponsavelFocusNode;
  TextEditingController? tCPFresponsavelTextController;
  final tCPFresponsavelMask = MaskTextInputFormatter(mask: '#########-##');
  String? Function(BuildContext, String?)?
      tCPFresponsavelTextControllerValidator;
  String? _tCPFresponsavelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TcontatoResponsa widget.
  FocusNode? tcontatoResponsaFocusNode;
  TextEditingController? tcontatoResponsaTextController;
  final tcontatoResponsaMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)?
      tcontatoResponsaTextControllerValidator;
  String? _tcontatoResponsaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Dropeducacao widget.
  String? dropeducacaoValue;
  FormFieldController<String>? dropeducacaoValueController;
  // State field(s) for TNomePai widget.
  FocusNode? tNomePaiFocusNode;
  TextEditingController? tNomePaiTextController;
  String? Function(BuildContext, String?)? tNomePaiTextControllerValidator;
  String? _tNomePaiTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TCPFPai widget.
  FocusNode? tCPFPaiFocusNode;
  TextEditingController? tCPFPaiTextController;
  final tCPFPaiMask = MaskTextInputFormatter(mask: '#########-##');
  String? Function(BuildContext, String?)? tCPFPaiTextControllerValidator;
  String? _tCPFPaiTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TNomeMae widget.
  FocusNode? tNomeMaeFocusNode;
  TextEditingController? tNomeMaeTextController;
  String? Function(BuildContext, String?)? tNomeMaeTextControllerValidator;
  String? _tNomeMaeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TCPFmae widget.
  FocusNode? tCPFmaeFocusNode;
  TextEditingController? tCPFmaeTextController;
  final tCPFmaeMask = MaskTextInputFormatter(mask: '#########-##');
  String? Function(BuildContext, String?)? tCPFmaeTextControllerValidator;
  String? _tCPFmaeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // Stores action output result for [Custom Action - uploadImage] action in Column widget.
  String? perfilresponsavel;
  // State field(s) for DropDocumentos widget.
  String? dropDocumentosValue;
  FormFieldController<String>? dropDocumentosValueController;
  // State field(s) for TmatriculaDocNascimen widget.
  FocusNode? tmatriculaDocNascimenFocusNode;
  TextEditingController? tmatriculaDocNascimenTextController;
  final tmatriculaDocNascimenMask =
      MaskTextInputFormatter(mask: '######-##-##-####-#-#####-###-#######-##');
  String? Function(BuildContext, String?)?
      tmatriculaDocNascimenTextControllerValidator;
  // State field(s) for TTermoNASCIME widget.
  FocusNode? tTermoNASCIMEFocusNode;
  TextEditingController? tTermoNASCIMETextController;
  String? Function(BuildContext, String?)? tTermoNASCIMETextControllerValidator;
  // State field(s) for Tfolhanasciment widget.
  FocusNode? tfolhanascimentFocusNode;
  TextEditingController? tfolhanascimentTextController;
  String? Function(BuildContext, String?)?
      tfolhanascimentTextControllerValidator;
  // State field(s) for TlivroNascimen widget.
  FocusNode? tlivroNascimenFocusNode;
  TextEditingController? tlivroNascimenTextController;
  String? Function(BuildContext, String?)?
      tlivroNascimenTextControllerValidator;
  // State field(s) for TdataemissaoNasciment widget.
  FocusNode? tdataemissaoNascimentFocusNode;
  TextEditingController? tdataemissaoNascimentTextController;
  String? Function(BuildContext, String?)?
      tdataemissaoNascimentTextControllerValidator;
  // State field(s) for TUFnasciment widget.
  FocusNode? tUFnascimentFocusNode;
  TextEditingController? tUFnascimentTextController;
  final tUFnascimentMask = MaskTextInputFormatter(mask: 'AA');
  String? Function(BuildContext, String?)? tUFnascimentTextControllerValidator;
  // State field(s) for TmunicipioNasciment widget.
  FocusNode? tmunicipioNascimentFocusNode;
  TextEditingController? tmunicipioNascimentTextController;
  String? Function(BuildContext, String?)?
      tmunicipioNascimentTextControllerValidator;
  // State field(s) for TcartorioNasciment widget.
  FocusNode? tcartorioNascimentFocusNode;
  TextEditingController? tcartorioNascimentTextController;
  String? Function(BuildContext, String?)?
      tcartorioNascimentTextControllerValidator;
  // Stores action output result for [Custom Action - uploadMultipleImages] action in btnEnviarnasciment widget.
  List<String>? imgdocuments;
  // State field(s) for TnumeroIdentida widget.
  FocusNode? tnumeroIdentidaFocusNode;
  TextEditingController? tnumeroIdentidaTextController;
  String? Function(BuildContext, String?)?
      tnumeroIdentidaTextControllerValidator;
  // State field(s) for TEmissIdenti widget.
  FocusNode? tEmissIdentiFocusNode;
  TextEditingController? tEmissIdentiTextController;
  String? Function(BuildContext, String?)? tEmissIdentiTextControllerValidator;
  // State field(s) for TdataExpedicao widget.
  FocusNode? tdataExpedicaoFocusNode;
  TextEditingController? tdataExpedicaoTextController;
  String? Function(BuildContext, String?)?
      tdataExpedicaoTextControllerValidator;
  // State field(s) for Tufidentidade widget.
  FocusNode? tufidentidadeFocusNode;
  TextEditingController? tufidentidadeTextController;
  String? Function(BuildContext, String?)? tufidentidadeTextControllerValidator;
  // State field(s) for Tmunicipioident widget.
  FocusNode? tmunicipioidentFocusNode;
  TextEditingController? tmunicipioidentTextController;
  String? Function(BuildContext, String?)?
      tmunicipioidentTextControllerValidator;
  // Stores action output result for [Custom Action - uploadMultipleImages] action in btnEnviaridentidade widget.
  List<String>? imgidentidade;
  // State field(s) for Tnumerocnh widget.
  FocusNode? tnumerocnhFocusNode;
  TextEditingController? tnumerocnhTextController;
  String? Function(BuildContext, String?)? tnumerocnhTextControllerValidator;
  // State field(s) for Tcategoricnh widget.
  FocusNode? tcategoricnhFocusNode;
  TextEditingController? tcategoricnhTextController;
  String? Function(BuildContext, String?)? tcategoricnhTextControllerValidator;
  // State field(s) for TemissaoCnh widget.
  FocusNode? temissaoCnhFocusNode;
  TextEditingController? temissaoCnhTextController;
  String? Function(BuildContext, String?)? temissaoCnhTextControllerValidator;
  // State field(s) for TufCNH widget.
  FocusNode? tufCNHFocusNode;
  TextEditingController? tufCNHTextController;
  String? Function(BuildContext, String?)? tufCNHTextControllerValidator;
  // State field(s) for Tmunicicnh widget.
  FocusNode? tmunicicnhFocusNode;
  TextEditingController? tmunicicnhTextController;
  String? Function(BuildContext, String?)? tmunicicnhTextControllerValidator;
  // Stores action output result for [Custom Action - uploadMultipleImages] action in btnEnviarcnh widget.
  List<String>? imgcnh;
  // State field(s) for Tcpfoutros widget.
  FocusNode? tcpfoutrosFocusNode;
  TextEditingController? tcpfoutrosTextController;
  final tcpfoutrosMask = MaskTextInputFormatter(mask: '#########-##');
  String? Function(BuildContext, String?)? tcpfoutrosTextControllerValidator;
  // State field(s) for TnumePassaporoutros widget.
  FocusNode? tnumePassaporoutrosFocusNode;
  TextEditingController? tnumePassaporoutrosTextController;
  String? Function(BuildContext, String?)?
      tnumePassaporoutrosTextControllerValidator;
  // State field(s) for TsusOutros widget.
  FocusNode? tsusOutrosFocusNode;
  TextEditingController? tsusOutrosTextController;
  String? Function(BuildContext, String?)? tsusOutrosTextControllerValidator;
  // Stores action output result for [Custom Action - uploadMultipleImages] action in btnEnviaroutros widget.
  List<String>? imgoutrosdocument;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue1;
  FormFieldController<String>? acadDropDownGeneroValueController1;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue2;
  FormFieldController<String>? acadDropDownGeneroValueController2;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue3;
  FormFieldController<String>? acadDropDownGeneroValueController3;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue4;
  FormFieldController<String>? acadDropDownGeneroValueController4;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue5;
  FormFieldController<String>? acadDropDownGeneroValueController5;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue6;
  FormFieldController<String>? acadDropDownGeneroValueController6;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue7;
  FormFieldController<String>? acadDropDownGeneroValueController7;
  // State field(s) for Tdeficiencia widget.
  FocusNode? tdeficienciaFocusNode;
  TextEditingController? tdeficienciaTextController;
  String? Function(BuildContext, String?)? tdeficienciaTextControllerValidator;
  // State field(s) for Tapoiopedagogico widget.
  FocusNode? tapoiopedagogicoFocusNode;
  TextEditingController? tapoiopedagogicoTextController;
  String? Function(BuildContext, String?)?
      tapoiopedagogicoTextControllerValidator;
  // State field(s) for Tdiagnostico widget.
  FocusNode? tdiagnosticoFocusNode;
  TextEditingController? tdiagnosticoTextController;
  String? Function(BuildContext, String?)? tdiagnosticoTextControllerValidator;
  // State field(s) for Dropcadeirante widget.
  String? dropcadeiranteValue;
  FormFieldController<String>? dropcadeiranteValueController;
  // State field(s) for Dropbpc widget.
  String? dropbpcValue;
  FormFieldController<String>? dropbpcValueController;
  // State field(s) for Droptipoatendimento widget.
  String? droptipoatendimentoValue;
  FormFieldController<String>? droptipoatendimentoValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DocumentsRecord? documennascim;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DocumentsRecord? documenidentidade;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DocumentsRecord? documentcnh;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DocumentsRecord? documenoutros;
  // State field(s) for filialMulticlasse widget.
  String? filialMulticlasseValue;
  FormFieldController<String>? filialMulticlasseValueController;
  // State field(s) for classeMulticlasse widget.
  String? classeMulticlasseValue;
  FormFieldController<String>? classeMulticlasseValueController;
  // State field(s) for secaoMulticlasse widget.
  String? secaoMulticlasseValue;
  FormFieldController<String>? secaoMulticlasseValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController52;
  String? Function(BuildContext, String?)? textController52Validator;
  List<InventarioLoja1Record> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioLoja1Record>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    tmatriculaTextControllerValidator = _tmatriculaTextControllerValidator;
    tnomealunoTextControllerValidator = _tnomealunoTextControllerValidator;
    tnascimentoTextControllerValidator = _tnascimentoTextControllerValidator;
    tidadeTextControllerValidator = _tidadeTextControllerValidator;
    ttelefonAlunoTextControllerValidator =
        _ttelefonAlunoTextControllerValidator;
    tEmailAlunoTextControllerValidator = _tEmailAlunoTextControllerValidator;
    tcepTextControllerValidator = _tcepTextControllerValidator;
    tufTextControllerValidator = _tufTextControllerValidator;
    tmunicipioTextControllerValidator = _tmunicipioTextControllerValidator;
    tbairroTextControllerValidator = _tbairroTextControllerValidator;
    tnumerocasaTextControllerValidator = _tnumerocasaTextControllerValidator;
    tcomplementoTextControllerValidator = _tcomplementoTextControllerValidator;
    truaTextControllerValidator = _truaTextControllerValidator;
    tuserLoginEmailTextControllerValidator =
        _tuserLoginEmailTextControllerValidator;
    tuserLoginSenhaVisibility = false;
    tuserLoginSenhaTextControllerValidator =
        _tuserLoginSenhaTextControllerValidator;
    tuserLoginCONFIRMARSenhaVisibility = false;
    tuserLoginCONFIRMARSenhaTextControllerValidator =
        _tuserLoginCONFIRMARSenhaTextControllerValidator;
    tCampoNomeResponsaTextControllerValidator =
        _tCampoNomeResponsaTextControllerValidator;
    tCampoEmailRespTextControllerValidator =
        _tCampoEmailRespTextControllerValidator;
    tOcupacaoResponTextControllerValidator =
        _tOcupacaoResponTextControllerValidator;
    tAcadRendaRESPONSATextControllerValidator =
        _tAcadRendaRESPONSATextControllerValidator;
    tCPFresponsavelTextControllerValidator =
        _tCPFresponsavelTextControllerValidator;
    tcontatoResponsaTextControllerValidator =
        _tcontatoResponsaTextControllerValidator;
    tNomePaiTextControllerValidator = _tNomePaiTextControllerValidator;
    tCPFPaiTextControllerValidator = _tCPFPaiTextControllerValidator;
    tNomeMaeTextControllerValidator = _tNomeMaeTextControllerValidator;
    tCPFmaeTextControllerValidator = _tCPFmaeTextControllerValidator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    paginatedDataTableController1.dispose();
    tmatriculaFocusNode?.dispose();
    tmatriculaTextController?.dispose();

    tinepFocusNode?.dispose();
    tinepTextController?.dispose();

    tnisFocusNode?.dispose();
    tnisTextController?.dispose();

    tnomealunoFocusNode?.dispose();
    tnomealunoTextController?.dispose();

    tnascimentoFocusNode?.dispose();
    tnascimentoTextController?.dispose();

    tidadeFocusNode?.dispose();
    tidadeTextController?.dispose();

    ttelefonAlunoFocusNode?.dispose();
    ttelefonAlunoTextController?.dispose();

    tEmailAlunoFocusNode?.dispose();
    tEmailAlunoTextController?.dispose();

    tcepFocusNode?.dispose();
    tcepTextController?.dispose();

    tufFocusNode?.dispose();
    tufTextController?.dispose();

    tmunicipioFocusNode?.dispose();
    tmunicipioTextController?.dispose();

    tbairroFocusNode?.dispose();
    tbairroTextController?.dispose();

    tnumerocasaFocusNode?.dispose();
    tnumerocasaTextController?.dispose();

    tcomplementoFocusNode?.dispose();
    tcomplementoTextController?.dispose();

    truaFocusNode?.dispose();
    truaTextController?.dispose();

    tuserLoginEmailFocusNode?.dispose();
    tuserLoginEmailTextController?.dispose();

    tuserLoginSenhaFocusNode?.dispose();
    tuserLoginSenhaTextController?.dispose();

    tuserLoginCONFIRMARSenhaFocusNode?.dispose();
    tuserLoginCONFIRMARSenhaTextController?.dispose();

    tCampoNomeResponsaFocusNode?.dispose();
    tCampoNomeResponsaTextController?.dispose();

    tCampoEmailRespFocusNode?.dispose();
    tCampoEmailRespTextController?.dispose();

    tOcupacaoResponFocusNode?.dispose();
    tOcupacaoResponTextController?.dispose();

    tAcadRendaRESPONSAFocusNode?.dispose();
    tAcadRendaRESPONSATextController?.dispose();

    tCPFresponsavelFocusNode?.dispose();
    tCPFresponsavelTextController?.dispose();

    tcontatoResponsaFocusNode?.dispose();
    tcontatoResponsaTextController?.dispose();

    tNomePaiFocusNode?.dispose();
    tNomePaiTextController?.dispose();

    tCPFPaiFocusNode?.dispose();
    tCPFPaiTextController?.dispose();

    tNomeMaeFocusNode?.dispose();
    tNomeMaeTextController?.dispose();

    tCPFmaeFocusNode?.dispose();
    tCPFmaeTextController?.dispose();

    tmatriculaDocNascimenFocusNode?.dispose();
    tmatriculaDocNascimenTextController?.dispose();

    tTermoNASCIMEFocusNode?.dispose();
    tTermoNASCIMETextController?.dispose();

    tfolhanascimentFocusNode?.dispose();
    tfolhanascimentTextController?.dispose();

    tlivroNascimenFocusNode?.dispose();
    tlivroNascimenTextController?.dispose();

    tdataemissaoNascimentFocusNode?.dispose();
    tdataemissaoNascimentTextController?.dispose();

    tUFnascimentFocusNode?.dispose();
    tUFnascimentTextController?.dispose();

    tmunicipioNascimentFocusNode?.dispose();
    tmunicipioNascimentTextController?.dispose();

    tcartorioNascimentFocusNode?.dispose();
    tcartorioNascimentTextController?.dispose();

    tnumeroIdentidaFocusNode?.dispose();
    tnumeroIdentidaTextController?.dispose();

    tEmissIdentiFocusNode?.dispose();
    tEmissIdentiTextController?.dispose();

    tdataExpedicaoFocusNode?.dispose();
    tdataExpedicaoTextController?.dispose();

    tufidentidadeFocusNode?.dispose();
    tufidentidadeTextController?.dispose();

    tmunicipioidentFocusNode?.dispose();
    tmunicipioidentTextController?.dispose();

    tnumerocnhFocusNode?.dispose();
    tnumerocnhTextController?.dispose();

    tcategoricnhFocusNode?.dispose();
    tcategoricnhTextController?.dispose();

    temissaoCnhFocusNode?.dispose();
    temissaoCnhTextController?.dispose();

    tufCNHFocusNode?.dispose();
    tufCNHTextController?.dispose();

    tmunicicnhFocusNode?.dispose();
    tmunicicnhTextController?.dispose();

    tcpfoutrosFocusNode?.dispose();
    tcpfoutrosTextController?.dispose();

    tnumePassaporoutrosFocusNode?.dispose();
    tnumePassaporoutrosTextController?.dispose();

    tsusOutrosFocusNode?.dispose();
    tsusOutrosTextController?.dispose();

    tdeficienciaFocusNode?.dispose();
    tdeficienciaTextController?.dispose();

    tapoiopedagogicoFocusNode?.dispose();
    tapoiopedagogicoTextController?.dispose();

    tdiagnosticoFocusNode?.dispose();
    tdiagnosticoTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController52?.dispose();

    paginatedDataTableController2.dispose();
  }
}
