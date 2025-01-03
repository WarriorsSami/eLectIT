import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Elections {
  Query$Elections({
    this.elections,
    this.$__typename = 'Query',
  });

  factory Query$Elections.fromJson(Map<String, dynamic> json) {
    final l$elections = json['elections'];
    final l$$__typename = json['__typename'];
    return Query$Elections(
      elections: (l$elections as List<dynamic>?)
          ?.map((e) =>
              Query$Elections$elections.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Elections$elections>? elections;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$elections = elections;
    _resultData['elections'] = l$elections?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$elections = elections;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$elections == null ? null : Object.hashAll(l$elections.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Elections || runtimeType != other.runtimeType) {
      return false;
    }
    final l$elections = elections;
    final lOther$elections = other.elections;
    if (l$elections != null && lOther$elections != null) {
      if (l$elections.length != lOther$elections.length) {
        return false;
      }
      for (int i = 0; i < l$elections.length; i++) {
        final l$elections$entry = l$elections[i];
        final lOther$elections$entry = lOther$elections[i];
        if (l$elections$entry != lOther$elections$entry) {
          return false;
        }
      }
    } else if (l$elections != lOther$elections) {
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

extension UtilityExtension$Query$Elections on Query$Elections {
  CopyWith$Query$Elections<Query$Elections> get copyWith =>
      CopyWith$Query$Elections(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Elections<TRes> {
  factory CopyWith$Query$Elections(
    Query$Elections instance,
    TRes Function(Query$Elections) then,
  ) = _CopyWithImpl$Query$Elections;

  factory CopyWith$Query$Elections.stub(TRes res) =
      _CopyWithStubImpl$Query$Elections;

  TRes call({
    List<Query$Elections$elections>? elections,
    String? $__typename,
  });
  TRes elections(
      Iterable<Query$Elections$elections>? Function(
              Iterable<
                  CopyWith$Query$Elections$elections<
                      Query$Elections$elections>>?)
          _fn);
}

class _CopyWithImpl$Query$Elections<TRes>
    implements CopyWith$Query$Elections<TRes> {
  _CopyWithImpl$Query$Elections(
    this._instance,
    this._then,
  );

  final Query$Elections _instance;

  final TRes Function(Query$Elections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elections = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Elections(
        elections: elections == _undefined
            ? _instance.elections
            : (elections as List<Query$Elections$elections>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes elections(
          Iterable<Query$Elections$elections>? Function(
                  Iterable<
                      CopyWith$Query$Elections$elections<
                          Query$Elections$elections>>?)
              _fn) =>
      call(
          elections: _fn(_instance.elections
              ?.map((e) => CopyWith$Query$Elections$elections(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$Elections<TRes>
    implements CopyWith$Query$Elections<TRes> {
  _CopyWithStubImpl$Query$Elections(this._res);

  TRes _res;

  call({
    List<Query$Elections$elections>? elections,
    String? $__typename,
  }) =>
      _res;

  elections(_fn) => _res;
}

const documentNodeQueryElections = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Elections'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'elections'),
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
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startTimestamp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'votesCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'winner'),
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
                name: NameNode(value: 'votesCount'),
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
]);
Query$Elections _parserFn$Query$Elections(Map<String, dynamic> data) =>
    Query$Elections.fromJson(data);
typedef OnQueryComplete$Query$Elections = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Elections?,
);

class Options$Query$Elections extends graphql.QueryOptions<Query$Elections> {
  Options$Query$Elections({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Elections? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Elections? onComplete,
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
                    data == null ? null : _parserFn$Query$Elections(data),
                  ),
          onError: onError,
          document: documentNodeQueryElections,
          parserFn: _parserFn$Query$Elections,
        );

  final OnQueryComplete$Query$Elections? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Elections
    extends graphql.WatchQueryOptions<Query$Elections> {
  WatchOptions$Query$Elections({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Elections? typedOptimisticResult,
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
          document: documentNodeQueryElections,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Elections,
        );
}

class FetchMoreOptions$Query$Elections extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Elections({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryElections,
        );
}

extension ClientExtension$Query$Elections on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Elections>> query$Elections(
          [Options$Query$Elections? options]) async =>
      await this.query(options ?? Options$Query$Elections());
  graphql.ObservableQuery<Query$Elections> watchQuery$Elections(
          [WatchOptions$Query$Elections? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Elections());
  void writeQuery$Elections({
    required Query$Elections data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryElections)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Elections? readQuery$Elections({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryElections)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Elections.fromJson(result);
  }
}

class Query$Elections$elections {
  Query$Elections$elections({
    required this.id,
    required this.title,
    required this.description,
    required this.startTimestamp,
    required this.duration,
    required this.votesCount,
    this.winner,
    this.$__typename = 'Election',
  });

  factory Query$Elections$elections.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$startTimestamp = json['startTimestamp'];
    final l$duration = json['duration'];
    final l$votesCount = json['votesCount'];
    final l$winner = json['winner'];
    final l$$__typename = json['__typename'];
    return Query$Elections$elections(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      startTimestamp: (l$startTimestamp as int),
      duration: (l$duration as int),
      votesCount: (l$votesCount as int),
      winner: l$winner == null
          ? null
          : Query$Elections$elections$winner.fromJson(
              (l$winner as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final int startTimestamp;

  final int duration;

  final int votesCount;

  final Query$Elections$elections$winner? winner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$votesCount = votesCount;
    _resultData['votesCount'] = l$votesCount;
    final l$winner = winner;
    _resultData['winner'] = l$winner?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$startTimestamp = startTimestamp;
    final l$duration = duration;
    final l$votesCount = votesCount;
    final l$winner = winner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$startTimestamp,
      l$duration,
      l$votesCount,
      l$winner,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Elections$elections ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$votesCount = votesCount;
    final lOther$votesCount = other.votesCount;
    if (l$votesCount != lOther$votesCount) {
      return false;
    }
    final l$winner = winner;
    final lOther$winner = other.winner;
    if (l$winner != lOther$winner) {
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

extension UtilityExtension$Query$Elections$elections
    on Query$Elections$elections {
  CopyWith$Query$Elections$elections<Query$Elections$elections> get copyWith =>
      CopyWith$Query$Elections$elections(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Elections$elections<TRes> {
  factory CopyWith$Query$Elections$elections(
    Query$Elections$elections instance,
    TRes Function(Query$Elections$elections) then,
  ) = _CopyWithImpl$Query$Elections$elections;

  factory CopyWith$Query$Elections$elections.stub(TRes res) =
      _CopyWithStubImpl$Query$Elections$elections;

  TRes call({
    String? id,
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    int? votesCount,
    Query$Elections$elections$winner? winner,
    String? $__typename,
  });
  CopyWith$Query$Elections$elections$winner<TRes> get winner;
}

class _CopyWithImpl$Query$Elections$elections<TRes>
    implements CopyWith$Query$Elections$elections<TRes> {
  _CopyWithImpl$Query$Elections$elections(
    this._instance,
    this._then,
  );

  final Query$Elections$elections _instance;

  final TRes Function(Query$Elections$elections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
    Object? votesCount = _undefined,
    Object? winner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Elections$elections(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        startTimestamp: startTimestamp == _undefined || startTimestamp == null
            ? _instance.startTimestamp
            : (startTimestamp as int),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        votesCount: votesCount == _undefined || votesCount == null
            ? _instance.votesCount
            : (votesCount as int),
        winner: winner == _undefined
            ? _instance.winner
            : (winner as Query$Elections$elections$winner?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Elections$elections$winner<TRes> get winner {
    final local$winner = _instance.winner;
    return local$winner == null
        ? CopyWith$Query$Elections$elections$winner.stub(_then(_instance))
        : CopyWith$Query$Elections$elections$winner(
            local$winner, (e) => call(winner: e));
  }
}

class _CopyWithStubImpl$Query$Elections$elections<TRes>
    implements CopyWith$Query$Elections$elections<TRes> {
  _CopyWithStubImpl$Query$Elections$elections(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    int? votesCount,
    Query$Elections$elections$winner? winner,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Elections$elections$winner<TRes> get winner =>
      CopyWith$Query$Elections$elections$winner.stub(_res);
}

class Query$Elections$elections$winner {
  Query$Elections$elections$winner({
    required this.id,
    required this.name,
    required this.votesCount,
    this.$__typename = 'Candidate',
  });

  factory Query$Elections$elections$winner.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$votesCount = json['votesCount'];
    final l$$__typename = json['__typename'];
    return Query$Elections$elections$winner(
      id: (l$id as String),
      name: (l$name as String),
      votesCount: (l$votesCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int votesCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$votesCount = votesCount;
    _resultData['votesCount'] = l$votesCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$votesCount = votesCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$votesCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Elections$elections$winner ||
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
    final l$votesCount = votesCount;
    final lOther$votesCount = other.votesCount;
    if (l$votesCount != lOther$votesCount) {
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

extension UtilityExtension$Query$Elections$elections$winner
    on Query$Elections$elections$winner {
  CopyWith$Query$Elections$elections$winner<Query$Elections$elections$winner>
      get copyWith => CopyWith$Query$Elections$elections$winner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Elections$elections$winner<TRes> {
  factory CopyWith$Query$Elections$elections$winner(
    Query$Elections$elections$winner instance,
    TRes Function(Query$Elections$elections$winner) then,
  ) = _CopyWithImpl$Query$Elections$elections$winner;

  factory CopyWith$Query$Elections$elections$winner.stub(TRes res) =
      _CopyWithStubImpl$Query$Elections$elections$winner;

  TRes call({
    String? id,
    String? name,
    int? votesCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Elections$elections$winner<TRes>
    implements CopyWith$Query$Elections$elections$winner<TRes> {
  _CopyWithImpl$Query$Elections$elections$winner(
    this._instance,
    this._then,
  );

  final Query$Elections$elections$winner _instance;

  final TRes Function(Query$Elections$elections$winner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? votesCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Elections$elections$winner(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        votesCount: votesCount == _undefined || votesCount == null
            ? _instance.votesCount
            : (votesCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Elections$elections$winner<TRes>
    implements CopyWith$Query$Elections$elections$winner<TRes> {
  _CopyWithStubImpl$Query$Elections$elections$winner(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? votesCount,
    String? $__typename,
  }) =>
      _res;
}
