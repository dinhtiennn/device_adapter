part of psdk_device_adapter;

/// connection state
enum ConnectionState {
  connected,
  disconnected,
}

/// wrote reporter
class WroteReporter {
  bool ok;
  Uint8List binary;
  bool controlExit;
  Error? exception;

  WroteReporter(
    this.ok, {
    required this.binary,
    required this.controlExit,
    this.exception,
  });
}

/// read options
class ReadOptions {
  /// read timeout, default is 10
  int timeout;

  ReadOptions({this.timeout = 10});
}
