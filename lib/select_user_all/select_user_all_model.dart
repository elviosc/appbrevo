import '/flutter_flow/flutter_flow_util.dart';
import 'select_user_all_widget.dart' show SelectUserAllWidget;
import 'package:flutter/material.dart';

class SelectUserAllModel extends FlutterFlowModel<SelectUserAllWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
