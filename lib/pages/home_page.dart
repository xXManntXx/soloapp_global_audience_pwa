import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soloapp_global_audience_pwa/main.dart';
import '/model/languages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/model/panel_view_content.dart';
import '/view/panel_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Language> allLanguages = getAllLanguages();
  Language selectedLanguage = Language.english();
  TextDirection _myTextDirection = TextDirection.ltr;

  @override
  void initState() {
    super.initState();
    selectedLanguage = allLanguages[0];
  }

  void setReadDirection(bool readDirection) {
    setState(() {
      _myTextDirection = readDirection ? TextDirection.ltr : TextDirection.rtl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: _myTextDirection,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            toolbarHeight: kToolbarHeight * 3,
            backgroundColor: const Color(0x5E31A9FF),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    AppLocalizations.of(context)!.mainTitle,
                    style: const TextStyle(
                      fontFamily: 'Verdana',
                      fontSize: 40,
                    ),
                    maxLines: 3,
                  ),
                ),
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      iconSize: 48.0,
                      icon: const Icon(Icons.language_sharp),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
          drawer: Drawer(
            backgroundColor: const Color(0xFF95CDF8),
            child: Padding(
                padding: EdgeInsets.zero,
                child: Consumer<LocaleModel>(
                  builder: (context, localeModel, child) => ListView.builder(
                      itemCount: allLanguages.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return DrawerHeader(
                              child: Text(
                                AppLocalizations.of(context)!.drawerHeader,
                                style: const TextStyle(
                                  fontFamily: 'Verdana',
                                  fontSize: 30,
                                ),
                              ));
                        }
                        return SingleChildScrollView(
                          child: Builder(builder: (BuildContext context) {
                            return ListTile(
                              title: Text(allLanguages[index - 1].name),
                              onTap: () {
                                setReadDirection(allLanguages[index - 1].readDir);
                                selectedLanguage = allLanguages[index - 1];
                                localeModel
                                    .set(Locale(allLanguages[index - 1].id));
                                Scaffold.of(context).closeDrawer();
                              },
                            );
                          }),
                        );
                      }),
                )),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF00C2FF),
                  Color(0xFF004EFF),
                ],
              ),
            ),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                List<PanelElement> panelElements;
                String sectionTitle;
                if (index == 0) {
                  panelElements = getPanels(AppLocalizations.of(context)!);
                  sectionTitle = AppLocalizations.of(context)!.section1;
                } else if (index == 1) {
                  sectionTitle = AppLocalizations.of(context)!.section2;
                  panelElements = getPanels(AppLocalizations.of(context)!);
                } else {
                  sectionTitle = AppLocalizations.of(context)!.section3;
                  panelElements = getPanels(AppLocalizations.of(context)!);
                }
                return Column(
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      sectionTitle,
                      style: const TextStyle(
                        fontFamily: 'Verdana',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CarouselSlider(
                      options: CarouselOptions(height: 400.0),
                      items: panelElements,
                    ),
                  ],
                );
              },
            ),
          ),
        ));
  }
}
