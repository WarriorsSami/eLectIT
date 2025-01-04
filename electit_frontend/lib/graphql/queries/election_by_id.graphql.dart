import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$ElectionById {
  factory Variables$Query$ElectionById({required String id}) =>
      Variables$Query$ElectionById._({
        r'id': id,
      });

  Variables$Query$ElectionById._(this._$data);

  factory Variables$Query$ElectionById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$ElectionById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ElectionById<Variables$Query$ElectionById>
      get copyWith => CopyWith$Variables$Query$ElectionById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ElectionById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$ElectionById<TRes> {
  factory CopyWith$Variables$Query$ElectionById(
    Variables$Query$ElectionById instance,
    TRes Function(Variables$Query$ElectionById) then,
  ) = _CopyWithImpl$Variables$Query$ElectionById;

  factory CopyWith$Variables$Query$ElectionById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ElectionById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$ElectionById<TRes>
    implements CopyWith$Variables$Query$ElectionById<TRes> {
  _CopyWithImpl$Variables$Query$ElectionById(
    this._instance,
    this._then,
  );

  final Variables$Query$ElectionById _instance;

  final TRes Function(Variables$Query$ElectionById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$ElectionById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ElectionById<TRes>
    implements CopyWith$Variables$Query$ElectionById<TRes> {
  _CopyWithStubImpl$Variables$Query$ElectionById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$ElectionById {
  Query$ElectionById({
    this.electionById,
    this.$__typename = 'Query',
  });

  factory Query$ElectionById.fromJson(Map<String, dynamic> json) {
    final l$electionById = json['electionById'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById(
      electionById: l$electionById == null
          ? null
          : Query$ElectionById$electionById.fromJson(
              (l$electionById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ElectionById$electionById? electionById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$electionById = electionById;
    _resultData['electionById'] = l$electionById?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$electionById = electionById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$electionById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectionById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$electionById = electionById;
    final lOther$electionById = other.electionById;
    if (l$electionById != lOther$electionById) {
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

extension UtilityExtension$Query$ElectionById on Query$ElectionById {
  CopyWith$Query$ElectionById<Query$ElectionById> get copyWith =>
      CopyWith$Query$ElectionById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ElectionById<TRes> {
  factory CopyWith$Query$ElectionById(
    Query$ElectionById instance,
    TRes Function(Query$ElectionById) then,
  ) = _CopyWithImpl$Query$ElectionById;

  factory CopyWith$Query$ElectionById.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectionById;

  TRes call({
    Query$ElectionById$electionById? electionById,
    String? $__typename,
  });
  CopyWith$Query$ElectionById$electionById<TRes> get electionById;
}

class _CopyWithImpl$Query$ElectionById<TRes>
    implements CopyWith$Query$ElectionById<TRes> {
  _CopyWithImpl$Query$ElectionById(
    this._instance,
    this._then,
  );

  final Query$ElectionById _instance;

  final TRes Function(Query$ElectionById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? electionById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById(
        electionById: electionById == _undefined
            ? _instance.electionById
            : (electionById as Query$ElectionById$electionById?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ElectionById$electionById<TRes> get electionById {
    final local$electionById = _instance.electionById;
    return local$electionById == null
        ? CopyWith$Query$ElectionById$electionById.stub(_then(_instance))
        : CopyWith$Query$ElectionById$electionById(
            local$electionById, (e) => call(electionById: e));
  }
}

class _CopyWithStubImpl$Query$ElectionById<TRes>
    implements CopyWith$Query$ElectionById<TRes> {
  _CopyWithStubImpl$Query$ElectionById(this._res);

  TRes _res;

  call({
    Query$ElectionById$electionById? electionById,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ElectionById$electionById<TRes> get electionById =>
      CopyWith$Query$ElectionById$electionById.stub(_res);
}

const documentNodeQueryElectionById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ElectionById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'electionById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
            name: NameNode(value: 'myVote'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'manager'),
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
            name: NameNode(value: 'candidates'),
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
                name: NameNode(value: 'party'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'manifesto'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pictureUrl'),
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
                name: NameNode(value: 'party'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'manifesto'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pictureUrl'),
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
Query$ElectionById _parserFn$Query$ElectionById(Map<String, dynamic> data) =>
    Query$ElectionById.fromJson(data);
typedef OnQueryComplete$Query$ElectionById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ElectionById?,
);

class Options$Query$ElectionById
    extends graphql.QueryOptions<Query$ElectionById> {
  Options$Query$ElectionById({
    String? operationName,
    required Variables$Query$ElectionById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ElectionById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ElectionById? onComplete,
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
                    data == null ? null : _parserFn$Query$ElectionById(data),
                  ),
          onError: onError,
          document: documentNodeQueryElectionById,
          parserFn: _parserFn$Query$ElectionById,
        );

  final OnQueryComplete$Query$ElectionById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ElectionById
    extends graphql.WatchQueryOptions<Query$ElectionById> {
  WatchOptions$Query$ElectionById({
    String? operationName,
    required Variables$Query$ElectionById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ElectionById? typedOptimisticResult,
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
          document: documentNodeQueryElectionById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ElectionById,
        );
}

class FetchMoreOptions$Query$ElectionById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ElectionById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ElectionById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryElectionById,
        );
}

extension ClientExtension$Query$ElectionById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ElectionById>> query$ElectionById(
          Options$Query$ElectionById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ElectionById> watchQuery$ElectionById(
          WatchOptions$Query$ElectionById options) =>
      this.watchQuery(options);
  void writeQuery$ElectionById({
    required Query$ElectionById data,
    required Variables$Query$ElectionById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryElectionById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ElectionById? readQuery$ElectionById({
    required Variables$Query$ElectionById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryElectionById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ElectionById.fromJson(result);
  }
}

class Query$ElectionById$electionById {
  Query$ElectionById$electionById({
    required this.id,
    required this.title,
    required this.description,
    required this.startTimestamp,
    required this.duration,
    required this.votesCount,
    this.myVote,
    required this.manager,
    this.candidates,
    this.winner,
    this.$__typename = 'Election',
  });

  factory Query$ElectionById$electionById.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$startTimestamp = json['startTimestamp'];
    final l$duration = json['duration'];
    final l$votesCount = json['votesCount'];
    final l$myVote = json['myVote'];
    final l$manager = json['manager'];
    final l$candidates = json['candidates'];
    final l$winner = json['winner'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      startTimestamp: (l$startTimestamp as int),
      duration: (l$duration as int),
      votesCount: (l$votesCount as int),
      myVote: l$myVote == null
          ? null
          : Query$ElectionById$electionById$myVote.fromJson(
              (l$myVote as Map<String, dynamic>)),
      manager: Query$ElectionById$electionById$manager.fromJson(
          (l$manager as Map<String, dynamic>)),
      candidates: (l$candidates as List<dynamic>?)
          ?.map((e) => Query$ElectionById$electionById$candidates.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      winner: l$winner == null
          ? null
          : Query$ElectionById$electionById$winner.fromJson(
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

  final Query$ElectionById$electionById$myVote? myVote;

  final Query$ElectionById$electionById$manager manager;

  final List<Query$ElectionById$electionById$candidates>? candidates;

  final Query$ElectionById$electionById$winner? winner;

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
    final l$myVote = myVote;
    _resultData['myVote'] = l$myVote?.toJson();
    final l$manager = manager;
    _resultData['manager'] = l$manager.toJson();
    final l$candidates = candidates;
    _resultData['candidates'] = l$candidates?.map((e) => e.toJson()).toList();
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
    final l$myVote = myVote;
    final l$manager = manager;
    final l$candidates = candidates;
    final l$winner = winner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$startTimestamp,
      l$duration,
      l$votesCount,
      l$myVote,
      l$manager,
      l$candidates == null ? null : Object.hashAll(l$candidates.map((v) => v)),
      l$winner,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectionById$electionById ||
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
    final l$myVote = myVote;
    final lOther$myVote = other.myVote;
    if (l$myVote != lOther$myVote) {
      return false;
    }
    final l$manager = manager;
    final lOther$manager = other.manager;
    if (l$manager != lOther$manager) {
      return false;
    }
    final l$candidates = candidates;
    final lOther$candidates = other.candidates;
    if (l$candidates != null && lOther$candidates != null) {
      if (l$candidates.length != lOther$candidates.length) {
        return false;
      }
      for (int i = 0; i < l$candidates.length; i++) {
        final l$candidates$entry = l$candidates[i];
        final lOther$candidates$entry = lOther$candidates[i];
        if (l$candidates$entry != lOther$candidates$entry) {
          return false;
        }
      }
    } else if (l$candidates != lOther$candidates) {
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

extension UtilityExtension$Query$ElectionById$electionById
    on Query$ElectionById$electionById {
  CopyWith$Query$ElectionById$electionById<Query$ElectionById$electionById>
      get copyWith => CopyWith$Query$ElectionById$electionById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById<TRes> {
  factory CopyWith$Query$ElectionById$electionById(
    Query$ElectionById$electionById instance,
    TRes Function(Query$ElectionById$electionById) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById;

  factory CopyWith$Query$ElectionById$electionById.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById;

  TRes call({
    String? id,
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    int? votesCount,
    Query$ElectionById$electionById$myVote? myVote,
    Query$ElectionById$electionById$manager? manager,
    List<Query$ElectionById$electionById$candidates>? candidates,
    Query$ElectionById$electionById$winner? winner,
    String? $__typename,
  });
  CopyWith$Query$ElectionById$electionById$myVote<TRes> get myVote;
  CopyWith$Query$ElectionById$electionById$manager<TRes> get manager;
  TRes candidates(
      Iterable<Query$ElectionById$electionById$candidates>? Function(
              Iterable<
                  CopyWith$Query$ElectionById$electionById$candidates<
                      Query$ElectionById$electionById$candidates>>?)
          _fn);
  CopyWith$Query$ElectionById$electionById$winner<TRes> get winner;
}

class _CopyWithImpl$Query$ElectionById$electionById<TRes>
    implements CopyWith$Query$ElectionById$electionById<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById _instance;

  final TRes Function(Query$ElectionById$electionById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
    Object? votesCount = _undefined,
    Object? myVote = _undefined,
    Object? manager = _undefined,
    Object? candidates = _undefined,
    Object? winner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById(
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
        myVote: myVote == _undefined
            ? _instance.myVote
            : (myVote as Query$ElectionById$electionById$myVote?),
        manager: manager == _undefined || manager == null
            ? _instance.manager
            : (manager as Query$ElectionById$electionById$manager),
        candidates: candidates == _undefined
            ? _instance.candidates
            : (candidates as List<Query$ElectionById$electionById$candidates>?),
        winner: winner == _undefined
            ? _instance.winner
            : (winner as Query$ElectionById$electionById$winner?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ElectionById$electionById$myVote<TRes> get myVote {
    final local$myVote = _instance.myVote;
    return local$myVote == null
        ? CopyWith$Query$ElectionById$electionById$myVote.stub(_then(_instance))
        : CopyWith$Query$ElectionById$electionById$myVote(
            local$myVote, (e) => call(myVote: e));
  }

  CopyWith$Query$ElectionById$electionById$manager<TRes> get manager {
    final local$manager = _instance.manager;
    return CopyWith$Query$ElectionById$electionById$manager(
        local$manager, (e) => call(manager: e));
  }

  TRes candidates(
          Iterable<Query$ElectionById$electionById$candidates>? Function(
                  Iterable<
                      CopyWith$Query$ElectionById$electionById$candidates<
                          Query$ElectionById$electionById$candidates>>?)
              _fn) =>
      call(
          candidates: _fn(_instance.candidates
              ?.map((e) => CopyWith$Query$ElectionById$electionById$candidates(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Query$ElectionById$electionById$winner<TRes> get winner {
    final local$winner = _instance.winner;
    return local$winner == null
        ? CopyWith$Query$ElectionById$electionById$winner.stub(_then(_instance))
        : CopyWith$Query$ElectionById$electionById$winner(
            local$winner, (e) => call(winner: e));
  }
}

class _CopyWithStubImpl$Query$ElectionById$electionById<TRes>
    implements CopyWith$Query$ElectionById$electionById<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    int? votesCount,
    Query$ElectionById$electionById$myVote? myVote,
    Query$ElectionById$electionById$manager? manager,
    List<Query$ElectionById$electionById$candidates>? candidates,
    Query$ElectionById$electionById$winner? winner,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ElectionById$electionById$myVote<TRes> get myVote =>
      CopyWith$Query$ElectionById$electionById$myVote.stub(_res);

  CopyWith$Query$ElectionById$electionById$manager<TRes> get manager =>
      CopyWith$Query$ElectionById$electionById$manager.stub(_res);

  candidates(_fn) => _res;

  CopyWith$Query$ElectionById$electionById$winner<TRes> get winner =>
      CopyWith$Query$ElectionById$electionById$winner.stub(_res);
}

class Query$ElectionById$electionById$myVote {
  Query$ElectionById$electionById$myVote({
    required this.election,
    required this.candidate,
    this.$__typename = 'Vote',
  });

  factory Query$ElectionById$electionById$myVote.fromJson(
      Map<String, dynamic> json) {
    final l$election = json['election'];
    final l$candidate = json['candidate'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById$myVote(
      election: Query$ElectionById$electionById$myVote$election.fromJson(
          (l$election as Map<String, dynamic>)),
      candidate: Query$ElectionById$electionById$myVote$candidate.fromJson(
          (l$candidate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ElectionById$electionById$myVote$election election;

  final Query$ElectionById$electionById$myVote$candidate candidate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$election = election;
    final l$candidate = candidate;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query$ElectionById$electionById$myVote ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ElectionById$electionById$myVote
    on Query$ElectionById$electionById$myVote {
  CopyWith$Query$ElectionById$electionById$myVote<
          Query$ElectionById$electionById$myVote>
      get copyWith => CopyWith$Query$ElectionById$electionById$myVote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById$myVote<TRes> {
  factory CopyWith$Query$ElectionById$electionById$myVote(
    Query$ElectionById$electionById$myVote instance,
    TRes Function(Query$ElectionById$electionById$myVote) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById$myVote;

  factory CopyWith$Query$ElectionById$electionById$myVote.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById$myVote;

  TRes call({
    Query$ElectionById$electionById$myVote$election? election,
    Query$ElectionById$electionById$myVote$candidate? candidate,
    String? $__typename,
  });
  CopyWith$Query$ElectionById$electionById$myVote$election<TRes> get election;
  CopyWith$Query$ElectionById$electionById$myVote$candidate<TRes> get candidate;
}

class _CopyWithImpl$Query$ElectionById$electionById$myVote<TRes>
    implements CopyWith$Query$ElectionById$electionById$myVote<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById$myVote(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById$myVote _instance;

  final TRes Function(Query$ElectionById$electionById$myVote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? election = _undefined,
    Object? candidate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById$myVote(
        election: election == _undefined || election == null
            ? _instance.election
            : (election as Query$ElectionById$electionById$myVote$election),
        candidate: candidate == _undefined || candidate == null
            ? _instance.candidate
            : (candidate as Query$ElectionById$electionById$myVote$candidate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ElectionById$electionById$myVote$election<TRes> get election {
    final local$election = _instance.election;
    return CopyWith$Query$ElectionById$electionById$myVote$election(
        local$election, (e) => call(election: e));
  }

  CopyWith$Query$ElectionById$electionById$myVote$candidate<TRes>
      get candidate {
    final local$candidate = _instance.candidate;
    return CopyWith$Query$ElectionById$electionById$myVote$candidate(
        local$candidate, (e) => call(candidate: e));
  }
}

class _CopyWithStubImpl$Query$ElectionById$electionById$myVote<TRes>
    implements CopyWith$Query$ElectionById$electionById$myVote<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById$myVote(this._res);

  TRes _res;

  call({
    Query$ElectionById$electionById$myVote$election? election,
    Query$ElectionById$electionById$myVote$candidate? candidate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ElectionById$electionById$myVote$election<TRes> get election =>
      CopyWith$Query$ElectionById$electionById$myVote$election.stub(_res);

  CopyWith$Query$ElectionById$electionById$myVote$candidate<TRes>
      get candidate =>
          CopyWith$Query$ElectionById$electionById$myVote$candidate.stub(_res);
}

class Query$ElectionById$electionById$myVote$election {
  Query$ElectionById$electionById$myVote$election({
    required this.id,
    this.$__typename = 'Election',
  });

  factory Query$ElectionById$electionById$myVote$election.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById$myVote$election(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectionById$electionById$myVote$election ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$ElectionById$electionById$myVote$election
    on Query$ElectionById$electionById$myVote$election {
  CopyWith$Query$ElectionById$electionById$myVote$election<
          Query$ElectionById$electionById$myVote$election>
      get copyWith => CopyWith$Query$ElectionById$electionById$myVote$election(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById$myVote$election<TRes> {
  factory CopyWith$Query$ElectionById$electionById$myVote$election(
    Query$ElectionById$electionById$myVote$election instance,
    TRes Function(Query$ElectionById$electionById$myVote$election) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById$myVote$election;

  factory CopyWith$Query$ElectionById$electionById$myVote$election.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById$myVote$election;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ElectionById$electionById$myVote$election<TRes>
    implements CopyWith$Query$ElectionById$electionById$myVote$election<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById$myVote$election(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById$myVote$election _instance;

  final TRes Function(Query$ElectionById$electionById$myVote$election) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById$myVote$election(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ElectionById$electionById$myVote$election<TRes>
    implements CopyWith$Query$ElectionById$electionById$myVote$election<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById$myVote$election(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$ElectionById$electionById$myVote$candidate {
  Query$ElectionById$electionById$myVote$candidate({
    required this.id,
    this.$__typename = 'Candidate',
  });

  factory Query$ElectionById$electionById$myVote$candidate.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById$myVote$candidate(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectionById$electionById$myVote$candidate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$ElectionById$electionById$myVote$candidate
    on Query$ElectionById$electionById$myVote$candidate {
  CopyWith$Query$ElectionById$electionById$myVote$candidate<
          Query$ElectionById$electionById$myVote$candidate>
      get copyWith => CopyWith$Query$ElectionById$electionById$myVote$candidate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById$myVote$candidate<TRes> {
  factory CopyWith$Query$ElectionById$electionById$myVote$candidate(
    Query$ElectionById$electionById$myVote$candidate instance,
    TRes Function(Query$ElectionById$electionById$myVote$candidate) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById$myVote$candidate;

  factory CopyWith$Query$ElectionById$electionById$myVote$candidate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById$myVote$candidate;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ElectionById$electionById$myVote$candidate<TRes>
    implements CopyWith$Query$ElectionById$electionById$myVote$candidate<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById$myVote$candidate(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById$myVote$candidate _instance;

  final TRes Function(Query$ElectionById$electionById$myVote$candidate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById$myVote$candidate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ElectionById$electionById$myVote$candidate<TRes>
    implements CopyWith$Query$ElectionById$electionById$myVote$candidate<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById$myVote$candidate(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$ElectionById$electionById$manager {
  Query$ElectionById$electionById$manager({
    required this.id,
    required this.name,
    this.$__typename = 'Organizer',
  });

  factory Query$ElectionById$electionById$manager.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById$manager(
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
    if (other is! Query$ElectionById$electionById$manager ||
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

extension UtilityExtension$Query$ElectionById$electionById$manager
    on Query$ElectionById$electionById$manager {
  CopyWith$Query$ElectionById$electionById$manager<
          Query$ElectionById$electionById$manager>
      get copyWith => CopyWith$Query$ElectionById$electionById$manager(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById$manager<TRes> {
  factory CopyWith$Query$ElectionById$electionById$manager(
    Query$ElectionById$electionById$manager instance,
    TRes Function(Query$ElectionById$electionById$manager) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById$manager;

  factory CopyWith$Query$ElectionById$electionById$manager.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById$manager;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ElectionById$electionById$manager<TRes>
    implements CopyWith$Query$ElectionById$electionById$manager<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById$manager(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById$manager _instance;

  final TRes Function(Query$ElectionById$electionById$manager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById$manager(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ElectionById$electionById$manager<TRes>
    implements CopyWith$Query$ElectionById$electionById$manager<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById$manager(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$ElectionById$electionById$candidates {
  Query$ElectionById$electionById$candidates({
    required this.id,
    required this.name,
    required this.party,
    required this.manifesto,
    this.pictureUrl,
    required this.votesCount,
    this.$__typename = 'Candidate',
  });

  factory Query$ElectionById$electionById$candidates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$party = json['party'];
    final l$manifesto = json['manifesto'];
    final l$pictureUrl = json['pictureUrl'];
    final l$votesCount = json['votesCount'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById$candidates(
      id: (l$id as String),
      name: (l$name as String),
      party: (l$party as String),
      manifesto: (l$manifesto as String),
      pictureUrl: (l$pictureUrl as String?),
      votesCount: (l$votesCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String party;

  final String manifesto;

  final String? pictureUrl;

  final int votesCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$party = party;
    _resultData['party'] = l$party;
    final l$manifesto = manifesto;
    _resultData['manifesto'] = l$manifesto;
    final l$pictureUrl = pictureUrl;
    _resultData['pictureUrl'] = l$pictureUrl;
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
    final l$party = party;
    final l$manifesto = manifesto;
    final l$pictureUrl = pictureUrl;
    final l$votesCount = votesCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$party,
      l$manifesto,
      l$pictureUrl,
      l$votesCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectionById$electionById$candidates ||
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
    final l$party = party;
    final lOther$party = other.party;
    if (l$party != lOther$party) {
      return false;
    }
    final l$manifesto = manifesto;
    final lOther$manifesto = other.manifesto;
    if (l$manifesto != lOther$manifesto) {
      return false;
    }
    final l$pictureUrl = pictureUrl;
    final lOther$pictureUrl = other.pictureUrl;
    if (l$pictureUrl != lOther$pictureUrl) {
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

extension UtilityExtension$Query$ElectionById$electionById$candidates
    on Query$ElectionById$electionById$candidates {
  CopyWith$Query$ElectionById$electionById$candidates<
          Query$ElectionById$electionById$candidates>
      get copyWith => CopyWith$Query$ElectionById$electionById$candidates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById$candidates<TRes> {
  factory CopyWith$Query$ElectionById$electionById$candidates(
    Query$ElectionById$electionById$candidates instance,
    TRes Function(Query$ElectionById$electionById$candidates) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById$candidates;

  factory CopyWith$Query$ElectionById$electionById$candidates.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById$candidates;

  TRes call({
    String? id,
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
    int? votesCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ElectionById$electionById$candidates<TRes>
    implements CopyWith$Query$ElectionById$electionById$candidates<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById$candidates(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById$candidates _instance;

  final TRes Function(Query$ElectionById$electionById$candidates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? party = _undefined,
    Object? manifesto = _undefined,
    Object? pictureUrl = _undefined,
    Object? votesCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById$candidates(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        party: party == _undefined || party == null
            ? _instance.party
            : (party as String),
        manifesto: manifesto == _undefined || manifesto == null
            ? _instance.manifesto
            : (manifesto as String),
        pictureUrl: pictureUrl == _undefined
            ? _instance.pictureUrl
            : (pictureUrl as String?),
        votesCount: votesCount == _undefined || votesCount == null
            ? _instance.votesCount
            : (votesCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ElectionById$electionById$candidates<TRes>
    implements CopyWith$Query$ElectionById$electionById$candidates<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById$candidates(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
    int? votesCount,
    String? $__typename,
  }) =>
      _res;
}

class Query$ElectionById$electionById$winner {
  Query$ElectionById$electionById$winner({
    required this.id,
    required this.name,
    required this.party,
    required this.manifesto,
    this.pictureUrl,
    required this.votesCount,
    this.$__typename = 'Candidate',
  });

  factory Query$ElectionById$electionById$winner.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$party = json['party'];
    final l$manifesto = json['manifesto'];
    final l$pictureUrl = json['pictureUrl'];
    final l$votesCount = json['votesCount'];
    final l$$__typename = json['__typename'];
    return Query$ElectionById$electionById$winner(
      id: (l$id as String),
      name: (l$name as String),
      party: (l$party as String),
      manifesto: (l$manifesto as String),
      pictureUrl: (l$pictureUrl as String?),
      votesCount: (l$votesCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String party;

  final String manifesto;

  final String? pictureUrl;

  final int votesCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$party = party;
    _resultData['party'] = l$party;
    final l$manifesto = manifesto;
    _resultData['manifesto'] = l$manifesto;
    final l$pictureUrl = pictureUrl;
    _resultData['pictureUrl'] = l$pictureUrl;
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
    final l$party = party;
    final l$manifesto = manifesto;
    final l$pictureUrl = pictureUrl;
    final l$votesCount = votesCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$party,
      l$manifesto,
      l$pictureUrl,
      l$votesCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ElectionById$electionById$winner ||
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
    final l$party = party;
    final lOther$party = other.party;
    if (l$party != lOther$party) {
      return false;
    }
    final l$manifesto = manifesto;
    final lOther$manifesto = other.manifesto;
    if (l$manifesto != lOther$manifesto) {
      return false;
    }
    final l$pictureUrl = pictureUrl;
    final lOther$pictureUrl = other.pictureUrl;
    if (l$pictureUrl != lOther$pictureUrl) {
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

extension UtilityExtension$Query$ElectionById$electionById$winner
    on Query$ElectionById$electionById$winner {
  CopyWith$Query$ElectionById$electionById$winner<
          Query$ElectionById$electionById$winner>
      get copyWith => CopyWith$Query$ElectionById$electionById$winner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ElectionById$electionById$winner<TRes> {
  factory CopyWith$Query$ElectionById$electionById$winner(
    Query$ElectionById$electionById$winner instance,
    TRes Function(Query$ElectionById$electionById$winner) then,
  ) = _CopyWithImpl$Query$ElectionById$electionById$winner;

  factory CopyWith$Query$ElectionById$electionById$winner.stub(TRes res) =
      _CopyWithStubImpl$Query$ElectionById$electionById$winner;

  TRes call({
    String? id,
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
    int? votesCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ElectionById$electionById$winner<TRes>
    implements CopyWith$Query$ElectionById$electionById$winner<TRes> {
  _CopyWithImpl$Query$ElectionById$electionById$winner(
    this._instance,
    this._then,
  );

  final Query$ElectionById$electionById$winner _instance;

  final TRes Function(Query$ElectionById$electionById$winner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? party = _undefined,
    Object? manifesto = _undefined,
    Object? pictureUrl = _undefined,
    Object? votesCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ElectionById$electionById$winner(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        party: party == _undefined || party == null
            ? _instance.party
            : (party as String),
        manifesto: manifesto == _undefined || manifesto == null
            ? _instance.manifesto
            : (manifesto as String),
        pictureUrl: pictureUrl == _undefined
            ? _instance.pictureUrl
            : (pictureUrl as String?),
        votesCount: votesCount == _undefined || votesCount == null
            ? _instance.votesCount
            : (votesCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ElectionById$electionById$winner<TRes>
    implements CopyWith$Query$ElectionById$electionById$winner<TRes> {
  _CopyWithStubImpl$Query$ElectionById$electionById$winner(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
    int? votesCount,
    String? $__typename,
  }) =>
      _res;
}
