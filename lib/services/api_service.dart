import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final endPointUrl =
      "http://newsapi.org/v2/top-headlines?country=us&apiKey=6635554347504a43a2a637a294f761a8";

  Future getArticle() async {
    try {
      SharedPreferences prefs = await _prefs;
      var uri = Uri.parse(endPointUrl);
      Response res = await get(uri);
      if (res.statusCode == 200) {
        prefs.setString('response', res.body);
        return res.body;
      } else if (prefs.getString('response') != null) {
        print('----------prefs.getString(response) not null-----------\t' +
            prefs.getString('response'));
        return prefs.getString('response');
      } else {
        throw ("did not get articles");
        //here i show stack bar message
      }
    } catch (e) {
      SharedPreferences prefs = await _prefs;
      print('======= e.toString() inside catch ======== \t' + e.toString());
      return prefs.getString('response');
    }
  }
}
