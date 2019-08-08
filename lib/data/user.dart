class User {
  String firstName, lastName, username;
  List<String> transactions;

  User(String firstName, String lastName, String username,
      List<String> transactions) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.username = username;
    this.transactions = transactions;
  }
}

List<User> sampleUsers = [
  User("John", "Smith", "johnsmith", ["transaction-1", "transaction-2"]),
  User("James", "Smith", "jamessmith", ["transaction-1", "transaction-3"]),
  User("Jane", "Smith", "janesmith",
      ["transaction-1", "transaction-3", "transaction-2"]),
];
