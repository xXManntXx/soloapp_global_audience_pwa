import '/res/global_const.dart';

class Language {
  bool readDir;
  String name;
  String id;

  Language({required this.readDir, required this.name, required this.id});

  Language.english()
      : readDir = L_TO_RIGHT,
        name = "English",
        id = "en";

  Language.french()
      : readDir = L_TO_RIGHT,
        name = "Français",
        id = "fr";

  Language.hebrew()
      : readDir = R_TO_LEFT,
        name = "עִברִית",
        id = "he";

  Language.spanish()
      : readDir = L_TO_RIGHT,
        name = "Español",
        id = "es";
}

List<Language> getAllLanguages() {
  List<Language> allMyLanguages = [];

  allMyLanguages.add(Language.english());
  allMyLanguages.add(Language.french());
  allMyLanguages.add(Language.hebrew());
  allMyLanguages.add(Language.spanish());

  return allMyLanguages;
}
