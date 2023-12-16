import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());
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
          automaticallyImplyLeading: false,
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
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Turnos');
                                  },
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.clock,
                                              color: Color(0xFF141B5B),
                                              size: 35.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Turnos ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            const Color(0xFF141B5B),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                          Text(
                                            'Consulta YA!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: const Color(0xFF141B5B),
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
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context
                                            .pushNamed('DetalleRedesSociales');
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.line,
                                              color: Color(0xFF91BFF9),
                                              size: 35.0,
                                            ),
                                          ),
                                          Text(
                                            'Conoceme',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: const Color(0xFF141B5B),
                                                ),
                                          ),
                                        ],
                                      ),
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
                                        context.pushNamed('login');
                                      },
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
                                          Text(
                                            'Usuarios',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: const Color(0xFF141B5B),
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
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.fmd_good,
                                            color: Color(0xFFC91616),
                                            size: 34.0,
                                          ),
                                        ),
                                        Text(
                                          'Mi Ubicacion',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: const Color(0xFF141B5B),
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
                                          child: Icon(
                                            Icons.notifications_active,
                                            color: Color(0xFF141B5B),
                                            size: 34.0,
                                          ),
                                        ),
                                        Text(
                                          'Novedades',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: const Color(0xFF141B5B),
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'http://www.colegiopsicologos.com.ar/Pagina/7/Obras-Sociales');
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
                                    8.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Obras Sociales con Convenio',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF21216D),
                                          ),
                                    ),
                                    Text(
                                      'click  aqui',
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF070708),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  'https://www.facebook.com/dante.corvalan?mibextid=ZbWKwL');
                            },
                            child: const Icon(
                              Icons.facebook_sharp,
                              color: Color(0xF7FFFFFF),
                              size: 30.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  'https://www.instagram.com/dantecorvalanelias');
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xF7FFFFFF),
                              size: 30.0,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Icon(
                            Icons.location_pin,
                            color: Color(0xF7FFFFFF),
                            size: 30.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              70.0, 20.0, 0.0, 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Centro de atencio',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xF7FFFFFF),
                                      fontSize: 12.0,
                                    ),
                              ),
                              Text(
                                '9 de julio 1416',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xF7FFFFFF),
                                      fontSize: 12.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
