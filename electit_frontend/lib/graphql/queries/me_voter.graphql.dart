import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$MeVoter {
  Query$MeVoter({
    required this.me,
    this.$__typename = 'Query',
  });

  factory Query$MeVoter.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$MeVoter(
      me: Query$MeVoter$me.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MeVoter$me me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeVoter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
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

extension UtilityExtension$Query$MeVoter on Query$MeVoter {
  CopyWith$Query$MeVoter<Query$MeVoter> get copyWith => CopyWith$Query$MeVoter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MeVoter<TRes> {
  factory CopyWith$Query$MeVoter(
    Query$MeVoter instance,
    TRes Function(Query$MeVoter) then,
  ) = _CopyWithImpl$Query$MeVoter;

  factory CopyWith$Query$MeVoter.stub(TRes res) =
      _CopyWithStubImpl$Query$MeVoter;

  TRes call({
    Query$MeVoter$me? me,
    String? $__typename,
  });
  CopyWith$Query$MeVoter$me<TRes> get me;
}

class _CopyWithImpl$Query$MeVoter<TRes>
    implements CopyWith$Query$MeVoter<TRes> {
  _CopyWithImpl$Query$MeVoter(
    this._instance,
    this._then,
  );

  final Query$MeVoter _instance;

  final TRes Function(Query$MeVoter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? me = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeVoter(
        me: me == _undefined || me == null
            ? _instance.me
            : (me as Query$MeVoter$me),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MeVoter$me<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Query$MeVoter$me(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$MeVoter<TRes>
    implements CopyWith$Query$MeVoter<TRes> {
  _CopyWithStubImpl$Query$MeVoter(this._res);

  TRes _res;

  call({
    Query$MeVoter$me? me,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MeVoter$me<TRes> get me =>
      CopyWith$Query$MeVoter$me.stub(_res);
}

const documentNodeQueryMeVoter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MeVoter'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'voter'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'nationalId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'role'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'votes'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'election'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'candidate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
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
Query$MeVoter _parserFn$Query$MeVoter(Map<String, dynamic> data) =>
    Query$MeVoter.fromJson(data);
typedef OnQueryComplete$Query$MeVoter = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MeVoter?,
);

class Options$Query$MeVoter extends graphql.QueryOptions<Query$MeVoter> {
  Options$Query$MeVoter({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MeVoter? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MeVoter? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$MeVoter(data),
                  ),
          onError: onError,
          document: documentNodeQueryMeVoter,
          parserFn: _parserFn$Query$MeVoter,
        );

  final OnQueryComplete$Query$MeVoter? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MeVoter
    extends graphql.WatchQueryOptions<Query$MeVoter> {
  WatchOptions$Query$MeVoter({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MeVoter? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryMeVoter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MeVoter,
        );
}

class FetchMoreOptions$Query$MeVoter extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MeVoter({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryMeVoter,
        );
}

extension ClientExtension$Query$MeVoter on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MeVoter>> query$MeVoter(
          [Options$Query$MeVoter? options]) async =>
      await this.query(options ?? Options$Query$MeVoter());
  graphql.ObservableQuery<Query$MeVoter> watchQuery$MeVoter(
          [WatchOptions$Query$MeVoter? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MeVoter());
  void writeQuery$MeVoter({
    required Query$MeVoter data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryMeVoter)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MeVoter? readQuery$MeVoter({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMeVoter)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MeVoter.fromJson(result);
  }
}

class Query$MeVoter$me {
  Query$MeVoter$me({
    this.voter,
    this.$__typename = 'User',
  });

  factory Query$MeVoter$me.fromJson(Map<String, dynamic> json) {
    final l$voter = json['voter'];
    final l$$__typename = json['__typename'];
    return Query$MeVoter$me(
      voter: l$voter == null
          ? null
          : Query$MeVoter$me$voter.fromJson((l$voter as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MeVoter$me$voter? voter;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$voter = voter;
    _resultData['voter'] = l$voter?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$voter = voter;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$voter,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeVoter$me || runtimeType != other.runtimeType) {
      return false;
    }
    final l$voter = voter;
    final lOther$voter = other.voter;
    if (l$voter != lOther$voter) {
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

extension UtilityExtension$Query$MeVoter$me on Query$MeVoter$me {
  CopyWith$Query$MeVoter$me<Query$MeVoter$me> get copyWith =>
      CopyWith$Query$MeVoter$me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MeVoter$me<TRes> {
  factory CopyWith$Query$MeVoter$me(
    Query$MeVoter$me instance,
    TRes Function(Query$MeVoter$me) then,
  ) = _CopyWithImpl$Query$MeVoter$me;

  factory CopyWith$Query$MeVoter$me.stub(TRes res) =
      _CopyWithStubImpl$Query$MeVoter$me;

  TRes call({
    Query$MeVoter$me$voter? voter,
    String? $__typename,
  });
  CopyWith$Query$MeVoter$me$voter<TRes> get voter;
}

class _CopyWithImpl$Query$MeVoter$me<TRes>
    implements CopyWith$Query$MeVoter$me<TRes> {
  _CopyWithImpl$Query$MeVoter$me(
    this._instance,
    this._then,
  );

  final Query$MeVoter$me _instance;

  final TRes Function(Query$MeVoter$me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? voter = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeVoter$me(
        voter: voter == _undefined
            ? _instance.voter
            : (voter as Query$MeVoter$me$voter?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MeVoter$me$voter<TRes> get voter {
    final local$voter = _instance.voter;
    return local$voter == null
        ? CopyWith$Query$MeVoter$me$voter.stub(_then(_instance))
        : CopyWith$Query$MeVoter$me$voter(local$voter, (e) => call(voter: e));
  }
}

class _CopyWithStubImpl$Query$MeVoter$me<TRes>
    implements CopyWith$Query$MeVoter$me<TRes> {
  _CopyWithStubImpl$Query$MeVoter$me(this._res);

  TRes _res;

  call({
    Query$MeVoter$me$voter? voter,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MeVoter$me$voter<TRes> get voter =>
      CopyWith$Query$MeVoter$me$voter.stub(_res);
}

class Query$MeVoter$me$voter {
  Query$MeVoter$me$voter({
    required this.id,
    required this.name,
    required this.email,
    required this.nationalId,
    required this.role,
    this.votes,
    this.$__typename = 'Voter',
  });

  factory Query$MeVoter$me$voter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$nationalId = json['nationalId'];
    final l$role = json['role'];
    final l$votes = json['votes'];
    final l$$__typename = json['__typename'];
    return Query$MeVoter$me$voter(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      nationalId: (l$nationalId as String),
      role: fromJson$Enum$Role((l$role as String)),
      votes: (l$votes as List<dynamic>?)
          ?.map((e) => Query$MeVoter$me$voter$votes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String nationalId;

  final Enum$Role role;

  final List<Query$MeVoter$me$voter$votes>? votes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$nationalId = nationalId;
    _resultData['nationalId'] = l$nationalId;
    final l$role = role;
    _resultData['role'] = toJson$Enum$Role(l$role);
    final l$votes = votes;
    _resultData['votes'] = l$votes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$nationalId = nationalId;
    final l$role = role;
    final l$votes = votes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$nationalId,
      l$role,
      l$votes == null ? null : Object.hashAll(l$votes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeVoter$me$voter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (l$nationalId != lOther$nationalId) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$votes = votes;
    final lOther$votes = other.votes;
    if (l$votes != null && lOther$votes != null) {
      if (l$votes.length != lOther$votes.length) {
        return false;
      }
      for (int i = 0; i < l$votes.length; i++) {
        final l$votes$entry = l$votes[i];
        final lOther$votes$entry = lOther$votes[i];
        if (l$votes$entry != lOther$votes$entry) {
          return false;
        }
      }
    } else if (l$votes != lOther$votes) {
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

extension UtilityExtension$Query$MeVoter$me$voter on Query$MeVoter$me$voter {
  CopyWith$Query$MeVoter$me$voter<Query$MeVoter$me$voter> get copyWith =>
      CopyWith$Query$MeVoter$me$voter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MeVoter$me$voter<TRes> {
  factory CopyWith$Query$MeVoter$me$voter(
    Query$MeVoter$me$voter instance,
    TRes Function(Query$MeVoter$me$voter) then,
  ) = _CopyWithImpl$Query$MeVoter$me$voter;

  factory CopyWith$Query$MeVoter$me$voter.stub(TRes res) =
      _CopyWithStubImpl$Query$MeVoter$me$voter;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? nationalId,
    Enum$Role? role,
    List<Query$MeVoter$me$voter$votes>? votes,
    String? $__typename,
  });
  TRes votes(
      Iterable<Query$MeVoter$me$voter$votes>? Function(
              Iterable<
                  CopyWith$Query$MeVoter$me$voter$votes<
                      Query$MeVoter$me$voter$votes>>?)
          _fn);
}

class _CopyWithImpl$Query$MeVoter$me$voter<TRes>
    implements CopyWith$Query$MeVoter$me$voter<TRes> {
  _CopyWithImpl$Query$MeVoter$me$voter(
    this._instance,
    this._then,
  );

  final Query$MeVoter$me$voter _instance;

  final TRes Function(Query$MeVoter$me$voter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? nationalId = _undefined,
    Object? role = _undefined,
    Object? votes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeVoter$me$voter(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        nationalId: nationalId == _undefined || nationalId == null
            ? _instance.nationalId
            : (nationalId as String),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        votes: votes == _undefined
            ? _instance.votes
            : (votes as List<Query$MeVoter$me$voter$votes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes votes(
          Iterable<Query$MeVoter$me$voter$votes>? Function(
                  Iterable<
                      CopyWith$Query$MeVoter$me$voter$votes<
                          Query$MeVoter$me$voter$votes>>?)
              _fn) =>
      call(
          votes: _fn(
              _instance.votes?.map((e) => CopyWith$Query$MeVoter$me$voter$votes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$MeVoter$me$voter<TRes>
    implements CopyWith$Query$MeVoter$me$voter<TRes> {
  _CopyWithStubImpl$Query$MeVoter$me$voter(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    String? nationalId,
    Enum$Role? role,
    List<Query$MeVoter$me$voter$votes>? votes,
    String? $__typename,
  }) =>
      _res;

  votes(_fn) => _res;
}

class Query$MeVoter$me$voter$votes {
  Query$MeVoter$me$voter$votes({
    required this.createdAt,
    required this.election,
    required this.candidate,
    this.$__typename = 'Vote',
  });

  factory Query$MeVoter$me$voter$votes.fromJson(Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$election = json['election'];
    final l$candidate = json['candidate'];
    final l$$__typename = json['__typename'];
    return Query$MeVoter$me$voter$votes(
      createdAt: (l$createdAt as int),
      election: Query$MeVoter$me$voter$votes$election.fromJson(
          (l$election as Map<String, dynamic>)),
      candidate: Query$MeVoter$me$voter$votes$candidate.fromJson(
          (l$candidate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int createdAt;

  final Query$MeVoter$me$voter$votes$election election;

  final Query$MeVoter$me$voter$votes$candidate candidate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$election = election;
    _resultData['election'] = l$election.toJson();
    final l$candidate = candidate;
    _resultData['candidate'] = l$candidate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$election = election;
    final l$candidate = candidate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$election,
      l$candidate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeVoter$me$voter$votes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$election = election;
    final lOther$election = other.election;
    if (l$election != lOther$election) {
      return false;
    }
    final l$candidate = candidate;
    final lOther$candidate = other.candidate;
    if (l$candidate != lOther$candidate) {
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

extension UtilityExtension$Query$MeVoter$me$voter$votes
    on Query$MeVoter$me$voter$votes {
  CopyWith$Query$MeVoter$me$voter$votes<Query$MeVoter$me$voter$votes>
      get copyWith => CopyWith$Query$MeVoter$me$voter$votes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MeVoter$me$voter$votes<TRes> {
  factory CopyWith$Query$MeVoter$me$voter$votes(
    Query$MeVoter$me$voter$votes instance,
    TRes Function(Query$MeVoter$me$voter$votes) then,
  ) = _CopyWithImpl$Query$MeVoter$me$voter$votes;

  factory CopyWith$Query$MeVoter$me$voter$votes.stub(TRes res) =
      _CopyWithStubImpl$Query$MeVoter$me$voter$votes;

  TRes call({
    int? createdAt,
    Query$MeVoter$me$voter$votes$election? election,
    Query$MeVoter$me$voter$votes$candidate? candidate,
    String? $__typename,
  });
  CopyWith$Query$MeVoter$me$voter$votes$election<TRes> get election;
  CopyWith$Query$MeVoter$me$voter$votes$candidate<TRes> get candidate;
}

class _CopyWithImpl$Query$MeVoter$me$voter$votes<TRes>
    implements CopyWith$Query$MeVoter$me$voter$votes<TRes> {
  _CopyWithImpl$Query$MeVoter$me$voter$votes(
    this._instance,
    this._then,
  );

  final Query$MeVoter$me$voter$votes _instance;

  final TRes Function(Query$MeVoter$me$voter$votes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? election = _undefined,
    Object? candidate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeVoter$me$voter$votes(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        election: election == _undefined || election == null
            ? _instance.election
            : (election as Query$MeVoter$me$voter$votes$election),
        candidate: candidate == _undefined || candidate == null
            ? _instance.candidate
            : (candidate as Query$MeVoter$me$voter$votes$candidate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MeVoter$me$voter$votes$election<TRes> get election {
    final local$election = _instance.election;
    return CopyWith$Query$MeVoter$me$voter$votes$election(
        local$election, (e) => call(election: e));
  }

  CopyWith$Query$MeVoter$me$voter$votes$candidate<TRes> get candidate {
    final local$candidate = _instance.candidate;
    return CopyWith$Query$MeVoter$me$voter$votes$candidate(
        local$candidate, (e) => call(candidate: e));
  }
}

class _CopyWithStubImpl$Query$MeVoter$me$voter$votes<TRes>
    implements CopyWith$Query$MeVoter$me$voter$votes<TRes> {
  _CopyWithStubImpl$Query$MeVoter$me$voter$votes(this._res);

  TRes _res;

  call({
    int? createdAt,
    Query$MeVoter$me$voter$votes$election? election,
    Query$MeVoter$me$voter$votes$candidate? candidate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MeVoter$me$voter$votes$election<TRes> get election =>
      CopyWith$Query$MeVoter$me$voter$votes$election.stub(_res);

  CopyWith$Query$MeVoter$me$voter$votes$candidate<TRes> get candidate =>
      CopyWith$Query$MeVoter$me$voter$votes$candidate.stub(_res);
}

class Query$MeVoter$me$voter$votes$election {
  Query$MeVoter$me$voter$votes$election({
    required this.id,
    required this.title,
    this.$__typename = 'Election',
  });

  factory Query$MeVoter$me$voter$votes$election.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$MeVoter$me$voter$votes$election(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeVoter$me$voter$votes$election ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$MeVoter$me$voter$votes$election
    on Query$MeVoter$me$voter$votes$election {
  CopyWith$Query$MeVoter$me$voter$votes$election<
          Query$MeVoter$me$voter$votes$election>
      get copyWith => CopyWith$Query$MeVoter$me$voter$votes$election(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MeVoter$me$voter$votes$election<TRes> {
  factory CopyWith$Query$MeVoter$me$voter$votes$election(
    Query$MeVoter$me$voter$votes$election instance,
    TRes Function(Query$MeVoter$me$voter$votes$election) then,
  ) = _CopyWithImpl$Query$MeVoter$me$voter$votes$election;

  factory CopyWith$Query$MeVoter$me$voter$votes$election.stub(TRes res) =
      _CopyWithStubImpl$Query$MeVoter$me$voter$votes$election;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MeVoter$me$voter$votes$election<TRes>
    implements CopyWith$Query$MeVoter$me$voter$votes$election<TRes> {
  _CopyWithImpl$Query$MeVoter$me$voter$votes$election(
    this._instance,
    this._then,
  );

  final Query$MeVoter$me$voter$votes$election _instance;

  final TRes Function(Query$MeVoter$me$voter$votes$election) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeVoter$me$voter$votes$election(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MeVoter$me$voter$votes$election<TRes>
    implements CopyWith$Query$MeVoter$me$voter$votes$election<TRes> {
  _CopyWithStubImpl$Query$MeVoter$me$voter$votes$election(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$MeVoter$me$voter$votes$candidate {
  Query$MeVoter$me$voter$votes$candidate({
    required this.id,
    required this.name,
    this.$__typename = 'Candidate',
  });

  factory Query$MeVoter$me$voter$votes$candidate.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$MeVoter$me$voter$votes$candidate(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeVoter$me$voter$votes$candidate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$MeVoter$me$voter$votes$candidate
    on Query$MeVoter$me$voter$votes$candidate {
  CopyWith$Query$MeVoter$me$voter$votes$candidate<
          Query$MeVoter$me$voter$votes$candidate>
      get copyWith => CopyWith$Query$MeVoter$me$voter$votes$candidate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MeVoter$me$voter$votes$candidate<TRes> {
  factory CopyWith$Query$MeVoter$me$voter$votes$candidate(
    Query$MeVoter$me$voter$votes$candidate instance,
    TRes Function(Query$MeVoter$me$voter$votes$candidate) then,
  ) = _CopyWithImpl$Query$MeVoter$me$voter$votes$candidate;

  factory CopyWith$Query$MeVoter$me$voter$votes$candidate.stub(TRes res) =
      _CopyWithStubImpl$Query$MeVoter$me$voter$votes$candidate;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MeVoter$me$voter$votes$candidate<TRes>
    implements CopyWith$Query$MeVoter$me$voter$votes$candidate<TRes> {
  _CopyWithImpl$Query$MeVoter$me$voter$votes$candidate(
    this._instance,
    this._then,
  );

  final Query$MeVoter$me$voter$votes$candidate _instance;

  final TRes Function(Query$MeVoter$me$voter$votes$candidate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeVoter$me$voter$votes$candidate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MeVoter$me$voter$votes$candidate<TRes>
    implements CopyWith$Query$MeVoter$me$voter$votes$candidate<TRes> {
  _CopyWithStubImpl$Query$MeVoter$me$voter$votes$candidate(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
