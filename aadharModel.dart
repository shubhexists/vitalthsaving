// ignore_for_file: file_names, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, unused_local_variable
import 'dart:convert';

import 'package:abdm_sandbox_integration/Screens/AuthScreen/models/authModel.dart';
// import 'package:abdm_sandbox_integration/Screens/NewAccountScreen/aadhaarPage/verifyAadharOTP.dart';
import 'package:http/http.dart' as http;

var firstName = "Shubham";
var lastName = "Singh";
var password = "Abha@2005";
var healthID = "shubh622005";
var email = 'shubh622005@gmail.com';
var isMobileNumberLinked;
var txnID_After_Mobile_Verification;
var txnID_afterOTP_Verified;
var txnID_afterOTP;
var mobileNumber_afterAadhar_OTP;
var aadhaarNumber = 819939532213;
var MobileNumber = 9354992488;
var encrypted_aadhaarNumber =
    "dm6E+x6gOuisjTwmKJXNVSMdzR2DmnB2J4H+zLx90nX3ILoDw3TDyA52peHYgL+WZpmhtfw74zD99htyax451SlsaAbHHfEfB64hRDwlAhXpWADOF8QqzC4yMxs5NBOMClz9yRZNVUoAMXhZ2povOLwCQC7CBieds8/X88Q5pYvq3sJeUI0hIgCw/8ivqIg0x24yBIx390eiuwTygd5butq6kY38zBwdapI8GUKN4OEBZzK+204kyhHoCT4PVbc4ouJOlNfdIhBxhlGTcycrbqy/brJt4SZSv+Dj+Q16KEuhzsf6r0RdCGXiSiE0XACpCw/Z2JwQPIvpaNJdbGmJv9ZKR1ar3gEAatc4AyUU+caszp974j+5G9HOWgeFt7of8LYV9/LiQbdohW61faDrVN66e6jCW0W/zALgeJHZNRm1jNbgy1kgSIkpIHcMS0CM67fXy1MVPKye2hvq3H9oAQGfolenb/J7SGooAqgMsXjP3hvxBdH6sn76Id2W2qFzHlmsKYIa62kjS2HUoIRXfYg2zCp7XwZ6obyLAt9b+Zex5mTrTMENYkwYNeMaJmI+valGZlsdad3gFVGOj22MO5jaEktMLXA6UaykQgYyhU/J9EwYN1xxKcHP/J9xqnkEpCR3bYk7/SFi3bZDZM+cNGvPDaWbbJb5Hl885FwyP5A=";
sendAadhaarOTP() async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v2/registration/aadhaar/generateOtp'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({
        'aadhaar': encrypted_aadhaarNumber,
      }));
  var jsonData = jsonDecode(response.body);
  txnID_afterOTP = jsonData['txnId'];
  mobileNumber_afterAadhar_OTP = jsonData['mobileNumber'];
  print(txnID_afterOTP);
  print(mobileNumber_afterAadhar_OTP);
  return [txnID_afterOTP, mobileNumber_afterAadhar_OTP];
}

verifyAadhaarOTP(OTP) async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v1/registration/aadhaar/verifyOTP'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({
        'txnId': txnID_afterOTP,
        'otp': OTP,
      }));
  var jsonData = jsonDecode(response.body);
  txnID_afterOTP_Verified = jsonData['txnId'];
  // print(txnID_afterOTP_Verified);
  return txnID_afterOTP_Verified;
}

checkMobileNumber() async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v2/registration/aadhaar/checkAndGenerateMobileOTP'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({
        'txnId': txnID_afterOTP_Verified,
        'mobile': MobileNumber,
      }));
  var jsonData = jsonDecode(response.body);
  txnID_After_Mobile_Verification = jsonData['txnId'];
  isMobileNumberLinked = jsonData['mobileLinked'];
  return [txnID_After_Mobile_Verification, isMobileNumberLinked];
}

createAbhaNumber() async {
  var response = await http.post(
      Uri.parse(
          'https://healthidsbx.abdm.gov.in/api/v1/registration/aadhaar/createHealthIdWithPreVerified'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': "Bearer " + accessToken
      },
      body: jsonEncode({
        "txnId": txnID_After_Mobile_Verification,
        "firstName": firstName,
        "lastName": lastName,
        "password": password,
        "healthId": healthID,
        "email": email,
      }));
  var jsonData = jsonDecode(response.body);
  print(jsonData);
}
