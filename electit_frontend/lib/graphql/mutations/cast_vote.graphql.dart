import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$CastVote {
  factory Variables$Mutation$CastVote({
    required String electionId,
    required String candidateId,
  }) =>
      Variables$Mutation$CastVote._({
        r'electionId': electionId,
        r'candidateId': candidateId,
      });

  Variables$Mutation$CastVote._(this._$data);

  factory Variables$Mutation$CastVote.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$electionId = data['electionId'];
    result$data['electionId'] = (l$electionId as String);
    final l$candidateId = data['candidateId'];
    result$data['candidateId'] = (l$candidateId as String);
    return Variables$Mutation$CastVote._(result$data);
  }

  Map<String, dynamic> _$data;

  String get electionId => (_$data['electionId'] as String);

  String get candidateId => (_$data['candidateId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$electionId = electionId;
    result$data['electionId'] = l$electionId;
    final l$candidateId = candidateId;
    result$data['candidateId'] = l$candidateId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CastVote<Variables$Mutation$CastVote>
      get copyWith => CopyWith$Variables$Mutation$CastVote(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CastVote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$electionId = electionId;
    final lOther$electionId = other.electionId;
    if (l$electionId != lOther$electionId) {
      return false;
    }
    final l$candidateId = candidateId;
    final lOther$candidateId = other.candidateId;
    if (l$candidateId != lOther$candidateId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$electionId = electionId;
    final l$candidateId = candidateId;
    return Object.hashAll([
      l$electionId,
      l$candidateId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CastVote<TRes> {
  factory CopyWith$Variables$Mutation$CastVote(
    Variables$Mutation$CastVote instance,
    TRes Function(Variables$Mutation$CastVote) then,
  ) = _CopyWithImpl$Variables$Mutation$CastVote;

  factory CopyWith$Variables$Mutation$CastVote.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CastVote;

  TRes call({
    String? electionId,
    String? candidateId,
  });
}

class _CopyWithImpl$Variables$Mutation$CastVote<TRes>
    implements CopyWith$Variables$Mutation$CastVote<TRes> {
  _CopyWithImpl$Variables$Mutation$CastVote(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CastVote _instance;

  final TRes Function(Variables$Mutation$CastVote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? electionId = _undefined,
    Object? candidateId = _undefined,
  }) =>
      _then(Variables$Mutation$CastVote._({
        ..._instance._$data,
        if (electionId != _undefined && electionId != null)
          'electionId': (electionId as String),
        if (candidateId != _undefined && candidateId != null)
          'candidateId': (candidateId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CastVote<TRes>
    implements CopyWith$Variables$Mutation$CastVote<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CastVote(this._res);

  TRes _res;

  call({
    String? electionId,
    String? candidateId,
  }) =>
      _res;
}

class Mutation$CastVote {
  Mutation$CastVote({
    required this.vote,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CastVote.fromJson(Map<String, dynamic> json) {
    final l$vote = json['vote'];
    final l$$__typename = json['__typename'];
    return Mutation$CastVote(
      vote: Mutation$CastVote$vote.fromJson((l$vote as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CastVote$vote vote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vote = vote;
    _resultData['vote'] = l$vote.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vote = vote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CastVote || runtimeType != other.runtimeType) {
      return false;
    }
    final l$vote = vote;
    final lOther$vote = other.vote;
    if (l$vote != lOther$vote) {
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

extension UtilityExtension$Mutation$CastVote on Mutation$CastVote {
  CopyWith$Mutation$CastVote<Mutation$CastVote> get copyWith =>
      CopyWith$Mutation$CastVote(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CastVote<TRes> {
  factory CopyWith$Mutation$CastVote(
    Mutation$CastVote instance,
    TRes Function(Mutation$CastVote) then,
  ) = _CopyWithImpl$Mutation$CastVote;

  factory CopyWith$Mutation$CastVote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CastVote;

  TRes call({
    Mutation$CastVote$vote? vote,
    String? $__typename,
  });
  CopyWith$Mutation$CastVote$vote<TRes> get vote;
}

class _CopyWithImpl$Mutation$CastVote<TRes>
    implements CopyWith$Mutation$CastVote<TRes> {
  _CopyWithImpl$Mutation$CastVote(
    this._instance,
    this._then,
  );

  final Mutation$CastVote _instance;

  final TRes Function(Mutation$CastVote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vote = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CastVote(
        vote: vote == _undefined || vote == null
            ? _instance.vote
            : (vote as Mutation$CastVote$vote),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CastVote$vote<TRes> get vote {
    final local$vote = _instance.vote;
    return CopyWith$Mutation$CastVote$vote(local$vote, (e) => call(vote: e));
  }
}

class _CopyWithStubImpl$Mutation$CastVote<TRes>
    implements CopyWith$Mutation$CastVote<TRes> {
  _CopyWithStubImpl$Mutation$CastVote(this._res);

  TRes _res;

  call({
    Mutation$CastVote$vote? vote,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CastVote$vote<TRes> get vote =>
      CopyWith$Mutation$CastVote$vote.stub(_res);
}

const documentNodeMutationCastVote = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CastVote'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'electionId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'candidateId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'vote'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'electionId'),
            value: VariableNode(name: NameNode(value: 'electionId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'candidateId'),
            value: VariableNode(name: NameNode(value: 'candidateId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'createdAt'),
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
Mutation$CastVote _parserFn$Mutation$CastVote(Map<String, dynamic> data) =>
    Mutation$CastVote.fromJson(data);
typedef OnMutationCompleted$Mutation$CastVote = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CastVote?,
);

class Options$Mutation$CastVote
    extends graphql.MutationOptions<Mutation$CastVote> {
  Options$Mutation$CastVote({
    String? operationName,
    required Variables$Mutation$CastVote variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CastVote? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CastVote? onCompleted,
    graphql.OnMutationUpdate<Mutation$CastVote>? update,
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
                    data == null ? null : _parserFn$Mutation$CastVote(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCastVote,
          parserFn: _parserFn$Mutation$CastVote,
        );

  final OnMutationCompleted$Mutation$CastVote? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CastVote
    extends graphql.WatchQueryOptions<Mutation$CastVote> {
  WatchOptions$Mutation$CastVote({
    String? operationName,
    required Variables$Mutation$CastVote variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CastVote? typedOptimisticResult,
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
          document: documentNodeMutationCastVote,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CastVote,
        );
}

extension ClientExtension$Mutation$CastVote on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CastVote>> mutate$CastVote(
          Options$Mutation$CastVote options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CastVote> watchMutation$CastVote(
          WatchOptions$Mutation$CastVote options) =>
      this.watchMutation(options);
}

class Mutation$CastVote$vote {
  Mutation$CastVote$vote({
    required this.createdAt,
    this.$__typename = 'Vote',
  });

  factory Mutation$CastVote$vote.fromJson(Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Mutation$CastVote$vote(
      createdAt: (l$createdAt as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CastVote$vote || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Mutation$CastVote$vote on Mutation$CastVote$vote {
  CopyWith$Mutation$CastVote$vote<Mutation$CastVote$vote> get copyWith =>
      CopyWith$Mutation$CastVote$vote(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CastVote$vote<TRes> {
  factory CopyWith$Mutation$CastVote$vote(
    Mutation$CastVote$vote instance,
    TRes Function(Mutation$CastVote$vote) then,
  ) = _CopyWithImpl$Mutation$CastVote$vote;

  factory CopyWith$Mutation$CastVote$vote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CastVote$vote;

  TRes call({
    int? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CastVote$vote<TRes>
    implements CopyWith$Mutation$CastVote$vote<TRes> {
  _CopyWithImpl$Mutation$CastVote$vote(
    this._instance,
    this._then,
  );

  final Mutation$CastVote$vote _instance;

  final TRes Function(Mutation$CastVote$vote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CastVote$vote(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CastVote$vote<TRes>
    implements CopyWith$Mutation$CastVote$vote<TRes> {
  _CopyWithStubImpl$Mutation$CastVote$vote(this._res);

  TRes _res;

  call({
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}
