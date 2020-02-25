void main() {
  String firstname = "Cas";
  String surname = "van Gool";
  print(firstname);
  print(surname);
  String fullname = firstname + ' ' + surname;
  print(fullname);
  String fullname2 = "Fullname: $firstname $surname";
  print(fullname2);
  print(firstname.length);
  print(surname.length);
  print(fullname2.toUpperCase());
  print(fullname2.toLowerCase());
  print(fullname2.indexOf("van"));
  print(fullname2.substring(5,8));
}