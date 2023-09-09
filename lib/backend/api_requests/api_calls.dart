import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class IndexCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Index',
      apiUrl: 'http://43.204.29.70:8081',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BrowseMentorsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Browse Mentors',
      apiUrl: 'http://13.200.23.138:8081/api/v1/users/browse',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic mentorName(dynamic response) => getJsonField(
        response,
        r'''$['mentor'][0]['name']''',
        true,
      );
  static dynamic mentorList(dynamic response) => getJsonField(
        response,
        r'''$['mentor']''',
        true,
      );
}

class SignupUsersCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "name": "hubudddbibiuhh",
  "email": "Iron@gmail.com",
  "password": "Iron123456"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup users',
      apiUrl: 'http://13.200.23.138:8081/api/v1/users/user/SignUp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$['status']''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$['token']''',
      );
  static dynamic photo(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['photo']''',
      );
  static dynamic freeSession(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['freeSession']''',
      );
  static dynamic sessions(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['sessions']''',
      );
  static dynamic active(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['active']''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['_id']''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['name']''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['email']''',
      );
  static dynamic slug(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['slug']''',
      );
  static dynamic vv(dynamic response) => getJsonField(
        response,
        r'''$['data']['user']['__v']''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$['message']''',
      );
  static dynamic redirect(dynamic response) => getJsonField(
        response,
        r'''$['redirect']''',
      );
}

class LoginUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "test0987654321@gmail.com",
  "password": "test1234567"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login user',
      apiUrl: 'http://13.200.23.138:8081/api/v1/users/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFeaturedMentorsCall {
  static Future<ApiCallResponse> call() {
    print('apicalled mentor list');
    return ApiManager.instance.makeApiCall(
      callName: 'Get Featured Mentors',
      apiUrl: 'http://13.200.23.138:8081/api/v1/users/featured-mentors',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic featuredmentorlist(dynamic response) {
    print(response);
    return getJsonField(
        response,
        r'''$.featuredMentors''',
        true,
      );}
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
