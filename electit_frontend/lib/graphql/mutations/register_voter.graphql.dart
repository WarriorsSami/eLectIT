import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$RegisterVoter {
  factory Variables$Mutation$RegisterVoter({required Input$VoterInput voter}) =>
      Variables$Mutation$RegisterVoter._({
        r'voter': voter,
      });

  Variables$Mutation$RegisterVoter._(this._$data);

  factory Variables$Mutation$RegisterVoter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$voter = data['voter'];
    result$data['voter'] =
        Input$VoterInput.fromJson((l$voter as Map<String, dynamic>));
    return Variables$Mutation$RegisterVoter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VoterInput get voter => (_$data['voter'] as Input$VoterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$voter = voter;
    result$data['voter'] = l$voter.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RegisterVoter<Variables$Mutation$RegisterVoter>
      get copyWith => CopyWith$Variables$Mutation$RegisterVoter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RegisterVoter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$voter = voter;
    final lOther$voter = other.voter;
    if (l$voter != lOther$voter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$voter = voter;
    return Object.hashAll([l$voter]);
  }
}

abstract class CopyWith$Variables$Mutation$RegisterVoter<TRes> {
  factory CopyWith$Variables$Mutation$RegisterVoter(
    Variables$Mutation$RegisterVoter instance,
    TRes Function(Variables$Mutation$RegisterVoter) then,
  ) = _CopyWithImpl$Variables$Mutation$RegisterVoter;

  factory CopyWith$Variables$Mutation$RegisterVoter.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RegisterVoter;

  TRes call({Input$VoterInput? voter});
}

class _CopyWithImpl$Variables$Mutation$RegisterVoter<TRes>
    implements CopyWith$Variables$Mutation$RegisterVoter<TRes> {
  _CopyWithImpl$Variables$Mutation$RegisterVoter(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RegisterVoter _instance;

  final TRes Function(Variables$Mutation$RegisterVoter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? voter = _undefined}) =>
      _then(Variables$Mutation$RegisterVoter._({
        ..._instance._$data,
        if (voter != _undefined && voter != null)
          'voter': (voter as Input$VoterInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RegisterVoter<TRes>
    implements CopyWith$Variables$Mutation$RegisterVoter<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RegisterVoter(this._res);

  TRes _res;

  call({Input$VoterInput? voter}) => _res;
}

class Mutation$RegisterVoter {
  Mutation$RegisterVoter({
    required this.register,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RegisterVoter.fromJson(Map<String, dynamic> json) {
    final l$register = json['register'];
    final l$$__typename = json['__typename'];
    return Mutation$RegisterVoter(
      register: Mutation$RegisterVoter$register.fromJson(
          (l$register as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RegisterVoter$register register;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$register = register;
    _resultData['register'] = l$register.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$register = register;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$register,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RegisterVoter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$register = register;
    final lOther$register = other.register;
    if (l$register != lOther$register) {
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

extension UtilityExtension$Mutation$RegisterVoter on Mutation$RegisterVoter {
  CopyWith$Mutation$RegisterVoter<Mutation$RegisterVoter> get copyWith =>
      CopyWith$Mutation$RegisterVoter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RegisterVoter<TRes> {
  factory CopyWith$Mutation$RegisterVoter(
    Mutation$RegisterVoter instance,
    TRes Function(Mutation$RegisterVoter) then,
  ) = _CopyWithImpl$Mutation$RegisterVoter;

  factory CopyWith$Mutation$RegisterVoter.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RegisterVoter;

  TRes call({
    Mutation$RegisterVoter$register? register,
    String? $__typename,
  });
  CopyWith$Mutation$RegisterVoter$register<TRes> get register;
}

class _CopyWithImpl$Mutation$RegisterVoter<TRes>
    implements CopyWith$Mutation$RegisterVoter<TRes> {
  _CopyWithImpl$Mutation$RegisterVoter(
    this._instance,
    this._then,
  );

  final Mutation$RegisterVoter _instance;

  final TRes Function(Mutation$RegisterVoter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? register = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RegisterVoter(
        register: register == _undefined || register == null
            ? _instance.register
            : (register as Mutation$RegisterVoter$register),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RegisterVoter$register<TRes> get register {
    final local$register = _instance.register;
    return CopyWith$Mutation$RegisterVoter$register(
        local$register, (e) => call(register: e));
  }
}

class _CopyWithStubImpl$Mutation$RegisterVoter<TRes>
    implements CopyWith$Mutation$RegisterVoter<TRes> {
  _CopyWithStubImpl$Mutation$RegisterVoter(this._res);

  TRes _res;

  call({
    Mutation$RegisterVoter$register? register,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RegisterVoter$register<TRes> get register =>
      CopyWith$Mutation$RegisterVoter$register.stub(_res);
}

const documentNodeMutationRegisterVoter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RegisterVoter'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'voter')),
        type: NamedTypeNode(
          name: NameNode(value: 'VoterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'register'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'credentials'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'voter'),
                value: VariableNode(name: NameNode(value: 'voter')),
              )
            ]),
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
Mutation$RegisterVoter _parserFn$Mutation$RegisterVoter(
        Map<String, dynamic> data) =>
    Mutation$RegisterVoter.fromJson(data);
typedef OnMutationCompleted$Mutation$RegisterVoter = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RegisterVoter?,
);

class Options$Mutation$RegisterVoter
    extends graphql.MutationOptions<Mutation$RegisterVoter> {
  Options$Mutation$RegisterVoter({
    String? operationName,
    required Variables$Mutation$RegisterVoter variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RegisterVoter? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RegisterVoter? onCompleted,
    graphql.OnMutationUpdate<Mutation$RegisterVoter>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$RegisterVoter(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegisterVoter,
          parserFn: _parserFn$Mutation$RegisterVoter,
        );

  final OnMutationCompleted$Mutation$RegisterVoter? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RegisterVoter
    extends graphql.WatchQueryOptions<Mutation$RegisterVoter> {
  WatchOptions$Mutation$RegisterVoter({
    String? operationName,
    required Variables$Mutation$RegisterVoter variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RegisterVoter? typedOptimisticResult,
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
          document: documentNodeMutationRegisterVoter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RegisterVoter,
        );
}

extension ClientExtension$Mutation$RegisterVoter on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RegisterVoter>> mutate$RegisterVoter(
          Options$Mutation$RegisterVoter options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RegisterVoter> watchMutation$RegisterVoter(
          WatchOptions$Mutation$RegisterVoter options) =>
      this.watchMutation(options);
}

class Mutation$RegisterVoter$register {
  Mutation$RegisterVoter$register({
    required this.token,
    this.$__typename = 'AuthResponse',
  });

  factory Mutation$RegisterVoter$register.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$RegisterVoter$register(
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
    if (other is! Mutation$RegisterVoter$register ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$RegisterVoter$register
    on Mutation$RegisterVoter$register {
  CopyWith$Mutation$RegisterVoter$register<Mutation$RegisterVoter$register>
      get copyWith => CopyWith$Mutation$RegisterVoter$register(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RegisterVoter$register<TRes> {
  factory CopyWith$Mutation$RegisterVoter$register(
    Mutation$RegisterVoter$register instance,
    TRes Function(Mutation$RegisterVoter$register) then,
  ) = _CopyWithImpl$Mutation$RegisterVoter$register;

  factory CopyWith$Mutation$RegisterVoter$register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RegisterVoter$register;

  TRes call({
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RegisterVoter$register<TRes>
    implements CopyWith$Mutation$RegisterVoter$register<TRes> {
  _CopyWithImpl$Mutation$RegisterVoter$register(
    this._instance,
    this._then,
  );

  final Mutation$RegisterVoter$register _instance;

  final TRes Function(Mutation$RegisterVoter$register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RegisterVoter$register(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RegisterVoter$register<TRes>
    implements CopyWith$Mutation$RegisterVoter$register<TRes> {
  _CopyWithStubImpl$Mutation$RegisterVoter$register(this._res);

  TRes _res;

  call({
    String? token,
    String? $__typename,
  }) =>
      _res;
}
