extension PascalCaseSplitter on String {
  String splitPascalCaseAndCapitalize() {
    final regExp = RegExp(r'(?<=[a-z])(?=[A-Z])');
    final words = this.split(regExp);
    final capitalizedWords = words.map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase());
    return capitalizedWords.join(' ');
  }
}