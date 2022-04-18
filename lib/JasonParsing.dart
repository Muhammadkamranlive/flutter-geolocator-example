import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class ParsedData
{
  Future GetJasonData () async {
    const apiKey = 'e72ca729af228beabd5d20e3b7749713';
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      print(jsonResponse['userId']);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

  }

}