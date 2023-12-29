import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_brevo_widget.dart' show FormBrevoWidget;
import 'package:flutter/material.dart';

class FormBrevoModel extends FlutterFlowModel<FormBrevoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNameBrevo widget.
  FocusNode? txtNameBrevoFocusNode;
  TextEditingController? txtNameBrevoController;
  String? Function(BuildContext, String?)? txtNameBrevoControllerValidator;
  // State field(s) for txtMailBrevo widget.
  FocusNode? txtMailBrevoFocusNode;
  TextEditingController? txtMailBrevoController;
  String? Function(BuildContext, String?)? txtMailBrevoControllerValidator;
  // State field(s) for txtDescBrevo widget.
  FocusNode? txtDescBrevoFocusNode;
  TextEditingController? txtDescBrevoController;
  String? Function(BuildContext, String?)? txtDescBrevoControllerValidator;
  // Stores action output result for [Backend Call - API (SendBrevo)] action in Button widget.
  ApiCallResponse? apiResultknc;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNameBrevoFocusNode?.dispose();
    txtNameBrevoController?.dispose();

    txtMailBrevoFocusNode?.dispose();
    txtMailBrevoController?.dispose();

    txtDescBrevoFocusNode?.dispose();
    txtDescBrevoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
