class FullInfoModel {
  Coord? coord;
  Current? current;
  List<Minutely>? minutely;
  List<Hourly>? hourly;
  List<Daily>? daily;
  List<Alerts>? alerts;

  FullInfoModel({
    this.coord,
    this.current,
    this.minutely,
    this.hourly,
    this.daily,
    this.alerts,
  });

  FullInfoModel.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    if (json['minutely'] != null) {
      minutely = <Minutely>[];
      json['minutely'].forEach((v) {
        minutely!.add(Minutely.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      hourly = <Hourly>[];
      json['hourly'].forEach((v) {
        hourly!.add(Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = <Daily>[];
      json['daily'].forEach((v) {
        daily!.add(Daily.fromJson(v));
      });
    }
    if (json['alerts'] != null) {
      alerts = <Alerts>[];
      json['alerts'].forEach((v) {
        alerts!.add(Alerts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.coord != null) {
      data['coord'] = this.coord!.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    if (this.minutely != null) {
      data['minutely'] = this.minutely!.map((v) => v.toJson()).toList();
    }
    if (this.hourly != null) {
      data['hourly'] = this.hourly!.map((v) => v.toJson()).toList();
    }
    if (this.daily != null) {
      data['daily'] = this.daily!.map((v) => v.toJson()).toList();
    }
    if (this.alerts != null) {
      data['alerts'] = this.alerts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Coord {
  dynamic lon;
  dynamic lat;
  String? timezone;
  dynamic timezoneOffset;

  Coord({this.lon, this.lat, this.timezone, this.timezoneOffset});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
    timezone = json['timezone'];
    timezoneOffset = json['timezone_offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    data['timezone'] = this.timezone;
    data['timezone_offset'] = this.timezoneOffset;
    return data;
  }
}

class Current {
  dynamic dt;
  String? dtTxt;
  dynamic sunrise;
  String? sunriseTxt;
  dynamic sunset;
  String? sunsetTxt;
  dynamic temperature;
  dynamic tempratureFeelsLike;
  dynamic dewPointTemprature;
  String? tempratureUnit;
  dynamic pressure;
  String? pressureUnit;
  dynamic humidity;
  String? humidityUnit;
  dynamic visibility;
  String? visibilityUnit;
  Uv? uv;
  Clouds? clouds;
  Rain? rain;
  Snow? snow;
  Wind? wind;
  List<Weather>? weather;

  Current({
    this.dt,
    this.dtTxt,
    this.sunrise,
    this.sunriseTxt,
    this.sunset,
    this.sunsetTxt,
    this.temperature,
    this.tempratureFeelsLike,
    this.dewPointTemprature,
    this.tempratureUnit,
    this.pressure,
    this.pressureUnit,
    this.humidity,
    this.humidityUnit,
    this.visibility,
    this.visibilityUnit,
    this.uv,
    this.clouds,
    this.rain,
    this.snow,
    this.wind,
    this.weather,
  });

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    dtTxt = json['dt_txt'];
    sunrise = json['sunrise'];
    sunriseTxt = json['sunrise_txt'];
    sunset = json['sunset'];
    sunsetTxt = json['sunset_txt'];
    temperature = json['temperature'];
    tempratureFeelsLike = json['temprature_feels_like'];
    dewPointTemprature = json['dew_point_temprature'];
    tempratureUnit = json['temprature_unit'];
    pressure = json['pressure'];
    pressureUnit = json['pressure_unit'];
    humidity = json['humidity'];
    humidityUnit = json['humidity_unit'];
    visibility = json['visibility'];
    visibilityUnit = json['visibility_unit'];
    uv = json['uv'] != null ? Uv.fromJson(json['uv']) : null;
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    snow = json['snow'] != null ? Snow.fromJson(json['snow']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = this.dt;
    data['dt_txt'] = this.dtTxt;
    data['sunrise'] = this.sunrise;
    data['sunrise_txt'] = this.sunriseTxt;
    data['sunset'] = this.sunset;
    data['sunset_txt'] = this.sunsetTxt;
    data['temperature'] = this.temperature;
    data['temprature_feels_like'] = this.tempratureFeelsLike;
    data['dew_point_temprature'] = this.dewPointTemprature;
    data['temprature_unit'] = this.tempratureUnit;
    data['pressure'] = this.pressure;
    data['pressure_unit'] = this.pressureUnit;
    data['humidity'] = this.humidity;
    data['humidity_unit'] = this.humidityUnit;
    data['visibility'] = this.visibility;
    data['visibility_unit'] = this.visibilityUnit;
    if (this.uv != null) {
      data['uv'] = this.uv!.toJson();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds!.toJson();
    }
    if (this.rain != null) {
      data['rain'] = this.rain!.toJson();
    }
    if (this.snow != null) {
      data['snow'] = this.snow!.toJson();
    }
    if (this.wind != null) {
      data['wind'] = this.wind!.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Uv {
  dynamic index;
  String? level;

  Uv({this.index, this.level});

  Uv.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index'] = this.index;
    data['level'] = this.level;
    return data;
  }
}

class Clouds {
  dynamic cloudiness;
  String? unit;

  Clouds({this.cloudiness, this.unit});

  Clouds.fromJson(Map<String, dynamic> json) {
    cloudiness = json['cloudiness'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cloudiness'] = this.cloudiness;
    data['unit'] = this.unit;
    return data;
  }
}

class Rain {
  dynamic amount;
  String? unit;

  Rain({this.amount, this.unit});

  Rain.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class Wind {
  dynamic speed;
  dynamic windDeg;
  dynamic gust;
  String? direction;
  dynamic gustSpeed;
  String? speedUnit;

  Wind(
      {this.speed,
      this.windDeg,
      this.gust,
      this.direction,
      this.gustSpeed,
      this.speedUnit});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    windDeg = json['wind_deg'];
    gust = json['gust'];
    direction = json['direction'];
    gustSpeed = json['gust_speed'];
    speedUnit = json['speed_unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['speed'] = this.speed;
    data['wind_deg'] = this.windDeg;
    data['gust'] = this.gust;
    data['direction'] = this.direction;
    data['gust_speed'] = this.gustSpeed;
    data['speed_unit'] = this.speedUnit;
    return data;
  }
}

class Weather {
  dynamic id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Minutely {
  dynamic dt;
  String? dtTxt;
  dynamic precipitation;
  String? precipitationUnit;

  Minutely({this.dt, this.dtTxt, this.precipitation, this.precipitationUnit});

  Minutely.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    dtTxt = json['dt_txt'];
    precipitation = json['precipitation'];
    precipitationUnit = json['precipitation_unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = this.dt;
    data['dt_txt'] = this.dtTxt;
    data['precipitation'] = this.precipitation;
    data['precipitation_unit'] = this.precipitationUnit;
    return data;
  }
}

class Hourly {
  dynamic dt;
  String? dtTxt;
  dynamic temperature;
  dynamic tempratureFeelsLike;
  dynamic dewPointTemprature;
  String? tempratureUnit;
  dynamic pressure;
  String? pressureUnit;
  dynamic humidity;
  String? humidityUnit;
  dynamic visibility;
  String? visibilityUnit;
  dynamic probabilityOfPrecipitation;
  String? probabilityOfPrecipitationUnit;
  Uv? uv;
  Clouds? clouds;
  Rain? rain;
  Rain? snow;
  Wind? wind;
  List<Weather>? weather;

  Hourly(
      {this.dt,
      this.dtTxt,
      this.temperature,
      this.tempratureFeelsLike,
      this.dewPointTemprature,
      this.tempratureUnit,
      this.pressure,
      this.pressureUnit,
      this.humidity,
      this.humidityUnit,
      this.visibility,
      this.visibilityUnit,
      this.probabilityOfPrecipitation,
      this.probabilityOfPrecipitationUnit,
      this.uv,
      this.clouds,
      this.rain,
      this.snow,
      this.wind,
      this.weather});

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    dtTxt = json['dt_txt'];
    temperature = json['temperature'];
    tempratureFeelsLike = json['temprature_feels_like'];
    dewPointTemprature = json['dew_point_temprature'];
    tempratureUnit = json['temprature_unit'];
    pressure = json['pressure'];
    pressureUnit = json['pressure_unit'];
    humidity = json['humidity'];
    humidityUnit = json['humidity_unit'];
    visibility = json['visibility'];
    visibilityUnit = json['visibility_unit'];
    probabilityOfPrecipitation = json['probability_of_precipitation'];
    probabilityOfPrecipitationUnit = json['probability_of_precipitation_unit'];
    uv = json['uv'] != null ? Uv.fromJson(json['uv']) : null;
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    snow = json['snow'] != null ? Rain.fromJson(json['snow']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = this.dt;
    data['dt_txt'] = this.dtTxt;
    data['temperature'] = this.temperature;
    data['temprature_feels_like'] = this.tempratureFeelsLike;
    data['dew_point_temprature'] = this.dewPointTemprature;
    data['temprature_unit'] = this.tempratureUnit;
    data['pressure'] = this.pressure;
    data['pressure_unit'] = this.pressureUnit;
    data['humidity'] = this.humidity;
    data['humidity_unit'] = this.humidityUnit;
    data['visibility'] = this.visibility;
    data['visibility_unit'] = this.visibilityUnit;
    data['probability_of_precipitation'] = this.probabilityOfPrecipitation;
    data['probability_of_precipitation_unit'] =
        this.probabilityOfPrecipitationUnit;
    if (this.uv != null) {
      data['uv'] = this.uv!.toJson();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds!.toJson();
    }
    if (this.rain != null) {
      data['rain'] = this.rain!.toJson();
    }
    if (this.snow != null) {
      data['snow'] = this.snow!.toJson();
    }
    if (this.wind != null) {
      data['wind'] = this.wind!.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Daily {
  dynamic dt;
  String? dtTxt;
  dynamic sunrise;
  String? sunriseTxt;
  dynamic sunset;
  String? sunsetTxt;
  dynamic moonPhase;
  String? summary;
  Temperature? temperature;
  TemperatureFeelsLike? temperatureFeelsLike;
  dynamic dewPointTemprature;
  String? tempratureUnit;
  dynamic pressure;
  String? pressureUnit;
  dynamic humidity;
  String? humidityUnit;
  dynamic probabilityOfPrecipitation;
  String? probabilityOfPrecipitationUnit;
  Uv? uv;
  Clouds? clouds;
  Rain? rain;
  Rain? snow;
  Wind? wind;
  List<Weather>? weather;

  Daily(
      {this.dt,
      this.dtTxt,
      this.sunrise,
      this.sunriseTxt,
      this.sunset,
      this.sunsetTxt,
      this.moonPhase,
      this.summary,
      this.temperature,
      this.temperatureFeelsLike,
      this.dewPointTemprature,
      this.tempratureUnit,
      this.pressure,
      this.pressureUnit,
      this.humidity,
      this.humidityUnit,
      this.probabilityOfPrecipitation,
      this.probabilityOfPrecipitationUnit,
      this.uv,
      this.clouds,
      this.rain,
      this.snow,
      this.wind,
      this.weather});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    dtTxt = json['dt_txt'];
    sunrise = json['sunrise'];
    sunriseTxt = json['sunrise_txt'];
    sunset = json['sunset'];
    sunsetTxt = json['sunset_txt'];
    moonPhase = json['moon_phase'];
    summary = json['summary'];
    temperature = json['temperature'] != null
        ? Temperature.fromJson(json['temperature'])
        : null;
    temperatureFeelsLike = json['temperature_feels_like'] != null
        ? TemperatureFeelsLike.fromJson(json['temperature_feels_like'])
        : null;
    dewPointTemprature = json['dew_point_temprature'];
    tempratureUnit = json['temprature_unit'];
    pressure = json['pressure'];
    pressureUnit = json['pressure_unit'];
    humidity = json['humidity'];
    humidityUnit = json['humidity_unit'];
    probabilityOfPrecipitation = json['probability_of_precipitation'];
    probabilityOfPrecipitationUnit = json['probability_of_precipitation_unit'];
    uv = json['uv'] != null ? Uv.fromJson(json['uv']) : null;
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    snow = json['snow'] != null ? Rain.fromJson(json['snow']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = this.dt;
    data['dt_txt'] = this.dtTxt;
    data['sunrise'] = this.sunrise;
    data['sunrise_txt'] = this.sunriseTxt;
    data['sunset'] = this.sunset;
    data['sunset_txt'] = this.sunsetTxt;
    data['moon_phase'] = this.moonPhase;
    data['summary'] = this.summary;
    if (this.temperature != null) {
      data['temperature'] = this.temperature!.toJson();
    }
    if (this.temperatureFeelsLike != null) {
      data['temperature_feels_like'] = this.temperatureFeelsLike!.toJson();
    }
    data['dew_point_temprature'] = this.dewPointTemprature;
    data['temprature_unit'] = this.tempratureUnit;
    data['pressure'] = this.pressure;
    data['pressure_unit'] = this.pressureUnit;
    data['humidity'] = this.humidity;
    data['humidity_unit'] = this.humidityUnit;
    data['probability_of_precipitation'] = this.probabilityOfPrecipitation;
    data['probability_of_precipitation_unit'] =
        this.probabilityOfPrecipitationUnit;
    if (this.uv != null) {
      data['uv'] = this.uv!.toJson();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds!.toJson();
    }
    if (this.rain != null) {
      data['rain'] = this.rain!.toJson();
    }
    if (this.snow != null) {
      data['snow'] = this.snow!.toJson();
    }
    if (this.wind != null) {
      data['wind'] = this.wind!.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Temperature {
  dynamic minimum;
  dynamic maximum;
  dynamic daytime;
  dynamic nighttime;
  dynamic evening;
  dynamic morning;

  Temperature(
      {this.minimum,
      this.maximum,
      this.daytime,
      this.nighttime,
      this.evening,
      this.morning});

  Temperature.fromJson(Map<String, dynamic> json) {
    minimum = json['minimum'];
    maximum = json['maximum'];
    daytime = json['daytime'];
    nighttime = json['nighttime'];
    evening = json['evening'];
    morning = json['morning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['minimum'] = this.minimum;
    data['maximum'] = this.maximum;
    data['daytime'] = this.daytime;
    data['nighttime'] = this.nighttime;
    data['evening'] = this.evening;
    data['morning'] = this.morning;
    return data;
  }
}

class TemperatureFeelsLike {
  dynamic daytime;
  dynamic nighttime;
  dynamic evening;
  dynamic morning;

  TemperatureFeelsLike(
      {this.daytime, this.nighttime, this.evening, this.morning});

  TemperatureFeelsLike.fromJson(Map<String, dynamic> json) {
    daytime = json['daytime'];
    nighttime = json['nighttime'];
    evening = json['evening'];
    morning = json['morning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['daytime'] = this.daytime;
    data['nighttime'] = this.nighttime;
    data['evening'] = this.evening;
    data['morning'] = this.morning;
    return data;
  }
}

class Snow {
  dynamic amount;
  String? unit;

  Snow({this.amount, this.unit});

  Snow.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class Alerts {
  String? senderName;
  String? event;
  dynamic start;
  dynamic end;
  String? description;
  List<String>? tags;

  Alerts(
      {this.senderName,
      this.event,
      this.start,
      this.end,
      this.description,
      this.tags});

  Alerts.fromJson(Map<String, dynamic> json) {
    senderName = json['sender_name'];
    event = json['event'];
    start = json['start'];
    end = json['end'];
    description = json['description'];
    tags = json['tags'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sender_name'] = this.senderName;
    data['event'] = this.event;
    data['start'] = this.start;
    data['end'] = this.end;
    data['description'] = this.description;
    data['tags'] = this.tags;
    return data;
  }
}
