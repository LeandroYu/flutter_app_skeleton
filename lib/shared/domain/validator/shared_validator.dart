import 'package:flutter/material.dart';

import '../../presentation/resources/app_strings.dart';

class SharedValidators {
  static FormFieldValidator<T> required<T>({
    String? errorText,
  }) {
    return (T? value) {
      if (value == null || (value is String && value.trim().isEmpty) || (value is Iterable && value.isEmpty) || (value is Map && value.isEmpty)) {
        return errorText ?? AppStrings.shared.requiredInputErrorText;
      }

      return null;
    };
  }
}
