import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$MeOrganizer {
  Query$MeOrganizer({
    this.me,
    this.$__typename = 'Query',
  });

  factory Query$MeOrganizer.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$MeOrganizer(
      me: l$me == null
          ? null
          : Query$MeOrganizer$me.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MeOrganizer$me? me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me?.toJson();
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
    if (other is! Query$MeOrganizer || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MeOrganizer on Query$MeOrganizer {
  CopyWith$Query$MeOrganizer<Query$MeOrganizer> get copyWith =>
      CopyWith$Query$MeOrganizer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MeOrganizer<TRes> {
  factory CopyWith$Query$MeOrganizer(
    Query$MeOrganizer instance,
    TRes Function(Query$MeOrganizer) then,
  ) = _CopyWithImpl$Query$MeOrganizer;

  factory CopyWith$Query$MeOrganizer.stub(TRes res) =
      _CopyWithStubImpl$Query$MeOrganizer;

  TRes call({
    Query$MeOrganizer$me? me,
    String? $__typename,
  });
  CopyWith$Query$MeOrganizer$me<TRes> get me;
}

class _CopyWithImpl$Query$MeOrganizer<TRes>
    implements CopyWith$Query$MeOrganizer<TRes> {
  _CopyWithImpl$Query$MeOrganizer(
    this._instance,
    this._then,
  );

  final Query$MeOrganizer _instance;

  final TRes Function(Query$MeOrganizer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? me = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeOrganizer(
        me: me == _undefined ? _instance.me : (me as Query$MeOrganizer$me?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MeOrganizer$me<TRes> get me {
    final local$me = _instance.me;
    return local$me == null
        ? CopyWith$Query$MeOrganizer$me.stub(_then(_instance))
        : CopyWith$Query$MeOrganizer$me(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$MeOrganizer<TRes>
    implements CopyWith$Query$MeOrganizer<TRes> {
  _CopyWithStubImpl$Query$MeOrganizer(this._res);

  TRes _res;

  call({
    Query$MeOrganizer$me? me,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MeOrganizer$me<TRes> get me =>
      CopyWith$Query$MeOrganizer$me.stub(_res);
}

const documentNodeQueryMeOrganizer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MeOrganizer'),
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
            name: NameNode(value: 'organizer'),
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
                name: NameNode(value: 'role'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'managedElections'),
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
Query$MeOrganizer _parserFn$Query$MeOrganizer(Map<String, dynamic> data) =>
    Query$MeOrganizer.fromJson(data);
typedef OnQueryComplete$Query$MeOrganizer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MeOrganizer?,
);

class Options$Query$MeOrganizer
    extends graphql.QueryOptions<Query$MeOrganizer> {
  Options$Query$MeOrganizer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MeOrganizer? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MeOrganizer? onComplete,
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
                    data == null ? null : _parserFn$Query$MeOrganizer(data),
                  ),
          onError: onError,
          document: documentNodeQueryMeOrganizer,
          parserFn: _parserFn$Query$MeOrganizer,
        );

  final OnQueryComplete$Query$MeOrganizer? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MeOrganizer
    extends graphql.WatchQueryOptions<Query$MeOrganizer> {
  WatchOptions$Query$MeOrganizer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MeOrganizer? typedOptimisticResult,
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
          document: documentNodeQueryMeOrganizer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MeOrganizer,
        );
}

class FetchMoreOptions$Query$MeOrganizer extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MeOrganizer({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryMeOrganizer,
        );
}

extension ClientExtension$Query$MeOrganizer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MeOrganizer>> query$MeOrganizer(
          [Options$Query$MeOrganizer? options]) async =>
      await this.query(options ?? Options$Query$MeOrganizer());
  graphql.ObservableQuery<Query$MeOrganizer> watchQuery$MeOrganizer(
          [WatchOptions$Query$MeOrganizer? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MeOrganizer());
  void writeQuery$MeOrganizer({
    required Query$MeOrganizer data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryMeOrganizer)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MeOrganizer? readQuery$MeOrganizer({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMeOrganizer)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MeOrganizer.fromJson(result);
  }
}

class Query$MeOrganizer$me {
  Query$MeOrganizer$me({
    this.organizer,
    this.$__typename = 'User',
  });

  factory Query$MeOrganizer$me.fromJson(Map<String, dynamic> json) {
    final l$organizer = json['organizer'];
    final l$$__typename = json['__typename'];
    return Query$MeOrganizer$me(
      organizer: l$organizer == null
          ? null
          : Query$MeOrganizer$me$organizer.fromJson(
              (l$organizer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MeOrganizer$me$organizer? organizer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$organizer = organizer;
    _resultData['organizer'] = l$organizer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$organizer = organizer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$organizer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeOrganizer$me || runtimeType != other.runtimeType) {
      return false;
    }
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) {
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

extension UtilityExtension$Query$MeOrganizer$me on Query$MeOrganizer$me {
  CopyWith$Query$MeOrganizer$me<Query$MeOrganizer$me> get copyWith =>
      CopyWith$Query$MeOrganizer$me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MeOrganizer$me<TRes> {
  factory CopyWith$Query$MeOrganizer$me(
    Query$MeOrganizer$me instance,
    TRes Function(Query$MeOrganizer$me) then,
  ) = _CopyWithImpl$Query$MeOrganizer$me;

  factory CopyWith$Query$MeOrganizer$me.stub(TRes res) =
      _CopyWithStubImpl$Query$MeOrganizer$me;

  TRes call({
    Query$MeOrganizer$me$organizer? organizer,
    String? $__typename,
  });
  CopyWith$Query$MeOrganizer$me$organizer<TRes> get organizer;
}

class _CopyWithImpl$Query$MeOrganizer$me<TRes>
    implements CopyWith$Query$MeOrganizer$me<TRes> {
  _CopyWithImpl$Query$MeOrganizer$me(
    this._instance,
    this._then,
  );

  final Query$MeOrganizer$me _instance;

  final TRes Function(Query$MeOrganizer$me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? organizer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeOrganizer$me(
        organizer: organizer == _undefined
            ? _instance.organizer
            : (organizer as Query$MeOrganizer$me$organizer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MeOrganizer$me$organizer<TRes> get organizer {
    final local$organizer = _instance.organizer;
    return local$organizer == null
        ? CopyWith$Query$MeOrganizer$me$organizer.stub(_then(_instance))
        : CopyWith$Query$MeOrganizer$me$organizer(
            local$organizer, (e) => call(organizer: e));
  }
}

class _CopyWithStubImpl$Query$MeOrganizer$me<TRes>
    implements CopyWith$Query$MeOrganizer$me<TRes> {
  _CopyWithStubImpl$Query$MeOrganizer$me(this._res);

  TRes _res;

  call({
    Query$MeOrganizer$me$organizer? organizer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MeOrganizer$me$organizer<TRes> get organizer =>
      CopyWith$Query$MeOrganizer$me$organizer.stub(_res);
}

class Query$MeOrganizer$me$organizer {
  Query$MeOrganizer$me$organizer({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.managedElections,
    this.$__typename = 'Organizer',
  });

  factory Query$MeOrganizer$me$organizer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$role = json['role'];
    final l$managedElections = json['managedElections'];
    final l$$__typename = json['__typename'];
    return Query$MeOrganizer$me$organizer(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      role: fromJson$Enum$Role((l$role as String)),
      managedElections: (l$managedElections as List<dynamic>?)
          ?.map((e) => Query$MeOrganizer$me$organizer$managedElections.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final Enum$Role role;

  final List<Query$MeOrganizer$me$organizer$managedElections>? managedElections;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$role = role;
    _resultData['role'] = toJson$Enum$Role(l$role);
    final l$managedElections = managedElections;
    _resultData['managedElections'] =
        l$managedElections?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$role = role;
    final l$managedElections = managedElections;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$role,
      l$managedElections == null
          ? null
          : Object.hashAll(l$managedElections.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MeOrganizer$me$organizer ||
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$managedElections = managedElections;
    final lOther$managedElections = other.managedElections;
    if (l$managedElections != null && lOther$managedElections != null) {
      if (l$managedElections.length != lOther$managedElections.length) {
        return false;
      }
      for (int i = 0; i < l$managedElections.length; i++) {
        final l$managedElections$entry = l$managedElections[i];
        final lOther$managedElections$entry = lOther$managedElections[i];
        if (l$managedElections$entry != lOther$managedElections$entry) {
          return false;
        }
      }
    } else if (l$managedElections != lOther$managedElections) {
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

extension UtilityExtension$Query$MeOrganizer$me$organizer
    on Query$MeOrganizer$me$organizer {
  CopyWith$Query$MeOrganizer$me$organizer<Query$MeOrganizer$me$organizer>
      get copyWith => CopyWith$Query$MeOrganizer$me$organizer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MeOrganizer$me$organizer<TRes> {
  factory CopyWith$Query$MeOrganizer$me$organizer(
    Query$MeOrganizer$me$organizer instance,
    TRes Function(Query$MeOrganizer$me$organizer) then,
  ) = _CopyWithImpl$Query$MeOrganizer$me$organizer;

  factory CopyWith$Query$MeOrganizer$me$organizer.stub(TRes res) =
      _CopyWithStubImpl$Query$MeOrganizer$me$organizer;

  TRes call({
    String? id,
    String? name,
    String? email,
    Enum$Role? role,
    List<Query$MeOrganizer$me$organizer$managedElections>? managedElections,
    String? $__typename,
  });
  TRes managedElections(
      Iterable<Query$MeOrganizer$me$organizer$managedElections>? Function(
              Iterable<
                  CopyWith$Query$MeOrganizer$me$organizer$managedElections<
                      Query$MeOrganizer$me$organizer$managedElections>>?)
          _fn);
}

class _CopyWithImpl$Query$MeOrganizer$me$organizer<TRes>
    implements CopyWith$Query$MeOrganizer$me$organizer<TRes> {
  _CopyWithImpl$Query$MeOrganizer$me$organizer(
    this._instance,
    this._then,
  );

  final Query$MeOrganizer$me$organizer _instance;

  final TRes Function(Query$MeOrganizer$me$organizer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? role = _undefined,
    Object? managedElections = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeOrganizer$me$organizer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        managedElections: managedElections == _undefined
            ? _instance.managedElections
            : (managedElections
                as List<Query$MeOrganizer$me$organizer$managedElections>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes managedElections(
          Iterable<Query$MeOrganizer$me$organizer$managedElections>? Function(
                  Iterable<
                      CopyWith$Query$MeOrganizer$me$organizer$managedElections<
                          Query$MeOrganizer$me$organizer$managedElections>>?)
              _fn) =>
      call(
          managedElections: _fn(_instance.managedElections?.map(
              (e) => CopyWith$Query$MeOrganizer$me$organizer$managedElections(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$MeOrganizer$me$organizer<TRes>
    implements CopyWith$Query$MeOrganizer$me$organizer<TRes> {
  _CopyWithStubImpl$Query$MeOrganizer$me$organizer(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? email,
    Enum$Role? role,
    List<Query$MeOrganizer$me$organizer$managedElections>? managedElections,
    String? $__typename,
  }) =>
      _res;

  managedElections(_fn) => _res;
}

class Query$MeOrganizer$me$organizer$managedElections {
  Query$MeOrganizer$me$organizer$managedElections({
    required this.id,
    required this.title,
    required this.startTimestamp,
    required this.duration,
    required this.votesCount,
    this.winner,
    this.$__typename = 'Election',
  });

  factory Query$MeOrganizer$me$organizer$managedElections.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$startTimestamp = json['startTimestamp'];
    final l$duration = json['duration'];
    final l$votesCount = json['votesCount'];
    final l$winner = json['winner'];
    final l$$__typename = json['__typename'];
    return Query$MeOrganizer$me$organizer$managedElections(
      id: (l$id as String),
      title: (l$title as String),
      startTimestamp: (l$startTimestamp as int),
      duration: (l$duration as int),
      votesCount: (l$votesCount as int),
      winner: l$winner == null
          ? null
          : Query$MeOrganizer$me$organizer$managedElections$winner.fromJson(
              (l$winner as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final int startTimestamp;

  final int duration;

  final int votesCount;

  final Query$MeOrganizer$me$organizer$managedElections$winner? winner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    final l$startTimestamp = startTimestamp;
    final l$duration = duration;
    final l$votesCount = votesCount;
    final l$winner = winner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
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
    if (other is! Query$MeOrganizer$me$organizer$managedElections ||
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

extension UtilityExtension$Query$MeOrganizer$me$organizer$managedElections
    on Query$MeOrganizer$me$organizer$managedElections {
  CopyWith$Query$MeOrganizer$me$organizer$managedElections<
          Query$MeOrganizer$me$organizer$managedElections>
      get copyWith => CopyWith$Query$MeOrganizer$me$organizer$managedElections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MeOrganizer$me$organizer$managedElections<TRes> {
  factory CopyWith$Query$MeOrganizer$me$organizer$managedElections(
    Query$MeOrganizer$me$organizer$managedElections instance,
    TRes Function(Query$MeOrganizer$me$organizer$managedElections) then,
  ) = _CopyWithImpl$Query$MeOrganizer$me$organizer$managedElections;

  factory CopyWith$Query$MeOrganizer$me$organizer$managedElections.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MeOrganizer$me$organizer$managedElections;

  TRes call({
    String? id,
    String? title,
    int? startTimestamp,
    int? duration,
    int? votesCount,
    Query$MeOrganizer$me$organizer$managedElections$winner? winner,
    String? $__typename,
  });
  CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<TRes>
      get winner;
}

class _CopyWithImpl$Query$MeOrganizer$me$organizer$managedElections<TRes>
    implements CopyWith$Query$MeOrganizer$me$organizer$managedElections<TRes> {
  _CopyWithImpl$Query$MeOrganizer$me$organizer$managedElections(
    this._instance,
    this._then,
  );

  final Query$MeOrganizer$me$organizer$managedElections _instance;

  final TRes Function(Query$MeOrganizer$me$organizer$managedElections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
    Object? votesCount = _undefined,
    Object? winner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeOrganizer$me$organizer$managedElections(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
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
            : (winner
                as Query$MeOrganizer$me$organizer$managedElections$winner?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<TRes>
      get winner {
    final local$winner = _instance.winner;
    return local$winner == null
        ? CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner.stub(
            _then(_instance))
        : CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner(
            local$winner, (e) => call(winner: e));
  }
}

class _CopyWithStubImpl$Query$MeOrganizer$me$organizer$managedElections<TRes>
    implements CopyWith$Query$MeOrganizer$me$organizer$managedElections<TRes> {
  _CopyWithStubImpl$Query$MeOrganizer$me$organizer$managedElections(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    int? startTimestamp,
    int? duration,
    int? votesCount,
    Query$MeOrganizer$me$organizer$managedElections$winner? winner,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<TRes>
      get winner =>
          CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner.stub(
              _res);
}

class Query$MeOrganizer$me$organizer$managedElections$winner {
  Query$MeOrganizer$me$organizer$managedElections$winner({
    required this.id,
    required this.name,
    required this.votesCount,
    this.$__typename = 'Candidate',
  });

  factory Query$MeOrganizer$me$organizer$managedElections$winner.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$votesCount = json['votesCount'];
    final l$$__typename = json['__typename'];
    return Query$MeOrganizer$me$organizer$managedElections$winner(
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
    if (other is! Query$MeOrganizer$me$organizer$managedElections$winner ||
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

extension UtilityExtension$Query$MeOrganizer$me$organizer$managedElections$winner
    on Query$MeOrganizer$me$organizer$managedElections$winner {
  CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<
          Query$MeOrganizer$me$organizer$managedElections$winner>
      get copyWith =>
          CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<
    TRes> {
  factory CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner(
    Query$MeOrganizer$me$organizer$managedElections$winner instance,
    TRes Function(Query$MeOrganizer$me$organizer$managedElections$winner) then,
  ) = _CopyWithImpl$Query$MeOrganizer$me$organizer$managedElections$winner;

  factory CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MeOrganizer$me$organizer$managedElections$winner;

  TRes call({
    String? id,
    String? name,
    int? votesCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MeOrganizer$me$organizer$managedElections$winner<TRes>
    implements
        CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<TRes> {
  _CopyWithImpl$Query$MeOrganizer$me$organizer$managedElections$winner(
    this._instance,
    this._then,
  );

  final Query$MeOrganizer$me$organizer$managedElections$winner _instance;

  final TRes Function(Query$MeOrganizer$me$organizer$managedElections$winner)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? votesCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MeOrganizer$me$organizer$managedElections$winner(
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

class _CopyWithStubImpl$Query$MeOrganizer$me$organizer$managedElections$winner<
        TRes>
    implements
        CopyWith$Query$MeOrganizer$me$organizer$managedElections$winner<TRes> {
  _CopyWithStubImpl$Query$MeOrganizer$me$organizer$managedElections$winner(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? votesCount,
    String? $__typename,
  }) =>
      _res;
}
