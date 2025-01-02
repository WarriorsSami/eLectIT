// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:electit_frontend/features/shared/ui/pages/welcome_page.dart'
    as _i3;
import 'package:electit_frontend/features/users/login/ui/login_page.dart'
    as _i1;
import 'package:electit_frontend/features/users/register/ui/register_page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i4.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    String? role,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
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

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => RegisterRouteArgs(role: queryParams.optString('role')));
      return _i2.RegisterPage(
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

  final _i5.Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{role: $role, key: $key}';
  }
}

/// generated route for
/// [_i3.WelcomePage]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.WelcomePage();
    },
  );
}
