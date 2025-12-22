part of psdk_device_adapter;

/// connected device
abstract class ConnectedDevice<T> {
  T origin();

  /// device name
  String? deviceName();

  /// device mac
  String? deviceMac();

  ConnectionState connectionState();

  /// disconnect
  Future<void> disconnect();

  /// write data
  /// [data] write data
  /// [sendDone] maybe you want send data parts, you can set this flag
  Future<void> write(
    Uint8List data, {
    bool sendDone = true,
  });

  /// read data
  Stream<Uint8List> read(ReadOptions? options);
}

class FakeConnectedDevice extends ConnectedDevice {
  @override
  FakeConnectedDevice origin() {
    return FakeConnectedDevice();
  }

  @override
  String? deviceName() {
    return "NONE";
  }

  @override
  String? deviceMac() {
    return "NONE";
  }

  @override
  ConnectionState connectionState() {
    return ConnectionState.connected;
  }

  @override
  Future<void> write(
    Uint8List data, {
    bool sendDone = true,
  }) async {
    print('WRITE: $data');
  }

  @override
  Stream<Uint8List> read(ReadOptions? options) async* {
    yield Uint8List(0);
  }

  @override
  Future<void> disconnect() async {}
}
