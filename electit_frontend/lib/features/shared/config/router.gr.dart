// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:electit_frontend/features/elections/all/ui/elections_page.dart'
    as _i4;
import 'package:electit_frontend/features/elections/create/ui/create_election_page.dart'
    as _i1;
import 'package:electit_frontend/features/elections/details/ui/election_details_page.dart'
    as _i3;
import 'package:electit_frontend/features/shared/ui/pages/dashboard_page.dart'
    as _i2;
import 'package:electit_frontend/features/shared/ui/pages/welcome_page.dart'
    as _i8;
import 'package:electit_frontend/features/users/login/ui/login_page.dart'
    as _i5;
import 'package:electit_frontend/features/users/profile/ui/profile_page.dart'
    as _i6;
import 'package:electit_frontend/features/users/register/ui/register_page.dart'
    as _i7;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.CreateElectionPage]
class CreateElectionRoute extends _i9.PageRouteInfo<void> {
  const CreateElectionRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CreateElectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateElectionRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateElectionPage();
    },
  );
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardPage();
    },
  );
}

/// generated route for
/// [_i3.ElectionDetailsPage]
class ElectionDetailsRoute extends _i9.PageRouteInfo<ElectionDetailsRouteArgs> {
  ElectionDetailsRoute({
    required String electionId,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ElectionDetailsRoute.name,
          args: ElectionDetailsRouteArgs(
            electionId: electionId,
            key: key,
          ),
          rawPathParams: {'id': electionId},
          initialChildren: children,
        );

  static const String name = 'ElectionDetailsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ElectionDetailsRouteArgs>(
          orElse: () =>
              ElectionDetailsRouteArgs(electionId: pathParams.getString('id')));
      return _i3.ElectionDetailsPage(
        electionId: args.electionId,
        key: args.key,
      );
    },
  );
}

class ElectionDetailsRouteArgs {
  const ElectionDetailsRouteArgs({
    required this.electionId,
    this.key,
  });

  final String electionId;

  final _i10.Key? key;

  @override
  String toString() {
    return 'ElectionDetailsRouteArgs{electionId: $electionId, key: $key}';
  }
}

/// generated route for
/// [_i4.ElectionsPage]
class ElectionsRoute extends _i9.PageRouteInfo<void> {
  const ElectionsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ElectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ElectionsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.ElectionsPage();
    },
  );
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginPage();
    },
  );
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfilePage();
    },
  );
}

/// generated route for
/// [_i7.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    String? role,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            role: role,
            key: key,
          ),
          rawQueryParams: {'role': role},
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => RegisterRouteArgs(role: queryParams.optString('role')));
      return _i7.RegisterPage(
        role: args.role,
        key: args.key,
      );
    },
  );
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.role,
    this.key,
  });

  final String? role;

  final _i10.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{role: $role, key: $key}';
  }
}

/// generated route for
/// [_i8.WelcomePage]
class WelcomeRoute extends _i9.PageRouteInfo<void> {
  const WelcomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.WelcomePage();
    },
  );
}
