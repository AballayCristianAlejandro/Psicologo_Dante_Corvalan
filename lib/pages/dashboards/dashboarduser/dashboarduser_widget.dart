import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dashboarduser_model.dart';
export 'dashboarduser_model.dart';

class DashboarduserWidget extends StatefulWidget {
  const DashboarduserWidget({super.key});

  @override
  _DashboarduserWidgetState createState() => _DashboarduserWidgetState();
}

class _DashboarduserWidgetState extends State<DashboarduserWidget> {
  late DashboarduserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboarduserModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: const Color(0xFF91BFF9),
          iconTheme: const IconThemeData(color: Color(0xFFF1F4F8)),
          automaticallyImplyLeading: true,
          title: Text(
            'Licenciado Dante Corbalan',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 100.0, 5.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: const Color(0xF7FFFFFF),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 150.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xF7FFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.search,
                                            color: Color(0xFF141B5B),
                                            size: 35.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'ver recetas',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: const Color(0xFF141B5B),
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 10.0, 10.0, 10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 150.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xF7FFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://api.whatsapp.com/send?phone=2664363363&text=Hola%20quiero%20consultar%20%20........');
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.whatsapp,
                                              color: Color(0xFF2CEE0C),
                                              size: 35.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Contacto',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            const Color(0xFF141B5B),
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 150.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xF7FFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.send,
                                            color: Color(0xFF91BFF9),
                                            size: 35.0,
                                          ),
                                        ),
                                        Text(
                                          'Cargar recetas',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: const Color(0xFF141B5B),
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 10.0, 10.0, 10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 150.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xF7FFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.userCircle,
                                            color: Color(0xFFFFA69E),
                                            size: 35.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Prescripcion',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF21216D),
                                                  ),
                                            ),
                                            Text(
                                              'Psicologica',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF21216D),
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: 150.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xF7FFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.notifications_active_sharp,
                                            color: Color(0xFF21216D),
                                            size: 34.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Notificacion',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: const Color(0xFF141B5B),
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('DashboardAdmin');
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFB8F2E6),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 8.0, 0.0),
                                    child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1666362755385-1856fca1a330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8UFNJQ09MT0dZfGVufDB8fHx8MTY5OTU3MzU0OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                        fit: BoxFit.contain,
                                        alignment: const Alignment(0.0, 0.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        18.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'ADMINISTRACION',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: const Color(0xFF21216D),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
