// ignore_for_file: file_names, unused_local_variable, prefer_typing_uninitialized_variables
import 'dart:convert';

import 'package:http/http.dart' as http;

var accessToken;

auth() async {
  var response = await http.post(
      Uri.parse('https://dev.ndhm.gov.in/gateway/v0.5/sessions'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'clientId': 'SBX_002457',
        'clientSecret': '3076119b-ef0c-41d6-9f10-c6d52ba4f2b3'
      }));
  var jsonData = jsonDecode(response.body);
  accessToken = jsonData['accessToken'];
  print(accessToken);
  return accessToken;
}



// -----BEGIN PUBLIC KEY-----
// MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAstWB95C5pHLXiYW59qyO
// 4Xb+59KYVm9Hywbo77qETZVAyc6VIsxU+UWhd/k/YtjZibCznB+HaXWX9TVTFs9N
// wgv7LRGq5uLczpZQDrU7dnGkl/urRA8p0Jv/f8T0MZdFWQgks91uFffeBmJOb58u
// 68ZRxSYGMPe4hb9XXKDVsgoSJaRNYviH7RgAI2QhTCwLEiMqIaUX3p1SAc178ZlN
// 8qHXSSGXvhDR1GKM+y2DIyJqlzfik7lD14mDY/I4lcbftib8cv7llkybtjX1Aayf
// Zp4XpmIXKWv8nRM488/jOAF81Bi13paKgpjQUUuwq9tb5Qd/DChytYgBTBTJFe7i
// rDFCmTIcqPr8+IMB7tXA3YXPp3z605Z6cGoYxezUm2Nz2o6oUmarDUntDhq/PnkN
// ergmSeSvS8gD9DHBuJkJWZweG3xOPXiKQAUBr92mdFhJGm6fitO5jsBxgpmulxpG
// 0oKDy9lAOLWSqK92JMcbMNHn4wRikdI9HSiXrrI7fLhJYTbyU3I4v5ESdEsayHXu
// iwO/1C8y56egzKSw44GAtEpbAkTNEEfK5H5R0QnVBIXOvfeF4tzGvmkfOO6nNXU3
// o/WAdOyV3xSQ9dqLY5MEL4sJCGY1iJBIAQ452s8v0ynJG5Yq+8hNhsCVnklCzAls
// IzQpnSVDUVEzv17grVAw078CAwEAAQ==
// -----END PUBLIC KEY-----
