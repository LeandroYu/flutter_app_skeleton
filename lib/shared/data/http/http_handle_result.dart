import '../../domain/errors/exceptions.dart';
import 'response.dart';

class HttpHandleResult {
  ClientResponse httpHandleResult(ClientResponse result) {
    if (result.statusCode == 401) {
      throw const ExpiredTokenException();
    }
    if (result.statusCode == 404) {
      throw const NotFoundException();
    }

    if (result.statusCode == 444) {
      _handleApiErrorCode(result);
    }

    if (result.statusCode == 200 || result.statusCode == 201) {
      return result;
    }

    throw const UnknownExcepton();
  }

  void _handleApiErrorCode(ClientResponse result) {
    //TODO:
    //need to change it to fit your API error return
    String resultCode = result.data['code'];
    String resultMessage = result.data['message'];

    //this part is to handle the 444 codes 
    //Exemplo:
    // switch(resultCode)
    //  case '0001': 
    //    throw ExpiredTokenError();
    //  default: 
    //     throw UnkownError();
  }
}
