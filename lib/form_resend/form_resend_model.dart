import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_resend_widget.dart' show FormResendWidget;
import 'package:flutter/material.dart';

class FormResendModel extends FlutterFlowModel<FormResendWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNameResend widget.
  FocusNode? txtNameResendFocusNode;
  TextEditingController? txtNameResendController;
  String? Function(BuildContext, String?)? txtNameResendControllerValidator;
  // State field(s) for txtMailResend widget.
  FocusNode? txtMailResendFocusNode;
  TextEditingController? txtMailResendController;
  String? Function(BuildContext, String?)? txtMailResendControllerValidator;
  // State field(s) for txtDescResend widget.
  FocusNode? txtDescResendFocusNode;
  TextEditingController? txtDescResendController;
  String? Function(BuildContext, String?)? txtDescResendControllerValidator;
  // Stores action output result for [Backend Call - API (SendAPIResend)] action in Button widget.
  ApiCallResponse? apiResend;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNameResendFocusNode?.dispose();
    txtNameResendController?.dispose();

    txtMailResendFocusNode?.dispose();
    txtMailResendController?.dispose();

    txtDescResendFocusNode?.dispose();
    txtDescResendController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
