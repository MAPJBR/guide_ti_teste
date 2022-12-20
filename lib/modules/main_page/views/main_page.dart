import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_guide_ti/common/style/style_guide.dart';
import 'package:teste_guide_ti/modules/main_page/controllers/main_page_controller.dart';

class MainPageGuideTiWidget extends StatefulWidget {
  const MainPageGuideTiWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainPageGuideTiWidgetState createState() => _MainPageGuideTiWidgetState();
}

class _MainPageGuideTiWidgetState extends State<MainPageGuideTiWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Style.primaryColor,
        body: GetBuilder<MainPageController>(
          builder: (controller) => Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/images/landscape.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.6, -0.5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.15, 0.55),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: double.infinity,
                          height: 100,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 50, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF133A3A),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 60, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text('De um start nos seus sonhos',
                                          style: Style.textContent),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 8, 16, 0),
                                          child: Text(
                                              'Sabia o que podemos fazer por você.',
                                              style: Style.textContent),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.goToHomePage();
                            },
                            child: Align(
                                alignment: const AlignmentDirectional(0, -0.75),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    color: Style.buttonBackgroundColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: Color(0x8E000000),
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.power_settings_new_rounded,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
