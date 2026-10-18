class GitCryptStatus {
  final bool isInitialized;
  final bool isUnlocked;
  final bool hasSymmetricKey;
  final String keyPath;

  GitCryptStatus({
    required this.isInitialized,
    required this.isUnlocked,
    required this.hasSymmetricKey,
    required this.keyPath,
  });

  factory GitCryptStatus.fromMap(Map<String, dynamic> map) {
    return GitCryptStatus(
      isInitialized: map['is_initialized'] ?? false,
      isUnlocked: map['is_unlocked'] ?? false,
      hasSymmetricKey: map['has_symmetric_key'] ?? false,
      keyPath: map['key_path'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_initialized': isInitialized,
      'is_unlocked': isUnlocked,
      'has_symmetric_key': hasSymmetricKey,
      'key_path': keyPath,
    };
  }
}
