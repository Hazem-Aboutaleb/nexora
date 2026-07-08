class SourceCredentials {
  const SourceCredentials({
    this.host,
    this.port,
    this.username,
    this.password,
    this.path,
    this.token,
  });

  final String? host;
  final int? port;
  final String? username;
  final String? password;
  final String? path;
  final String? token;

  SourceCredentials copyWith({
    String? host,
    int? port,
    String? username,
    String? password,
    String? path,
    String? token,
  }) {
    return SourceCredentials(
      host: host ?? this.host,
      port: port ?? this.port,
      username: username ?? this.username,
      password: password ?? this.password,
      path: path ?? this.path,
      token: token ?? this.token,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SourceCredentials &&
            other.host == host &&
            other.port == port &&
            other.username == username &&
            other.password == password &&
            other.path == path &&
            other.token == token;
  }

  @override
  int get hashCode => Object.hash(host, port, username, password, path, token);
}
