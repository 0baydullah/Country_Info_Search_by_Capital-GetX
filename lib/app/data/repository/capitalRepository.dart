
import 'package:http/http.dart' as http;
import 'package:country_info_by_capital/app/data/model/capitalModel.dart';

class CapitalRepository{
  Future<List<CapitalModel>> getResponse(String loc) async{
    final url = Uri.parse("https://restcountries.com/v3.1/capital/$loc");
    final response = await http.get(url);

    print(response.body);
    return capitalModelFromJson(response.body);
  }
}