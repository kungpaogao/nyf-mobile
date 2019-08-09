class Transaction {
  String houseId, comment;
  DateTime dateTime;
  double totalPrice;
  List<UserAmt> people;
  String purchaser;

  Transaction(String houseId, String comment, DateTime dateTime,
      double totalPrice, List<UserAmt> people, String purchaser) {
    this.houseId = houseId;
    this.comment = comment;
    this.dateTime = dateTime;
    this.totalPrice = totalPrice;
    this.purchaser = purchaser;
    this.people = people;
  }
}

class UserAmt {
  String user; // this is a user id
  double amt;

  UserAmt(String user, double amt) {
    this.user = user;
    this.amt = amt;
  }
}

List<Transaction> sampleTrans = [
  Transaction("house-1", "toilet paper", (new DateTime(2019, 8, 8)), 21.97,
      [UserAmt("user-1", 12.97), UserAmt("user-2", 9)], "user-1"),
  Transaction(
      "house-1",
      "memes",
      (new DateTime(2019, 8, 8)),
      26,
      [
        UserAmt("user-1", 19),
        UserAmt("user-2", 7),
      ],
      "user-1"),
];
