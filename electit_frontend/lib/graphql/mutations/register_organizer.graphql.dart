import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$RegisterOrganizer {
  factory Variables$Mutation$RegisterOrganizer(
          {required Input$OrganizerInput organizer}) =>
      Variables$Mutation$RegisterOrganizer._({
        r'organizer': organizer,
      });

  Variables$Mutation$RegisterOrganizer._(this._$data);

  factory Variables$Mutation$RegisterOrganizer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$organizer = data['organizer'];
    result$data['organizer'] =
        Input$OrganizerInput.fromJson((l$organizer as Map<String, dynamic>));
    return Variables$Mutation$RegisterOrganizer._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrganizerInput get organizer =>
      (_$data['organizer'] as Input$OrganizerInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$organizer = organizer;
    result$data['organizer'] = l$organizer.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RegisterOrganizer<
          Variables$Mutation$RegisterOrganizer>
      get copyWith => CopyWith$Variables$Mutation$RegisterOrganizer(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RegisterOrganizer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$organizer = organizer;
    return Object.hashAll([l$organizer]);
  }
}

abstract class CopyWith$Variables$Mutation$RegisterOrganizer<TRes> {
  factory CopyWith$Variables$Mutation$RegisterOrganizer(
    Variables$Mutation$RegisterOrganizer instance,
    TRes Function(Variables$Mutation$RegisterOrganizer) then,
  ) = _CopyWithImpl$Variables$Mutation$RegisterOrganizer;

  factory CopyWith$Variables$Mutation$RegisterOrganizer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RegisterOrganizer;

  TRes call({Input$OrganizerInput? organizer});
}

class _CopyWithImpl$Variables$Mutation$RegisterOrganizer<TRes>
    implements CopyWith$Variables$Mutation$RegisterOrganizer<TRes> {
  _CopyWithImpl$Variables$Mutation$RegisterOrganizer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RegisterOrganizer _instance;

  final TRes Function(Variables$Mutation$RegisterOrganizer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? organizer = _undefined}) =>
      _then(Variables$Mutation$RegisterOrganizer._({
        ..._instance._$data,
        if (organizer != _undefined && organizer != null)
          'organizer': (organizer as Input$OrganizerInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RegisterOrganizer<TRes>
    implements CopyWith$Variables$Mutation$RegisterOrganizer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RegisterOrganizer(this._res);

  TRes _res;

  call({Input$OrganizerInput? organizer}) => _res;
}

class Mutation$RegisterOrganizer {
  Mutation$RegisterOrganizer({
    required this.register,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RegisterOrganizer.fromJson(Map<String, dynamic> json) {
    final l$register = json['register'];
    final l$$__typename = json['__typename'];
    return Mutation$RegisterOrganizer(
      register: Mutation$RegisterOrganizer$register.fromJson(
          (l$register as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RegisterOrganizer$register register;

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
    if (other is! Mutation$RegisterOrganizer ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$RegisterOrganizer
    on Mutation$RegisterOrganizer {
  CopyWith$Mutation$RegisterOrganizer<Mutation$RegisterOrganizer>
      get copyWith => CopyWith$Mutation$RegisterOrganizer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RegisterOrganizer<TRes> {
  factory CopyWith$Mutation$RegisterOrganizer(
    Mutation$RegisterOrganizer instance,
    TRes Function(Mutation$RegisterOrganizer) then,
  ) = _CopyWithImpl$Mutation$RegisterOrganizer;

  factory CopyWith$Mutation$RegisterOrganizer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RegisterOrganizer;

  TRes call({
    Mutation$RegisterOrganizer$register? register,
    String? $__typename,
  });
  CopyWith$Mutation$RegisterOrganizer$register<TRes> get register;
}

class _CopyWithImpl$Mutation$RegisterOrganizer<TRes>
    implements CopyWith$Mutation$RegisterOrganizer<TRes> {
  _CopyWithImpl$Mutation$RegisterOrganizer(
    this._instance,
    this._then,
  );

  final Mutation$RegisterOrganizer _instance;

  final TRes Function(Mutation$RegisterOrganizer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? register = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RegisterOrganizer(
        register: register == _undefined || register == null
            ? _instance.register
            : (register as Mutation$RegisterOrganizer$register),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RegisterOrganizer$register<TRes> get register {
    final local$register = _instance.register;
    return CopyWith$Mutation$RegisterOrganizer$register(
        local$register, (e) => call(register: e));
  }
}

class _CopyWithStubImpl$Mutation$RegisterOrganizer<TRes>
    implements CopyWith$Mutation$RegisterOrganizer<TRes> {
  _CopyWithStubImpl$Mutation$RegisterOrganizer(this._res);

  TRes _res;

  call({
    Mutation$RegisterOrganizer$register? register,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RegisterOrganizer$register<TRes> get register =>
      CopyWith$Mutation$RegisterOrganizer$register.stub(_res);
}

const documentNodeMutationRegisterOrganizer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RegisterOrganizer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'organizer')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrganizerInput'),
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
                name: NameNode(value: 'organizer'),
                value: VariableNode(name: NameNode(value: 'organizer')),
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
Mutation$RegisterOrganizer _parserFn$Mutation$RegisterOrganizer(
        Map<String, dynamic> data) =>
    Mutation$RegisterOrganizer.fromJson(data);
typedef OnMutationCompleted$Mutation$RegisterOrganizer = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$RegisterOrganizer?,
);

class Options$Mutation$RegisterOrganizer
    extends graphql.MutationOptions<Mutation$RegisterOrganizer> {
  Options$Mutation$RegisterOrganizer({
    String? operationName,
    required Variables$Mutation$RegisterOrganizer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RegisterOrganizer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RegisterOrganizer? onCompleted,
    graphql.OnMutationUpdate<Mutation$RegisterOrganizer>? update,
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
                        : _parserFn$Mutation$RegisterOrganizer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegisterOrganizer,
          parserFn: _parserFn$Mutation$RegisterOrganizer,
        );

  final OnMutationCompleted$Mutation$RegisterOrganizer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RegisterOrganizer
    extends graphql.WatchQueryOptions<Mutation$RegisterOrganizer> {
  WatchOptions$Mutation$RegisterOrganizer({
    String? operationName,
    required Variables$Mutation$RegisterOrganizer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RegisterOrganizer? typedOptimisticResult,
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
          document: documentNodeMutationRegisterOrganizer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RegisterOrganizer,
        );
}

extension ClientExtension$Mutation$RegisterOrganizer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RegisterOrganizer>>
      mutate$RegisterOrganizer(
              Options$Mutation$RegisterOrganizer options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$RegisterOrganizer>
      watchMutation$RegisterOrganizer(
              WatchOptions$Mutation$RegisterOrganizer options) =>
          this.watchMutation(options);
}

class Mutation$RegisterOrganizer$register {
  Mutation$RegisterOrganizer$register({
    required this.token,
    this.$__typename = 'AuthResponse',
  });

  factory Mutation$RegisterOrganizer$register.fromJson(
      Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$RegisterOrganizer$register(
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
    if (other is! Mutation$RegisterOrganizer$register ||
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

extension UtilityExtension$Mutation$RegisterOrganizer$register
    on Mutation$RegisterOrganizer$register {
  CopyWith$Mutation$RegisterOrganizer$register<
          Mutation$RegisterOrganizer$register>
      get copyWith => CopyWith$Mutation$RegisterOrganizer$register(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RegisterOrganizer$register<TRes> {
  factory CopyWith$Mutation$RegisterOrganizer$register(
    Mutation$RegisterOrganizer$register instance,
    TRes Function(Mutation$RegisterOrganizer$register) then,
  ) = _CopyWithImpl$Mutation$RegisterOrganizer$register;

  factory CopyWith$Mutation$RegisterOrganizer$register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RegisterOrganizer$register;

  TRes call({
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RegisterOrganizer$register<TRes>
    implements CopyWith$Mutation$RegisterOrganizer$register<TRes> {
  _CopyWithImpl$Mutation$RegisterOrganizer$register(
    this._instance,
    this._then,
  );

  final Mutation$RegisterOrganizer$register _instance;

  final TRes Function(Mutation$RegisterOrganizer$register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RegisterOrganizer$register(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RegisterOrganizer$register<TRes>
    implements CopyWith$Mutation$RegisterOrganizer$register<TRes> {
  _CopyWithStubImpl$Mutation$RegisterOrganizer$register(this._res);

  TRes _res;

  call({
    String? token,
    String? $__typename,
  }) =>
      _res;
}
