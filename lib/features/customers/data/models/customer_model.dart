class CustomerModel {
  String? fullName;
  String? height;
  String? width;
  String? type;
  String? phoneNumber;
  String? note;

  CustomerModel({
    this.fullName,
    this.height,
    this.width,
    this.type,
    this.phoneNumber,
    this.note,
  });

  CustomerModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    height = json['height'];
    width = json['width'];
    type = json['type'];
    phoneNumber = json['phoneNumber'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['height'] = this.height;
    data['width'] = this.width;
    data['type'] = this.type;
    data['phoneNumber'] = this.phoneNumber;
    data['note'] = this.note;
    return data;
  }
}