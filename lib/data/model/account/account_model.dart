class AccountModel {
  num id;
  String title;
  String img;
  num openingBalance;

  AccountModel({
    required this.id,
    required this.title,
    required this.img,
    required this.openingBalance,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('id') && json['id'] is int &&
        json.containsKey('title') && json['title'] is String &&
        json.containsKey('img') && json['img'] is String &&
        json.containsKey('openingBalance') && json['openingBalance'] is num) {
      return AccountModel(
        id: json['id'],
        title: json['title'],
        img: json['img'],
        openingBalance: json['openingBalance'],
      );
    } else {
      throw const FormatException('Format not supported.');
    }
  }
}
