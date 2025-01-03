// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:electit_frontend/features/elections/all/ui/elections_page.dart'
    as _i3;
import 'package:electit_frontend/features/elections/details/ui/election_details_page.dart'
    as _i2;
import 'package:electit_frontend/features/shared/ui/pages/dashboard_page.dart'
    as _i1;
import 'package:electit_frontend/features/shared/ui/pages/welcome_page.dart'
    as _i7;
import 'package:electit_frontend/features/users/login/ui/login_page.dart'
    as _i4;
import 'package:electit_frontend/features/users/profile/ui/profile_page.dart'
    as _i5;
import 'package:electit_frontend/features/users/register/ui/register_page.dart'
    as _i6;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.ElectionDetailsPage]
class ElectionDetailsRoute extends _i8.PageRouteInfo<ElectionDetailsRouteArgs> {
  ElectionDetailsRoute({
    required String electionId,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ElectionDetailsRouteArgs>(
          orElse: () =>
              ElectionDetailsRouteArgs(electionId: pathParams.getString('id')));
      return _i2.ElectionDetailsPage(
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

  final _i9.Key? key;

  @override
  String toString() {
    return 'ElectionDetailsRouteArgs{electionId: $electionId, key: $key}';
  }
}

/// generated route for
/// [_i3.ElectionsPage]
class ElectionsRoute extends _i8.PageRouteInfo<void> {
  const ElectionsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ElectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ElectionsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ElectionsPage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfilePage();
    },
  );
}

/// generated route for
/// [_i6.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    String? role,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => RegisterRouteArgs(role: queryParams.optString('role')));
      return _i6.RegisterPage(
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

  final _i9.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{role: $role, key: $key}';
  }
}

/// generated route for
/// [_i7.WelcomePage]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.WelcomePage();
    },
  );
}
