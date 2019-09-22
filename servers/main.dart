import 'dart:convert';
import 'dart:io';
import 'data.dart';

main() async{
  var requestServer = await HttpServer.bind('10.102.13.43', 8080);

  print('server is runing on poart 8080');

  await for(HttpRequest res in requestServer){
    handleMessages(res);
  }
}

void handleMessages(HttpRequest res){
  try{
    if(res.method =='GET'){
      handelGET(res);
    }else if(res.method=='POST'){
      handelPOST(res);
    }
  }catch(e){
    print('error : $e');
  }
}

void handelGET(HttpRequest res){
  var action = res.uri.queryParameters['action'];

  if(action=='getProducts'){
    var page = res.uri.queryParameters['page'];
    print('get products');
    res.response
    ..statusCode=HttpStatus.ok
    ..write(json.encode(products))
    ..close();
  }

  if(action=='getNews'){
    print('get newss');
    res.response
    ..statusCode=HttpStatus.ok
    ..write(json.encode(news))
    ..close();
  }
} 

void handelPOST(HttpRequest res){
   res.response..write('request post')..close();
} 

abstract class HttpStatus{
  static const int continue_ =100;
  static const int switchingProtocols =101;
  static const int ok =200;
  static const int created =201;
  static const int accepted =202;
  static const int nonAuthoritaiveInformation =203;
  static const int noContent =204;
  static const int resetContent =205;
  static const int partialContent =206;
  static const int multipleChoices =300;
  static const int movedPermanently =301;
  static const int found =302;
  static const int movedTemporarily =302;
  static const int seeOther =303;
  static const int notModified =304;
  static const int useProxy =305;
  static const int temporaryRedirect =307;
  static const int badRequest =400;
  static const int unauthorized =401;
  static const int paymentRequired =402;
  static const int forbidden =403;
  static const int notFound =404;
  static const int methodNotAllowed =405;
  static const int notAcceptable =406;
  static const int proxyAuthenticationRequired =407;
  static const int requestTimeout =408;
  static const int conflict =409;
  static const int gone =410;
  static const int lengRequired =411;
  static const int preconditionaFailed =412;
  static const int requestEntityToolarge =413;
  static const int reqquestUriTooLong =414;
  static const int unsupportedMediaType =415;
  static const int requestedRangeNotSatisfiable =416;
  static const int expectationFailed =407;
  static const int upgradeRequired =426;
}