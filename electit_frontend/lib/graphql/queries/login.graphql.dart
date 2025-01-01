import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Login {
  factory Variables$Query$Login({required Input$LoginInput credentials}) =>
      Variables$Query$Login._({
        r'credentials': credentials,
      });

  Variables$Query$Login._(this._$data);

  factory Variables$Query$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$credentials = data['credentials'];
    result$data['credentials'] =
        Input$LoginInput.fromJson((l$credentials as Map<String, dynamic>));
    return Variables$Query$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginInput get credentials =>
      (_$data['credentials'] as Input$LoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$credentials = credentials;
    result$data['credentials'] = l$credentials.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Login<Variables$Query$Login> get copyWith =>
      CopyWith$Variables$Query$Login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$credentials = credentials;
    final lOther$credentials = other.credentials;
    if (l$credentials != lOther$credentials) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$credentials = credentials;
    return Object.hashAll([l$credentials]);
  }
}

abstract class CopyWith$Variables$Query$Login<TRes> {
  factory CopyWith$Variables$Query$Login(
    Variables$Query$Login instance,
    TRes Function(Variables$Query$Login) then,
  ) = _CopyWithImpl$Variables$Query$Login;

  factory CopyWith$Variables$Query$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Login;

  TRes call({Input$LoginInput? credentials});
}

class _CopyWithImpl$Variables$Query$Login<TRes>
    implements CopyWith$Variables$Query$Login<TRes> {
  _CopyWithImpl$Variables$Query$Login(
    this._instance,
    this._then,
  );

  final Variables$Query$Login _instance;

  final TRes Function(Variables$Query$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? credentials = _undefined}) =>
      _then(Variables$Query$Login._({
        ..._instance._$data,
        if (credentials != _undefined && credentials != null)
          'credentials': (credentials as Input$LoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Login<TRes>
    implements CopyWith$Variables$Query$Login<TRes> {
  _CopyWithStubImpl$Variables$Query$Login(this._res);

  TRes _res;

  call({Input$LoginInput? credentials}) => _res;
}

class Query$Login {
  Query$Login({
    required this.login,
    this.$__typename = 'Query',
  });

  factory Query$Login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Login(
      login: Query$Login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Login$login login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Login on Query$Login {
  CopyWith$Query$Login<Query$Login> get copyWith => CopyWith$Query$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Login<TRes> {
  factory CopyWith$Query$Login(
    Query$Login instance,
    TRes Function(Query$Login) then,
  ) = _CopyWithImpl$Query$Login;

  factory CopyWith$Query$Login.stub(TRes res) = _CopyWithStubImpl$Query$Login;

  TRes call({
    Query$Login$login? login,
    String? $__typename,
  });
  CopyWith$Query$Login$login<TRes> get login;
}

class _CopyWithImpl$Query$Login<TRes> implements CopyWith$Query$Login<TRes> {
  _CopyWithImpl$Query$Login(
    this._instance,
    this._then,
  );

  final Query$Login _instance;

  final TRes Function(Query$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Login(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as Query$Login$login),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Login$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Query$Login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Query$Login<TRes>
    implements CopyWith$Query$Login<TRes> {
  _CopyWithStubImpl$Query$Login(this._res);

  TRes _res;

  call({
    Query$Login$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Login$login<TRes> get login =>
      CopyWith$Query$Login$login.stub(_res);
}

const documentNodeQueryLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'credentials')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'credentials'),
            value: VariableNode(name: NameNode(value: 'credentials')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Login _parserFn$Query$Login(Map<String, dynamic> data) =>
    Query$Login.fromJson(data);
typedef OnQueryComplete$Query$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Login?,
);

class Options$Query$Login extends graphql.QueryOptions<Query$Login> {
  Options$Query$Login({
    String? operationName,
    required Variables$Query$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Login? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Login? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Login(data),
                  ),
          onError: onError,
          document: documentNodeQueryLogin,
          parserFn: _parserFn$Query$Login,
        );

  final OnQueryComplete$Query$Login? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Login extends graphql.WatchQueryOptions<Query$Login> {
  WatchOptions$Query$Login({
    String? operationName,
    required Variables$Query$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Login? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Login,
        );
}

class FetchMoreOptions$Query$Login extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Login({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Login variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryLogin,
        );
}

extension ClientExtension$Query$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Login>> query$Login(
          Options$Query$Login options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Login> watchQuery$Login(
          WatchOptions$Query$Login options) =>
      this.watchQuery(options);
  void writeQuery$Login({
    required Query$Login data,
    required Variables$Query$Login variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLogin),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Login? readQuery$Login({
    required Variables$Query$Login variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLogin),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Login.fromJson(result);
  }
}

class Query$Login$login {
  Query$Login$login({
    required this.token,
    this.$__typename = 'AuthResponse',
  });

  factory Query$Login$login.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Query$Login$login(
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Login$login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Login$login on Query$Login$login {
  CopyWith$Query$Login$login<Query$Login$login> get copyWith =>
      CopyWith$Query$Login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Login$login<TRes> {
  factory CopyWith$Query$Login$login(
    Query$Login$login instance,
    TRes Function(Query$Login$login) then,
  ) = _CopyWithImpl$Query$Login$login;

  factory CopyWith$Query$Login$login.stub(TRes res) =
      _CopyWithStubImpl$Query$Login$login;

  TRes call({
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Login$login<TRes>
    implements CopyWith$Query$Login$login<TRes> {
  _CopyWithImpl$Query$Login$login(
    this._instance,
    this._then,
  );

  final Query$Login$login _instance;

  final TRes Function(Query$Login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Login$login(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Login$login<TRes>
    implements CopyWith$Query$Login$login<TRes> {
  _CopyWithStubImpl$Query$Login$login(this._res);

  TRes _res;

  call({
    String? token,
    String? $__typename,
  }) =>
      _res;
}
