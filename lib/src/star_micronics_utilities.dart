import 'package:collection/collection.dart';
import 'package:flutter_star_printer/src/star_micronics_model.dart';

/// Helper class to handle different type of printers
class StarMicronicsUtilities {
  static StarMicronicsModel? detectEmulation({String? modelName}) {
    if (modelName != null && modelName.isNotEmpty) {
      return starMicronicsModels.firstWhereOrNull(
        (starMicronicsModel) =>
            starMicronicsModel.models.firstWhereOrNull(
              (supportedModel) => modelName.contains(supportedModel),
            ) !=
            null,
      );
    } else {
      return null;
    }
  }

  static bool isCommandSupport(String command, String emulation) {
    // Implementation pending
    return false;
  }
}
