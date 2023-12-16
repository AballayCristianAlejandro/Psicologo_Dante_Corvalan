import '/flutter_flow/flutter_flow_util.dart';
import 'list_paciente_widget.dart' show ListPacienteWidget;
import 'package:flutter/material.dart';

class ListPacienteModel extends FlutterFlowModel<ListPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
