import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
part 'application.g.dart';

@JsonSerializable()

class Application {
  Application(this.endDate, this.jobGroup, this.location, this.startDate);

  String location;
  String jobGroup;
  String startDate;
  String endDate;

  factory Application.fromJson(Map<String, dynamic> json) => _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}

int applicationLength = 0;

Future<List<Application>> fetchData() async {
  try {
    http.Response response = await http.get(Uri.parse('http://ec2-3-80-40-187.compute-1.amazonaws.com:8080/mobile'));
    String jsonData = response.body;
    var myJson = jsonDecode(jsonData);
    List<Application> temp = [];

    applicationLength = myJson.length;

    for (var i =0; i<applicationLength; i++) {
      temp.add(Application.fromJson(myJson[i]));
    }
    return temp;

  } catch (e) {
    print('정보 불러오기 실패');
    throw e;
  }
}
