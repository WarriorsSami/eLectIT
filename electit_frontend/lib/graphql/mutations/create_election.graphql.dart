import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$CreateElection {
  factory Variables$Mutation$CreateElection({
    required String title,
    required String description,
    required int startTimestamp,
    required int duration,
    required List<Input$CandidateInput> candidates,
  }) =>
      Variables$Mutation$CreateElection._({
        r'title': title,
        r'description': description,
        r'startTimestamp': startTimestamp,
        r'duration': duration,
        r'candidates': candidates,
      });

  Variables$Mutation$CreateElection._(this._$data);

  factory Variables$Mutation$CreateElection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$startTimestamp = data['startTimestamp'];
    result$data['startTimestamp'] = (l$startTimestamp as int);
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as int);
    final l$candidates = data['candidates'];
    result$data['candidates'] = (l$candidates as List<dynamic>)
        .map((e) => Input$CandidateInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$CreateElection._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String get description => (_$data['description'] as String);

  int get startTimestamp => (_$data['startTimestamp'] as int);

  int get duration => (_$data['duration'] as int);

  List<Input$CandidateInput> get candidates =>
      (_$data['candidates'] as List<Input$CandidateInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    final l$description = description;
    result$data['description'] = l$description;
    final l$startTimestamp = startTimestamp;
    result$data['startTimestamp'] = l$startTimestamp;
    final l$duration = duration;
    result$data['duration'] = l$duration;
    final l$candidates = candidates;
    result$data['candidates'] = l$candidates.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateElection<Variables$Mutation$CreateElection>
      get copyWith => CopyWith$Variables$Mutation$CreateElection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateElection ||
        runtimeType != other.runtimeType) {
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
    final l$candidates = candidates;
    final lOther$candidates = other.candidates;
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
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$description = description;
    final l$startTimestamp = startTimestamp;
    final l$duration = duration;
    final l$candidates = candidates;
    return Object.hashAll([
      l$title,
      l$description,
      l$startTimestamp,
      l$duration,
      Object.hashAll(l$candidates.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateElection<TRes> {
  factory CopyWith$Variables$Mutation$CreateElection(
    Variables$Mutation$CreateElection instance,
    TRes Function(Variables$Mutation$CreateElection) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateElection;

  factory CopyWith$Variables$Mutation$CreateElection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateElection;

  TRes call({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    List<Input$CandidateInput>? candidates,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateElection<TRes>
    implements CopyWith$Variables$Mutation$CreateElection<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateElection(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateElection _instance;

  final TRes Function(Variables$Mutation$CreateElection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
    Object? candidates = _undefined,
  }) =>
      _then(Variables$Mutation$CreateElection._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (startTimestamp != _undefined && startTimestamp != null)
          'startTimestamp': (startTimestamp as int),
        if (duration != _undefined && duration != null)
          'duration': (duration as int),
        if (candidates != _undefined && candidates != null)
          'candidates': (candidates as List<Input$CandidateInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateElection<TRes>
    implements CopyWith$Variables$Mutation$CreateElection<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateElection(this._res);

  TRes _res;

  call({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    List<Input$CandidateInput>? candidates,
  }) =>
      _res;
}

class Mutation$CreateElection {
  Mutation$CreateElection({
    required this.createElection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateElection.fromJson(Map<String, dynamic> json) {
    final l$createElection = json['createElection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateElection(
      createElection: Mutation$CreateElection$createElection.fromJson(
          (l$createElection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateElection$createElection createElection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createElection = createElection;
    _resultData['createElection'] = l$createElection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createElection = createElection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createElection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateElection || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createElection = createElection;
    final lOther$createElection = other.createElection;
    if (l$createElection != lOther$createElection) {
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

extension UtilityExtension$Mutation$CreateElection on Mutation$CreateElection {
  CopyWith$Mutation$CreateElection<Mutation$CreateElection> get copyWith =>
      CopyWith$Mutation$CreateElection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateElection<TRes> {
  factory CopyWith$Mutation$CreateElection(
    Mutation$CreateElection instance,
    TRes Function(Mutation$CreateElection) then,
  ) = _CopyWithImpl$Mutation$CreateElection;

  factory CopyWith$Mutation$CreateElection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateElection;

  TRes call({
    Mutation$CreateElection$createElection? createElection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateElection$createElection<TRes> get createElection;
}

class _CopyWithImpl$Mutation$CreateElection<TRes>
    implements CopyWith$Mutation$CreateElection<TRes> {
  _CopyWithImpl$Mutation$CreateElection(
    this._instance,
    this._then,
  );

  final Mutation$CreateElection _instance;

  final TRes Function(Mutation$CreateElection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createElection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateElection(
        createElection: createElection == _undefined || createElection == null
            ? _instance.createElection
            : (createElection as Mutation$CreateElection$createElection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateElection$createElection<TRes> get createElection {
    final local$createElection = _instance.createElection;
    return CopyWith$Mutation$CreateElection$createElection(
        local$createElection, (e) => call(createElection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateElection<TRes>
    implements CopyWith$Mutation$CreateElection<TRes> {
  _CopyWithStubImpl$Mutation$CreateElection(this._res);

  TRes _res;

  call({
    Mutation$CreateElection$createElection? createElection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateElection$createElection<TRes> get createElection =>
      CopyWith$Mutation$CreateElection$createElection.stub(_res);
}

const documentNodeMutationCreateElection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateElection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startTimestamp')),
        type: NamedTypeNode(
          name: NameNode(value: 'Long'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'duration')),
        type: NamedTypeNode(
          name: NameNode(value: 'Long'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'candidates')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CandidateInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createElection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'election'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'title'),
                value: VariableNode(name: NameNode(value: 'title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'description'),
                value: VariableNode(name: NameNode(value: 'description')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'startTimestamp'),
                value: VariableNode(name: NameNode(value: 'startTimestamp')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'duration'),
                value: VariableNode(name: NameNode(value: 'duration')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'candidates'),
                value: VariableNode(name: NameNode(value: 'candidates')),
              ),
            ]),
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
Mutation$CreateElection _parserFn$Mutation$CreateElection(
        Map<String, dynamic> data) =>
    Mutation$CreateElection.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateElection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateElection?,
);

class Options$Mutation$CreateElection
    extends graphql.MutationOptions<Mutation$CreateElection> {
  Options$Mutation$CreateElection({
    String? operationName,
    required Variables$Mutation$CreateElection variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateElection? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateElection? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateElection>? update,
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
                        : _parserFn$Mutation$CreateElection(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateElection,
          parserFn: _parserFn$Mutation$CreateElection,
        );

  final OnMutationCompleted$Mutation$CreateElection? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateElection
    extends graphql.WatchQueryOptions<Mutation$CreateElection> {
  WatchOptions$Mutation$CreateElection({
    String? operationName,
    required Variables$Mutation$CreateElection variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateElection? typedOptimisticResult,
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
          document: documentNodeMutationCreateElection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateElection,
        );
}

extension ClientExtension$Mutation$CreateElection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateElection>> mutate$CreateElection(
          Options$Mutation$CreateElection options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateElection> watchMutation$CreateElection(
          WatchOptions$Mutation$CreateElection options) =>
      this.watchMutation(options);
}

class Mutation$CreateElection$createElection {
  Mutation$CreateElection$createElection({
    required this.id,
    required this.title,
    required this.description,
    required this.startTimestamp,
    required this.duration,
    required this.candidates,
    this.$__typename = 'Election',
  });

  factory Mutation$CreateElection$createElection.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$startTimestamp = json['startTimestamp'];
    final l$duration = json['duration'];
    final l$candidates = json['candidates'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateElection$createElection(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      startTimestamp: (l$startTimestamp as int),
      duration: (l$duration as int),
      candidates: (l$candidates as List<dynamic>)
          .map((e) =>
              Mutation$CreateElection$createElection$candidates.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final int startTimestamp;

  final int duration;

  final List<Mutation$CreateElection$createElection$candidates> candidates;

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
    final l$candidates = candidates;
    _resultData['candidates'] = l$candidates.map((e) => e.toJson()).toList();
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
    final l$candidates = candidates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$startTimestamp,
      l$duration,
      Object.hashAll(l$candidates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateElection$createElection ||
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
    final l$candidates = candidates;
    final lOther$candidates = other.candidates;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateElection$createElection
    on Mutation$CreateElection$createElection {
  CopyWith$Mutation$CreateElection$createElection<
          Mutation$CreateElection$createElection>
      get copyWith => CopyWith$Mutation$CreateElection$createElection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateElection$createElection<TRes> {
  factory CopyWith$Mutation$CreateElection$createElection(
    Mutation$CreateElection$createElection instance,
    TRes Function(Mutation$CreateElection$createElection) then,
  ) = _CopyWithImpl$Mutation$CreateElection$createElection;

  factory CopyWith$Mutation$CreateElection$createElection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateElection$createElection;

  TRes call({
    String? id,
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    List<Mutation$CreateElection$createElection$candidates>? candidates,
    String? $__typename,
  });
  TRes candidates(
      Iterable<Mutation$CreateElection$createElection$candidates> Function(
              Iterable<
                  CopyWith$Mutation$CreateElection$createElection$candidates<
                      Mutation$CreateElection$createElection$candidates>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateElection$createElection<TRes>
    implements CopyWith$Mutation$CreateElection$createElection<TRes> {
  _CopyWithImpl$Mutation$CreateElection$createElection(
    this._instance,
    this._then,
  );

  final Mutation$CreateElection$createElection _instance;

  final TRes Function(Mutation$CreateElection$createElection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
    Object? candidates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateElection$createElection(
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
        candidates: candidates == _undefined || candidates == null
            ? _instance.candidates
            : (candidates
                as List<Mutation$CreateElection$createElection$candidates>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes candidates(
          Iterable<Mutation$CreateElection$createElection$candidates> Function(
                  Iterable<
                      CopyWith$Mutation$CreateElection$createElection$candidates<
                          Mutation$CreateElection$createElection$candidates>>)
              _fn) =>
      call(
          candidates: _fn(_instance.candidates.map(
              (e) => CopyWith$Mutation$CreateElection$createElection$candidates(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateElection$createElection<TRes>
    implements CopyWith$Mutation$CreateElection$createElection<TRes> {
  _CopyWithStubImpl$Mutation$CreateElection$createElection(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    List<Mutation$CreateElection$createElection$candidates>? candidates,
    String? $__typename,
  }) =>
      _res;

  candidates(_fn) => _res;
}

class Mutation$CreateElection$createElection$candidates {
  Mutation$CreateElection$createElection$candidates({
    required this.id,
    required this.name,
    required this.party,
    required this.manifesto,
    this.pictureUrl,
    this.$__typename = 'Candidate',
  });

  factory Mutation$CreateElection$createElection$candidates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$party = json['party'];
    final l$manifesto = json['manifesto'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateElection$createElection$candidates(
      id: (l$id as String),
      name: (l$name as String),
      party: (l$party as String),
      manifesto: (l$manifesto as String),
      pictureUrl: (l$pictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String party;

  final String manifesto;

  final String? pictureUrl;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$party,
      l$manifesto,
      l$pictureUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateElection$createElection$candidates ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateElection$createElection$candidates
    on Mutation$CreateElection$createElection$candidates {
  CopyWith$Mutation$CreateElection$createElection$candidates<
          Mutation$CreateElection$createElection$candidates>
      get copyWith =>
          CopyWith$Mutation$CreateElection$createElection$candidates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateElection$createElection$candidates<
    TRes> {
  factory CopyWith$Mutation$CreateElection$createElection$candidates(
    Mutation$CreateElection$createElection$candidates instance,
    TRes Function(Mutation$CreateElection$createElection$candidates) then,
  ) = _CopyWithImpl$Mutation$CreateElection$createElection$candidates;

  factory CopyWith$Mutation$CreateElection$createElection$candidates.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateElection$createElection$candidates;

  TRes call({
    String? id,
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateElection$createElection$candidates<TRes>
    implements
        CopyWith$Mutation$CreateElection$createElection$candidates<TRes> {
  _CopyWithImpl$Mutation$CreateElection$createElection$candidates(
    this._instance,
    this._then,
  );

  final Mutation$CreateElection$createElection$candidates _instance;

  final TRes Function(Mutation$CreateElection$createElection$candidates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? party = _undefined,
    Object? manifesto = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateElection$createElection$candidates(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateElection$createElection$candidates<TRes>
    implements
        CopyWith$Mutation$CreateElection$createElection$candidates<TRes> {
  _CopyWithStubImpl$Mutation$CreateElection$createElection$candidates(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}
