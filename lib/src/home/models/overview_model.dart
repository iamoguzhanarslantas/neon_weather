class OverviewModel {
  dynamic lat;
  dynamic lon;
  String? tz;
  String? date;
  String? units;
  String? weatherOverview;

  OverviewModel(
      {this.lat,
      this.lon,
      this.tz,
      this.date,
      this.units,
      this.weatherOverview});

  OverviewModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    tz = json['tz'];
    date = json['date'];
    units = json['units'];
    weatherOverview = json['weather_overview'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['tz'] = this.tz;
    data['date'] = this.date;
    data['units'] = this.units;
    data['weather_overview'] = this.weatherOverview;
    return data;
  }
}
