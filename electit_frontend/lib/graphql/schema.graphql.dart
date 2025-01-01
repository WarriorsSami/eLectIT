class Input$LoginInput {
  factory Input$LoginInput({
    required String email,
    required String password,
  }) =>
      Input$LoginInput._({
        r'email': email,
        r'password': password,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$UserInput {
  factory Input$UserInput.voter(Input$VoterInput voter) =>
      Input$UserInput._({'voter': voter});

  factory Input$UserInput.organizer(Input$OrganizerInput organizer) =>
      Input$UserInput._({'organizer': organizer});

  Input$UserInput._(this._$data);

  factory Input$UserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('voter')) {
      final l$voter = data['voter'];
      result$data['voter'] = l$voter == null
          ? null
          : Input$VoterInput.fromJson((l$voter as Map<String, dynamic>));
    }
    if (data.containsKey('organizer')) {
      final l$organizer = data['organizer'];
      result$data['organizer'] = l$organizer == null
          ? null
          : Input$OrganizerInput.fromJson(
              (l$organizer as Map<String, dynamic>));
    }
    return Input$UserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VoterInput? get voter => (_$data['voter'] as Input$VoterInput?);

  Input$OrganizerInput? get organizer =>
      (_$data['organizer'] as Input$OrganizerInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('voter')) {
      final l$voter = voter;
      result$data['voter'] = l$voter?.toJson();
    }
    if (_$data.containsKey('organizer')) {
      final l$organizer = organizer;
      result$data['organizer'] = l$organizer?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserInput<Input$UserInput> get copyWith =>
      CopyWith$Input$UserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$voter = voter;
    final lOther$voter = other.voter;
    if (_$data.containsKey('voter') != other._$data.containsKey('voter')) {
      return false;
    }
    if (l$voter != lOther$voter) {
      return false;
    }
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (_$data.containsKey('organizer') !=
        other._$data.containsKey('organizer')) {
      return false;
    }
    if (l$organizer != lOther$organizer) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$voter = voter;
    final l$organizer = organizer;
    return Object.hashAll([
      _$data.containsKey('voter') ? l$voter : const {},
      _$data.containsKey('organizer') ? l$organizer : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserInput<TRes> {
  factory CopyWith$Input$UserInput(
    Input$UserInput instance,
    TRes Function(Input$UserInput) then,
  ) = _CopyWithImpl$Input$UserInput;

  factory CopyWith$Input$UserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserInput;

  TRes call({
    Input$VoterInput? voter,
    Input$OrganizerInput? organizer,
  });
  CopyWith$Input$VoterInput<TRes> get voter;
  CopyWith$Input$OrganizerInput<TRes> get organizer;
}

class _CopyWithImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithImpl$Input$UserInput(
    this._instance,
    this._then,
  );

  final Input$UserInput _instance;

  final TRes Function(Input$UserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? voter = _undefined,
    Object? organizer = _undefined,
  }) =>
      _then(Input$UserInput._({
        ..._instance._$data,
        if (voter != _undefined) 'voter': (voter as Input$VoterInput?),
        if (organizer != _undefined)
          'organizer': (organizer as Input$OrganizerInput?),
      }));

  CopyWith$Input$VoterInput<TRes> get voter {
    final local$voter = _instance.voter;
    return local$voter == null
        ? CopyWith$Input$VoterInput.stub(_then(_instance))
        : CopyWith$Input$VoterInput(local$voter, (e) => call(voter: e));
  }

  CopyWith$Input$OrganizerInput<TRes> get organizer {
    final local$organizer = _instance.organizer;
    return local$organizer == null
        ? CopyWith$Input$OrganizerInput.stub(_then(_instance))
        : CopyWith$Input$OrganizerInput(
            local$organizer, (e) => call(organizer: e));
  }
}

class _CopyWithStubImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithStubImpl$Input$UserInput(this._res);

  TRes _res;

  call({
    Input$VoterInput? voter,
    Input$OrganizerInput? organizer,
  }) =>
      _res;

  CopyWith$Input$VoterInput<TRes> get voter =>
      CopyWith$Input$VoterInput.stub(_res);

  CopyWith$Input$OrganizerInput<TRes> get organizer =>
      CopyWith$Input$OrganizerInput.stub(_res);
}

class Input$VoterInput {
  factory Input$VoterInput({
    required String name,
    required String email,
    required String password,
    required String nationalId,
  }) =>
      Input$VoterInput._({
        r'name': name,
        r'email': email,
        r'password': password,
        r'nationalId': nationalId,
      });

  Input$VoterInput._(this._$data);

  factory Input$VoterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$nationalId = data['nationalId'];
    result$data['nationalId'] = (l$nationalId as String);
    return Input$VoterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  String get nationalId => (_$data['nationalId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    final l$nationalId = nationalId;
    result$data['nationalId'] = l$nationalId;
    return result$data;
  }

  CopyWith$Input$VoterInput<Input$VoterInput> get copyWith =>
      CopyWith$Input$VoterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VoterInput || runtimeType != other.runtimeType) {
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
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$nationalId = nationalId;
    final lOther$nationalId = other.nationalId;
    if (l$nationalId != lOther$nationalId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$password = password;
    final l$nationalId = nationalId;
    return Object.hashAll([
      l$name,
      l$email,
      l$password,
      l$nationalId,
    ]);
  }
}

abstract class CopyWith$Input$VoterInput<TRes> {
  factory CopyWith$Input$VoterInput(
    Input$VoterInput instance,
    TRes Function(Input$VoterInput) then,
  ) = _CopyWithImpl$Input$VoterInput;

  factory CopyWith$Input$VoterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VoterInput;

  TRes call({
    String? name,
    String? email,
    String? password,
    String? nationalId,
  });
}

class _CopyWithImpl$Input$VoterInput<TRes>
    implements CopyWith$Input$VoterInput<TRes> {
  _CopyWithImpl$Input$VoterInput(
    this._instance,
    this._then,
  );

  final Input$VoterInput _instance;

  final TRes Function(Input$VoterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? nationalId = _undefined,
  }) =>
      _then(Input$VoterInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (nationalId != _undefined && nationalId != null)
          'nationalId': (nationalId as String),
      }));
}

class _CopyWithStubImpl$Input$VoterInput<TRes>
    implements CopyWith$Input$VoterInput<TRes> {
  _CopyWithStubImpl$Input$VoterInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? password,
    String? nationalId,
  }) =>
      _res;
}

class Input$OrganizerInput {
  factory Input$OrganizerInput({
    required String name,
    required String email,
    required String password,
  }) =>
      Input$OrganizerInput._({
        r'name': name,
        r'email': email,
        r'password': password,
      });

  Input$OrganizerInput._(this._$data);

  factory Input$OrganizerInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$OrganizerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$OrganizerInput<Input$OrganizerInput> get copyWith =>
      CopyWith$Input$OrganizerInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrganizerInput || runtimeType != other.runtimeType) {
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
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$name,
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$OrganizerInput<TRes> {
  factory CopyWith$Input$OrganizerInput(
    Input$OrganizerInput instance,
    TRes Function(Input$OrganizerInput) then,
  ) = _CopyWithImpl$Input$OrganizerInput;

  factory CopyWith$Input$OrganizerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$OrganizerInput;

  TRes call({
    String? name,
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$OrganizerInput<TRes>
    implements CopyWith$Input$OrganizerInput<TRes> {
  _CopyWithImpl$Input$OrganizerInput(
    this._instance,
    this._then,
  );

  final Input$OrganizerInput _instance;

  final TRes Function(Input$OrganizerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$OrganizerInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$OrganizerInput<TRes>
    implements CopyWith$Input$OrganizerInput<TRes> {
  _CopyWithStubImpl$Input$OrganizerInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$ElectionInput {
  factory Input$ElectionInput({
    required String title,
    required String description,
    required int startTimestamp,
    required int duration,
    List<Input$CandidateInput>? candidates,
  }) =>
      Input$ElectionInput._({
        r'title': title,
        r'description': description,
        r'startTimestamp': startTimestamp,
        r'duration': duration,
        if (candidates != null) r'candidates': candidates,
      });

  Input$ElectionInput._(this._$data);

  factory Input$ElectionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$startTimestamp = data['startTimestamp'];
    result$data['startTimestamp'] = (l$startTimestamp as int);
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as int);
    if (data.containsKey('candidates')) {
      final l$candidates = data['candidates'];
      result$data['candidates'] = (l$candidates as List<dynamic>?)
          ?.map(
              (e) => Input$CandidateInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ElectionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String get description => (_$data['description'] as String);

  int get startTimestamp => (_$data['startTimestamp'] as int);

  int get duration => (_$data['duration'] as int);

  List<Input$CandidateInput>? get candidates =>
      (_$data['candidates'] as List<Input$CandidateInput>?);

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
    if (_$data.containsKey('candidates')) {
      final l$candidates = candidates;
      result$data['candidates'] = l$candidates?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ElectionInput<Input$ElectionInput> get copyWith =>
      CopyWith$Input$ElectionInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ElectionInput || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('candidates') !=
        other._$data.containsKey('candidates')) {
      return false;
    }
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
      _$data.containsKey('candidates')
          ? l$candidates == null
              ? null
              : Object.hashAll(l$candidates.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ElectionInput<TRes> {
  factory CopyWith$Input$ElectionInput(
    Input$ElectionInput instance,
    TRes Function(Input$ElectionInput) then,
  ) = _CopyWithImpl$Input$ElectionInput;

  factory CopyWith$Input$ElectionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ElectionInput;

  TRes call({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    List<Input$CandidateInput>? candidates,
  });
  TRes candidates(
      Iterable<Input$CandidateInput>? Function(
              Iterable<CopyWith$Input$CandidateInput<Input$CandidateInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ElectionInput<TRes>
    implements CopyWith$Input$ElectionInput<TRes> {
  _CopyWithImpl$Input$ElectionInput(
    this._instance,
    this._then,
  );

  final Input$ElectionInput _instance;

  final TRes Function(Input$ElectionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
    Object? candidates = _undefined,
  }) =>
      _then(Input$ElectionInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (startTimestamp != _undefined && startTimestamp != null)
          'startTimestamp': (startTimestamp as int),
        if (duration != _undefined && duration != null)
          'duration': (duration as int),
        if (candidates != _undefined)
          'candidates': (candidates as List<Input$CandidateInput>?),
      }));

  TRes candidates(
          Iterable<Input$CandidateInput>? Function(
                  Iterable<
                      CopyWith$Input$CandidateInput<Input$CandidateInput>>?)
              _fn) =>
      call(
          candidates: _fn(
              _instance.candidates?.map((e) => CopyWith$Input$CandidateInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ElectionInput<TRes>
    implements CopyWith$Input$ElectionInput<TRes> {
  _CopyWithStubImpl$Input$ElectionInput(this._res);

  TRes _res;

  call({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
    List<Input$CandidateInput>? candidates,
  }) =>
      _res;

  candidates(_fn) => _res;
}

class Input$UpdateElectionInput {
  factory Input$UpdateElectionInput({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
  }) =>
      Input$UpdateElectionInput._({
        if (title != null) r'title': title,
        if (description != null) r'description': description,
        if (startTimestamp != null) r'startTimestamp': startTimestamp,
        if (duration != null) r'duration': duration,
      });

  Input$UpdateElectionInput._(this._$data);

  factory Input$UpdateElectionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('startTimestamp')) {
      final l$startTimestamp = data['startTimestamp'];
      result$data['startTimestamp'] = (l$startTimestamp as int?);
    }
    if (data.containsKey('duration')) {
      final l$duration = data['duration'];
      result$data['duration'] = (l$duration as int?);
    }
    return Input$UpdateElectionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  String? get description => (_$data['description'] as String?);

  int? get startTimestamp => (_$data['startTimestamp'] as int?);

  int? get duration => (_$data['duration'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('startTimestamp')) {
      final l$startTimestamp = startTimestamp;
      result$data['startTimestamp'] = l$startTimestamp;
    }
    if (_$data.containsKey('duration')) {
      final l$duration = duration;
      result$data['duration'] = l$duration;
    }
    return result$data;
  }

  CopyWith$Input$UpdateElectionInput<Input$UpdateElectionInput> get copyWith =>
      CopyWith$Input$UpdateElectionInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateElectionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (_$data.containsKey('startTimestamp') !=
        other._$data.containsKey('startTimestamp')) {
      return false;
    }
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (_$data.containsKey('duration') !=
        other._$data.containsKey('duration')) {
      return false;
    }
    if (l$duration != lOther$duration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$description = description;
    final l$startTimestamp = startTimestamp;
    final l$duration = duration;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('startTimestamp') ? l$startTimestamp : const {},
      _$data.containsKey('duration') ? l$duration : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateElectionInput<TRes> {
  factory CopyWith$Input$UpdateElectionInput(
    Input$UpdateElectionInput instance,
    TRes Function(Input$UpdateElectionInput) then,
  ) = _CopyWithImpl$Input$UpdateElectionInput;

  factory CopyWith$Input$UpdateElectionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateElectionInput;

  TRes call({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
  });
}

class _CopyWithImpl$Input$UpdateElectionInput<TRes>
    implements CopyWith$Input$UpdateElectionInput<TRes> {
  _CopyWithImpl$Input$UpdateElectionInput(
    this._instance,
    this._then,
  );

  final Input$UpdateElectionInput _instance;

  final TRes Function(Input$UpdateElectionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startTimestamp = _undefined,
    Object? duration = _undefined,
  }) =>
      _then(Input$UpdateElectionInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (description != _undefined) 'description': (description as String?),
        if (startTimestamp != _undefined)
          'startTimestamp': (startTimestamp as int?),
        if (duration != _undefined) 'duration': (duration as int?),
      }));
}

class _CopyWithStubImpl$Input$UpdateElectionInput<TRes>
    implements CopyWith$Input$UpdateElectionInput<TRes> {
  _CopyWithStubImpl$Input$UpdateElectionInput(this._res);

  TRes _res;

  call({
    String? title,
    String? description,
    int? startTimestamp,
    int? duration,
  }) =>
      _res;
}

class Input$CandidateInput {
  factory Input$CandidateInput({
    required String name,
    required String party,
    required String manifesto,
    String? pictureUrl,
  }) =>
      Input$CandidateInput._({
        r'name': name,
        r'party': party,
        r'manifesto': manifesto,
        if (pictureUrl != null) r'pictureUrl': pictureUrl,
      });

  Input$CandidateInput._(this._$data);

  factory Input$CandidateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$party = data['party'];
    result$data['party'] = (l$party as String);
    final l$manifesto = data['manifesto'];
    result$data['manifesto'] = (l$manifesto as String);
    if (data.containsKey('pictureUrl')) {
      final l$pictureUrl = data['pictureUrl'];
      result$data['pictureUrl'] = (l$pictureUrl as String?);
    }
    return Input$CandidateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get party => (_$data['party'] as String);

  String get manifesto => (_$data['manifesto'] as String);

  String? get pictureUrl => (_$data['pictureUrl'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$party = party;
    result$data['party'] = l$party;
    final l$manifesto = manifesto;
    result$data['manifesto'] = l$manifesto;
    if (_$data.containsKey('pictureUrl')) {
      final l$pictureUrl = pictureUrl;
      result$data['pictureUrl'] = l$pictureUrl;
    }
    return result$data;
  }

  CopyWith$Input$CandidateInput<Input$CandidateInput> get copyWith =>
      CopyWith$Input$CandidateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CandidateInput || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('pictureUrl') !=
        other._$data.containsKey('pictureUrl')) {
      return false;
    }
    if (l$pictureUrl != lOther$pictureUrl) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$party = party;
    final l$manifesto = manifesto;
    final l$pictureUrl = pictureUrl;
    return Object.hashAll([
      l$name,
      l$party,
      l$manifesto,
      _$data.containsKey('pictureUrl') ? l$pictureUrl : const {},
    ]);
  }
}

abstract class CopyWith$Input$CandidateInput<TRes> {
  factory CopyWith$Input$CandidateInput(
    Input$CandidateInput instance,
    TRes Function(Input$CandidateInput) then,
  ) = _CopyWithImpl$Input$CandidateInput;

  factory CopyWith$Input$CandidateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CandidateInput;

  TRes call({
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
  });
}

class _CopyWithImpl$Input$CandidateInput<TRes>
    implements CopyWith$Input$CandidateInput<TRes> {
  _CopyWithImpl$Input$CandidateInput(
    this._instance,
    this._then,
  );

  final Input$CandidateInput _instance;

  final TRes Function(Input$CandidateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? party = _undefined,
    Object? manifesto = _undefined,
    Object? pictureUrl = _undefined,
  }) =>
      _then(Input$CandidateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (party != _undefined && party != null) 'party': (party as String),
        if (manifesto != _undefined && manifesto != null)
          'manifesto': (manifesto as String),
        if (pictureUrl != _undefined) 'pictureUrl': (pictureUrl as String?),
      }));
}

class _CopyWithStubImpl$Input$CandidateInput<TRes>
    implements CopyWith$Input$CandidateInput<TRes> {
  _CopyWithStubImpl$Input$CandidateInput(this._res);

  TRes _res;

  call({
    String? name,
    String? party,
    String? manifesto,
    String? pictureUrl,
  }) =>
      _res;
}

enum Enum$Role {
  VOTER,
  ORGANIZER,
  $unknown;

  factory Enum$Role.fromJson(String value) => fromJson$Enum$Role(value);

  String toJson() => toJson$Enum$Role(this);
}

String toJson$Enum$Role(Enum$Role e) {
  switch (e) {
    case Enum$Role.VOTER:
      return r'VOTER';
    case Enum$Role.ORGANIZER:
      return r'ORGANIZER';
    case Enum$Role.$unknown:
      return r'$unknown';
  }
}

Enum$Role fromJson$Enum$Role(String value) {
  switch (value) {
    case r'VOTER':
      return Enum$Role.VOTER;
    case r'ORGANIZER':
      return Enum$Role.ORGANIZER;
    default:
      return Enum$Role.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
