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
    //Essa parte demanda reajuste de acordo com o retorno da API que estiver usando
    String resultCode = result.data['code'];
    String resultMessage = result.data['message'];

    //Essa parte do código é responsavel por lidar com o retorno da API em casos de retorno 444
    //Exemplo:
    // if (resultCode == '0001') {
    //   throw ExpiredTokenError(message: resultMessage);
    // }
  }
}
