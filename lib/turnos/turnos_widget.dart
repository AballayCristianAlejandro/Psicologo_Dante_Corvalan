import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'turnos_model.dart';
export 'turnos_model.dart';

class TurnosWidget extends StatefulWidget {
  const TurnosWidget({super.key});

  @override
  _TurnosWidgetState createState() => _TurnosWidgetState();
}

class _TurnosWidgetState extends State<TurnosWidget> {
  late TurnosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TurnosModel());
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF91BFF9),
        automaticallyImplyLeading: true,
        title: Text(
          'Turnos en Cosultorio',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: const Color(0xFFF1F4F8),
              ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOHx8UHNpY29sb2d5fGVufDB8fHx8MTY5OTU3Nzk0N3ww&ixlib=rb-4.0.3&q=80&w=1080',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 230.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sesiones Programadas ',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Text(
                      'Lunes - Viernes 10:00am a 19:00 pm',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                    ),
                  ),
                  Text(
                    '¡Agradecemos u interes en cuidar tu bienestar emocional con nosotros !.Aqui te explicamos como :\n1. Comunicarte con Nosotros:\n  .Manda un mensaje  lo podra haces con \n   solo apretar el boton Reservar.\n2.Consulta Dsiponibilidad:\n  . Nuestro equipo te proporcionara\n    informacion sobre los  Horario disponibles.\n3.Proporciona informacion basica :\n  .Al reservar, necesitamos algunos detalles         \n  como tu nombre  , obra social/particular, \n  y un breve resumen de tu motivo para la\n  consulta.',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                  Divider(
                    height: 32.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL(
                        'https://api.whatsapp.com/send?phone=2664363363&text=Hola%20quiero%20reservar%20un%20turno');
                  },
                  text: 'Reserva',
                  icon: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Color(0xFFF1F4F8),
                    size: 34.0,
                  ),
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle:
                        FlutterFlowTheme.of(context).headlineSmall.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                            ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
