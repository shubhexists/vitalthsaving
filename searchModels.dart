// ignore_for_file: file_names, prefer_interpolation_to_compose_strings
import 'dart:convert';
import 'package:abdm_sandbox_integration/Screens/AuthScreen/models/authModel.dart';
import 'package:http/http.dart' as http;

searchbyHealthID() async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v1/search/searchByHealthId'),
      headers: {
        "Content-Type": "application/json",
        "Accept-Language": 'en-US',
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({"healthId": "shubh622005@sbx"}));
  var jsonData = jsonDecode(response.body);
  print(jsonData);
}

searchbyMobileNumber() async {
  var response = await http.post(
      Uri.parse("https://healthidsbx.abdm.gov.in/api/v1/search/searchByMobile"),
      headers: {
        "Content-Type": "application/json",
        "Accept-Language": 'en-US',
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({"mobile": "9354992488"}));
  var jsonData = jsonDecode(response.body);
  print(jsonData);
}
