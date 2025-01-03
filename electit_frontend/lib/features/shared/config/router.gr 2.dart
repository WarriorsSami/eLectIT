// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:electit_frontend/features/elections/all/ui/elections_page.dart'
    as _i2;
import 'package:electit_frontend/features/shared/ui/pages/dashboard_page.dart'
    as _i1;
import 'package:electit_frontend/features/shared/ui/pages/welcome_page.dart'
    as _i6;
import 'package:electit_frontend/features/users/login/ui/login_page.dart'
    as _i3;
import 'package:electit_frontend/features/users/profile/ui/profile_page.dart'
    as _i4;
import 'package:electit_frontend/features/users/register/ui/register_page.dart'
    as _i5;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.ElectionsPage]
class ElectionsRoute extends _i7.PageRouteInfo<void> {
  const ElectionsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ElectionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ElectionsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.ElectionsPage();
    },
  );
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginPage();
    },
  );
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfilePage();
    },
  );
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    String? role,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
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

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => RegisterRouteArgs(role: queryParams.optString('role')));
      return _i5.RegisterPage(
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

  final _i8.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{role: $role, key: $key}';
  }
}

/// generated route for
/// [_i6.WelcomePage]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.WelcomePage();
    },
  );
}
