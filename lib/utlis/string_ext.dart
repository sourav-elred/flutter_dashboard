extension StringExtensions on String {
  /// Converts a route-like string (e.g., '/dashboard') to a formatted title (e.g., 'Dashboard')
  String toTitleCase() {
    // Remove leading slash and split by '-' and '/'
    final parts = replaceAll('/', '').split('-');
    // Capitalize each part and join with a space
    return parts
        .map((word) => word.isNotEmpty
            ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
            : '')
        .join(' ');
  }
}
