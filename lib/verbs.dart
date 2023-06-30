class Verbs {
  final String title;
  final List<ListOfVerb> subItems;

  Verbs({required this.title, required this.subItems});
}

class ListOfVerb {
  final String title;
  final String subtitle;
  final String details;

  ListOfVerb(
      {required this.subtitle, required this.details, required this.title});
}
