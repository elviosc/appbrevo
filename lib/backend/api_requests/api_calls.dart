import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendAPIResendCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? descricao = '',
    String? nome = '',
  }) async {
    final ffApiRequestBody = '''
{
  "from": "semcodigobr <naoresponda@semcodigobr.com.br>",
  "to": "$email",
  "subject": "Olá $nome recebeu agora",
  "text": "$descricao"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendAPIResend',
      apiUrl: 'https://api.resend.com/emails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer re_Z64m2e6Y_52yrbFPqk5KvDV5XkQM2pHkh',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SendBrevoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? desc = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "sender": {
    "email": "rededroide@gmail.com"
  },
  "to": [
    {
      "email": "$email"
    }
  ],
  "replyTo": {
    "email": "rededroide@gmail.com"
  },
  "textContent": "$desc",
  "subject": "$nome - Confirmação de envio",
  "tags": [
    "sendBrevo"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendBrevo',
      apiUrl: 'https://api.brevo.com/v3/smtp/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key':
            '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',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
