class Hasil {
  double? arus;
  double? daya;
  double? power;

  Hasil({this.arus, this.daya, this.power});

  Hasil.fromJson(Map<String, dynamic> json) {
    arus = json['Arus'];
    daya = json['Daya'];
    power = json['Power'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Arus'] = arus;
    data['Daya'] = daya;
    data['Power'] = power;
    return data;
  }
}
