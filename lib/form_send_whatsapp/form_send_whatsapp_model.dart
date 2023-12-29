import '/flutter_flow/flutter_flow_util.dart';
import 'form_send_whatsapp_widget.dart' show FormSendWhatsappWidget;
import 'package:flutter/material.dart';

class FormSendWhatsappModel extends FlutterFlowModel<FormSendWhatsappWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNameWhats widget.
  FocusNode? txtNameWhatsFocusNode;
  TextEditingController? txtNameWhatsController;
  String? Function(BuildContext, String?)? txtNameWhatsControllerValidator;
  // State field(s) for txtPhoneWhatsapp widget.
  FocusNode? txtPhoneWhatsappFocusNode;
  TextEditingController? txtPhoneWhatsappController;
  String? Function(BuildContext, String?)? txtPhoneWhatsappControllerValidator;
  // State field(s) for txtDescWhats widget.
  FocusNode? txtDescWhatsFocusNode;
  TextEditingController? txtDescWhatsController;
  String? Function(BuildContext, String?)? txtDescWhatsControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNameWhatsFocusNode?.dispose();
    txtNameWhatsController?.dispose();

    txtPhoneWhatsappFocusNode?.dispose();
    txtPhoneWhatsappController?.dispose();

    txtDescWhatsFocusNode?.dispose();
    txtDescWhatsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
