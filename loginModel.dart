// ignore_for_file: file_names, prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables, non_constant_identifier_names
import 'dart:convert';

import 'package:abdm_sandbox_integration/Screens/AuthScreen/models/authModel.dart';
import 'package:http/http.dart' as http;

var LogintxnId_afterVerification;
var LogintxnId;
loginUsingAadhaarOTP() async {
  var response = await http.post(
      Uri.parse('https://healthidsbx.abdm.gov.in/api/v1/auth/init'),
      headers: {
        'Accept-Language': 'en-US',
        "Content-Type": "application/json",
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({
        "authMethod": "AADHAAR_OTP",
        "healthid": "shubh622005@sbx",
      }));
  var jsonData = jsonDecode(response.body);
  print(jsonData);
  LogintxnId = jsonData['txnId'];
  return LogintxnId;
}

loginUsingMobileOTP() async {
  var response = await http.post(
      Uri.parse('https://healthidsbx.abdm.gov.in/api/v1/auth/init'),
      headers: {
        'Accept-Language': 'en-US',
        "Content-Type": "application/json",
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({
        "authMethod": "MOBILE_OTP",
        "healthid": "shubh622005@sbx",
      }));
  var jsonData = jsonDecode(response.body);
  print(jsonData);
  LogintxnId = jsonData['txnId'];
  return LogintxnId;
}

verifyLoginAadhaarOTP(otp) async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v1/auth/confirmWithAadhaarOtp'),
      headers: {
        "Authorization": "Bearer " + accessToken,
        "Content-Type": "application/json",
        "Accept-Language": "en-US"
      },
      body: jsonEncode({"otp": otp, "txnId": LogintxnId}));
  var jsonData = jsonDecode(response.body);
  // print(jsonData);
  LogintxnId_afterVerification = jsonData["token"];
  print(LogintxnId_afterVerification);
  return LogintxnId_afterVerification;
}

verifyLoginMobileOTP(otp) async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v1/auth/confirmWithMobileOTP'),
      headers: {
        "Authorization": "Bearer " + accessToken,
        "Content-Type": "application/json",
        "Accept-Language": "en-US"
      },
      body: jsonEncode({"otp": otp, "txnId": LogintxnId}));
  var jsonData = jsonDecode(response.body);
  LogintxnId_afterVerification = jsonData["token"];
  print(LogintxnId_afterVerification);
  return LogintxnId_afterVerification;
}
