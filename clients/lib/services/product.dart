import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:clients/conf/configure.dart';

getProductResult([int page =0]) async{
  String url='http://'+Configure.IP+':'+Configure.PORT+'/?action=getProducts&page=$page';

  var res = await http.get(url);

  String body = res.body;

  var json = jsonDecode(body);

  return json['items'] as List;

}