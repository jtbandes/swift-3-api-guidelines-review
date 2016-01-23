
class CBATTRequest : Object {
  var central: CBCentral { get }
  var characteristic: CBCharacteristic { get }
  var offset: Int { get }
  @NSCopying var value: Data?
  init()
}
let CBAdvertisementDataLocalNameKey: String
let CBAdvertisementDataTxPowerLevelKey: String
let CBAdvertisementDataServiceUUIDsKey: String
let CBAdvertisementDataServiceDataKey: String
let CBAdvertisementDataManufacturerDataKey: String
let CBAdvertisementDataOverflowServiceUUIDsKey: String
let CBAdvertisementDataIsConnectable: String
let CBAdvertisementDataSolicitedServiceUUIDsKey: String
class CBCentral : Object, Copying {
  var identifier: UUID { get }
  var maximumUpdateValueLength: Int { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
enum CBCentralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}
class CBCentralManager : Object {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?)
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]? = [:])
  func retrievePeripheralsWithIdentifiers(identifiers: [UUID]) -> [CBPeripheral]
  func retrieveConnectedPeripheralsWithServices(serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripheralsWithServices(serviceUUIDs: [CBUUID]?, options: [String : AnyObject]? = [:])
  func stopScan()
  func connect(peripheral: CBPeripheral, options: [String : AnyObject]? = [:])
  func cancelPeripheralConnection(peripheral: CBPeripheral)
  init()
}
protocol CBCentralManagerDelegate : ObjectProtocol {
  func centralManagerDidUpdateState(central: CBCentralManager)
  optional func centralManager(central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  optional func centralManager(central: CBCentralManager, didRetrievePeripherals peripherals: [CBPeripheral])
  optional func centralManager(central: CBCentralManager, didRetrieveConnectedPeripherals peripherals: [CBPeripheral])
  optional func centralManager(central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : AnyObject], rssi RSSI: Number)
  optional func centralManager(central: CBCentralManager, didConnect peripheral: CBPeripheral)
  optional func centralManager(central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?)
  optional func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?)
}
let CBCentralManagerOptionShowPowerAlertKey: String
let CBCentralManagerScanOptionAllowDuplicatesKey: String
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Broadcast: CBCharacteristicProperties { get }
  static var Read: CBCharacteristicProperties { get }
  static var WriteWithoutResponse: CBCharacteristicProperties { get }
  static var Write: CBCharacteristicProperties { get }
  static var Notify: CBCharacteristicProperties { get }
  static var Indicate: CBCharacteristicProperties { get }
  static var AuthenticatedSignedWrites: CBCharacteristicProperties { get }
  static var ExtendedProperties: CBCharacteristicProperties { get }
  static var NotifyEncryptionRequired: CBCharacteristicProperties { get }
  static var IndicateEncryptionRequired: CBCharacteristicProperties { get }
}
class CBCharacteristic : Object {
  unowned(unsafe) var service: @sil_unmanaged CBService { get }
  var uuid: CBUUID { get }
  var properties: CBCharacteristicProperties { get }
  var value: Data? { get }
  var descriptors: [CBDescriptor]? { get }
  var isBroadcasted: Bool { get }
  var isNotifying: Bool { get }
  init()
}
struct CBAttributePermissions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Readable: CBAttributePermissions { get }
  static var Writeable: CBAttributePermissions { get }
  static var ReadEncryptionRequired: CBAttributePermissions { get }
  static var WriteEncryptionRequired: CBAttributePermissions { get }
}
class CBMutableCharacteristic : CBCharacteristic {
  var permissions: CBAttributePermissions
  var subscribedCentrals: [CBCentral]? { get }
  var uuid: CBUUID?
  var properties: CBCharacteristicProperties
  var value: Data?
  var descriptors: [CBDescriptor]?
  init(type UUID: CBUUID?, properties: CBCharacteristicProperties, value: Data?, permissions: CBAttributePermissions)
  init()
}
class CBDescriptor : Object {
  unowned(unsafe) var characteristic: @sil_unmanaged CBCharacteristic { get }
  var uuid: CBUUID { get }
  var value: AnyObject? { get }
  init()
}
class CBMutableDescriptor : CBDescriptor {
  init(type UUID: CBUUID, value: AnyObject?)
  init()
}
let CBErrorDomain: String
enum CBError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case InvalidParameters
  case InvalidHandle
  case NotConnected
  case OutOfSpace
  case OperationCancelled
  case ConnectionTimeout
  case PeripheralDisconnected
  case UUIDNotAllowed
  case AlreadyAdvertising
  case MaxConnection
}
extension CBError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let CBATTErrorDomain: String
enum CBATTError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case InvalidHandle
  case ReadNotPermitted
  case WriteNotPermitted
  case InvalidPdu
  case InsufficientAuthentication
  case RequestNotSupported
  case InvalidOffset
  case InsufficientAuthorization
  case PrepareQueueFull
  case AttributeNotFound
  case AttributeNotLong
  case InsufficientEncryptionKeySize
  case InvalidAttributeValueLength
  case UnlikelyError
  case InsufficientEncryption
  case UnsupportedGroupType
  case InsufficientResources
}
extension CBATTError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WithResponse
  case WithoutResponse
}
class CBPeripheral : Object, Copying {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var identifier: UUID { get }
  var name: String? { get }
  var rssi: Number? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValueFor(characteristic: CBCharacteristic)
  func writeValue(data: Data, forCharacteristic characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptorsFor(characteristic: CBCharacteristic)
  func readValueFor(descriptor: CBDescriptor)
  func writeValue(data: Data, forDescriptor descriptor: CBDescriptor)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol CBPeripheralDelegate : ObjectProtocol {
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?)
}
enum CBPeripheralAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
class CBPeripheralManager : Object {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?)
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]? = [:])
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func add(service: CBMutableService)
  func remove(service: CBMutableService)
  func removeAllServices()
  func respondTo(request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: Data, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  init()
}
protocol CBPeripheralManagerDelegate : ObjectProtocol {
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: Error?)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest])
  optional func peripheralManagerIsReadyToUpdateSubscribers(peripheral: CBPeripheralManager)
}
let CBPeripheralManagerOptionShowPowerAlertKey: String
class CBService : Object {
  unowned(unsafe) var peripheral: @sil_unmanaged CBPeripheral { get }
  var uuid: CBUUID { get }
  var isPrimary: Bool { get }
  var includedServices: [CBService]? { get }
  var characteristics: [CBCharacteristic]? { get }
  init()
}
class CBMutableService : CBService {
  var uuid: CBUUID?
  var isPrimary: Bool
  var includedServices: [CBService]?
  var characteristics: [CBCharacteristic]?
  init(type UUID: CBUUID?, primary isPrimary: Bool)
  init()
}
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
let CBUUIDValidRangeString: String
let CBUUIDGenericAccessProfileString: String
let CBUUIDGenericAttributeProfileString: String
let CBUUIDDeviceNameString: String
let CBUUIDAppearanceString: String
let CBUUIDPeripheralPrivacyFlagString: String
let CBUUIDReconnectionAddressString: String
let CBUUIDPeripheralPreferredConnectionParametersString: String
let CBUUIDServiceChangedString: String
class CBUUID : Object, Copying {
  var data: Data { get }
  var uuidString: String { get }
   init(string theString: String)
   init(data theData: Data)
   init(cfuuid theUUID: CFUUID)
   init(nsuuid theUUID: UUID)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
