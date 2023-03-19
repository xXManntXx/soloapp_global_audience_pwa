import '/view/panel_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<PanelElement> getPanels(AppLocalizations al) {
  List<PanelElement> myPanels = [];

  myPanels.add(PanelElement(
      title: al.titre1,
      description: al.description1,
      imagePath: "lib/assets/ph_1.jpg",
      ranking: 2));

  myPanels.add(PanelElement(
      title: al.titre2,
      description: al.description2,
      imagePath: "lib/assets/ph_2.jpg",
      ranking: 1));

  myPanels.add(PanelElement(
      title: al.titre3,
      description: al.description3,
      imagePath: "lib/assets/ph_3.jpg",
      ranking: 3));

  myPanels.add(PanelElement(
      title: al.titre4,
      description: al.description4,
      imagePath: "lib/assets/ph_4.jpg",
      ranking: 5));

  return myPanels;
}
