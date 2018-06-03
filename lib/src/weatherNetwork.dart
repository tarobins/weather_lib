import 'dart:async';
import 'dart:convert';

import 'dart:io';

const String url =
    'http://weather.uwaterloo.ca/waterloo_weather_station_data.xml';

Future<Stream<String>> getXmlStringStream() {
  return HttpClient()
      .getUrl(Uri.parse(url))
      .then((request) => request.close())
      .then((response) => response.transform(utf8.decoder));
}