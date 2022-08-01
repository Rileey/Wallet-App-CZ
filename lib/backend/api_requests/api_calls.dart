import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GenerateCryptoWalletCall {
  static Future<ApiCallResponse> call({
    String blockchain = 'bitcoin',
    String network = 'testnet',
    String walletId = '60c9d9921c38030006675ff6',
    String context = '',
    String address = '',
    int createdTimestamp,
    String label = '',
  }) {
    final body = '''
{
  "context": "${context}",
  "data": {
    "item": {
      "label": "${label}"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generate Crypto Wallet',
      apiUrl:
          'https://rest.cryptoapis.io/v2/wallet-as-a-service/wallets/${walletId}/${blockchain}/${network}/addresses?context=${context}',
      callType: ApiCallType.POST,
      headers: {
        'X-API-Key': '\t35d1737e7d3c333bd39b8d2e6905dbd78e4109d3',
        'Content-Type': 'application/json',
        'Host': 'https://rest.cryptoapis.io/v2',
      },
      params: {
        'address': address,
        'createdTimestamp': createdTimestamp,
        'label ': label,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic apiVersion(dynamic response) => getJsonField(
        response,
        r'''$.apiVersion''',
      );
}

class GetWalletAddressDetailsCall {
  static Future<ApiCallResponse> call({
    String blockchain = 'bitcoin',
    String network = 'testnet',
    String walletId = '60c9d9921c38030006675ff6',
    String context = '',
    String address = '',
    int createdTimestamp,
    String label = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Wallet Address Details',
      apiUrl:
          'https://rest.cryptoapis.io/v2/blockchain-data/${blockchain}/${network}/addresses/${address}?context=yourExampleString',
      callType: ApiCallType.GET,
      headers: {
        'X-API-Key': '\t35d1737e7d3c333bd39b8d2e6905dbd78e4109d3',
        'Content-Type': 'application/json',
        'Host': 'https://rest.cryptoapis.io/v2',
      },
      params: {
        'walletId': walletId,
        'context': context,
        'createdTimestamp': createdTimestamp,
        'label ': label,
      },
      returnBody: true,
    );
  }

  static dynamic apiVersion(dynamic response) => getJsonField(
        response,
        r'''$.apiVersion''',
      );
  static dynamic currentBalance(dynamic response) => getJsonField(
        response,
        r'''$.data.item.confirmedBalance.amount''',
      );
  static dynamic walletcurrency(dynamic response) => getJsonField(
        response,
        r'''$.data.item.confirmedBalance.unit''',
      );
  static dynamic totalReceived(dynamic response) => getJsonField(
        response,
        r'''$.data.item.totalReceived.amount''',
      );
  static dynamic totalSpent(dynamic response) => getJsonField(
        response,
        r'''$.data.item.totalSpent.amount''',
      );
  static dynamic incomingtransactions(dynamic response) => getJsonField(
        response,
        r'''$.data.item.incomingTransactionsCount''',
      );
  static dynamic outgoingtransactions(dynamic response) => getJsonField(
        response,
        r'''$.data.item.outgoingTransactionsCount''',
      );
  static dynamic totaltransactions(dynamic response) => getJsonField(
        response,
        r'''$.data.item.transactionsCount''',
      );
}

class GenerateCryptoWalletCopyCall {
  static Future<ApiCallResponse> call({
    String blockchain = 'bitcoin',
    String network = 'testnet',
    String walletId = '60c9d9921c38030006675ff6',
    String context = '',
    String address = '',
    int createdTimestamp,
    String label = '',
    String amount = '',
    String feePriority = '',
    String recipientAddress = '',
    String note = '',
  }) {
    final body = '''
{
    "context": "yourExampleString",
    "data": {
        "item": {
            "amount": "${amount}",
            "callbackSecretKey": "yourSecretString",
            "callbackUrl": "https:\/\/example.com",
            "feePriority": "${feePriority}",
            "note": "${note}",
            "recipientAddress":"${recipientAddress}" 
        }
    }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generate Crypto Wallet Copy',
      apiUrl:
          'https://rest.cryptoapis.io/v2/wallet-as-a-service/wallets/${walletId}/${blockchain}/${network}/transaction-requests?context=yourExampleString',
      callType: ApiCallType.POST,
      headers: {
        'X-API-Key': '\t35d1737e7d3c333bd39b8d2e6905dbd78e4109d3',
        'Content-Type': 'application/json',
        'Host': 'https://rest.cryptoapis.io/v2',
      },
      params: {
        'context': context,
        'address': address,
        'createdTimestamp': createdTimestamp,
        'label ': label,
        'amount': amount,
        'feePriority': feePriority,
        'recipientAddress': recipientAddress,
        'note': note,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic apiVersion(dynamic response) => getJsonField(
        response,
        r'''$.apiVersion''',
      );
}

class GenerateNewAddressCall {
  static Future<ApiCallResponse> call({
    String currencySymbol = '',
  }) {
    final body = '''
{
  "currencySymbol":"${currencySymbol}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generate New Address',
      apiUrl: 'https://api.bittrex.com/v3/addresses',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'currencySymbol': currencySymbol,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class CreateSubaccountCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Create Subaccount',
      apiUrl: 'https://api.bittrex.com/v3/subaccounts',
      callType: ApiCallType.POST,
      headers: {
        'Content-Types': 'application/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
    );
  }
}

class GetSubaccountCall {
  static Future<ApiCallResponse> call({
    String subaccountId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Subaccount',
      apiUrl: 'https://api.bittrex.com/v3/subaccounts/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'subaccountId': subaccountId,
      },
      returnBody: true,
    );
  }
}
