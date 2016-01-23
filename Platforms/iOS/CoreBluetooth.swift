
class CBATTRequest : NSObject {
  var central: CBCentral { get }
  var characteristic: CBCharacteristic { get }
  var offset: Int { get }
  @NSCopying var value: NSData?
}
let CBAdvertisementDataLocalNameKey: String
let CBAdvertisementDataTxPowerLevelKey: String
let CBAdvertisementDataServiceUUIDsKey: String
let CBAdvertisementDataServiceDataKey: String
let CBAdvertisementDataManufacturerDataKey: String
let CBAdvertisementDataOverflowServiceUUIDsKey: String
let CBAdvertisementDataIsConnectable: String
let CBAdvertisementDataSolicitedServiceUUIDsKey: String
class CBAttribute : NSObject {
  var UUID: CBUUID { get }
}
class CBCentral : CBPeer {
  var maximumUpdateValueLength: Int { get }
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
class CBCentralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  var isScanning: Bool { get }
  convenience init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?)
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]?)
  func retrievePeripheralsWithIdentifiers(identifiers: [NSUUID]) -> [CBPeripheral]
  func retrieveConnectedPeripheralsWithServices(serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripheralsWithServices(serviceUUIDs: [CBUUID]?, options: [String : AnyObject]?)
  func stopScan()
  func connectPeripheral(peripheral: CBPeripheral, options: [String : AnyObject]?)
  func cancelPeripheralConnection(peripheral: CBPeripheral)
  convenience init()
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  func centralManagerDidUpdateState(central: CBCentralManager)
  optional func centralManager(central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  optional func centralManager(central: CBCentralManager, didDiscoverPeripheral peripheral: CBPeripheral, advertisementData: [String : AnyObject], RSSI: NSNumber)
  optional func centralManager(central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral)
  optional func centralManager(central: CBCentralManager, didFailToConnectPeripheral peripheral: CBPeripheral, error: NSError?)
  optional func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: NSError?)
}
let CBCentralManagerOptionShowPowerAlertKey: String
let CBCentralManagerOptionRestoreIdentifierKey: String
let CBCentralManagerScanOptionAllowDuplicatesKey: String
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String
let CBConnectPeripheralOptionNotifyOnConnectionKey: String
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String
let CBConnectPeripheralOptionNotifyOnNotificationKey: String
let CBCentralManagerRestoredStatePeripheralsKey: String
let CBCentralManagerRestoredStateScanServicesKey: String
let CBCentralManagerRestoredStateScanOptionsKey: String
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
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
class CBCharacteristic : CBAttribute {
  unowned(unsafe) var service: @sil_unmanaged CBService { get }
  var properties: CBCharacteristicProperties { get }
  var value: NSData? { get }
  var descriptors: [CBDescriptor]? { get }
  var isBroadcasted: Bool { get }
  var isNotifying: Bool { get }
}
struct CBAttributePermissions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Readable: CBAttributePermissions { get }
  static var Writeable: CBAttributePermissions { get }
  static var ReadEncryptionRequired: CBAttributePermissions { get }
  static var WriteEncryptionRequired: CBAttributePermissions { get }
}
class CBMutableCharacteristic : CBCharacteristic {
  var permissions: CBAttributePermissions
  var subscribedCentrals: [CBCentral]? { get }
  var properties: CBCharacteristicProperties
  var value: NSData?
  var descriptors: [CBDescriptor]?
  init(type UUID: CBUUID, properties: CBCharacteristicProperties, value: NSData?, permissions: CBAttributePermissions)
}
class CBDescriptor : CBAttribute {
  unowned(unsafe) var characteristic: @sil_unmanaged CBCharacteristic { get }
  var value: AnyObject? { get }
}
class CBMutableDescriptor : CBDescriptor {
  init(type UUID: CBUUID, value: AnyObject?)
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
  case ConnectionFailed
  case ConnectionLimitReached
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
class CBPeer : NSObject, NSCopying {
  var identifier: NSUUID { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
  case Disconnecting
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WithResponse
  case WithoutResponse
}
class CBPeripheral : CBPeer {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var name: String? { get }
  var RSSI: NSNumber? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValueForCharacteristic(characteristic: CBCharacteristic)
  func maximumWriteValueLengthForType(type: CBCharacteristicWriteType) -> Int
  func writeValue(data: NSData, forCharacteristic characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptorsForCharacteristic(characteristic: CBCharacteristic)
  func readValueForDescriptor(descriptor: CBDescriptor)
  func writeValue(data: NSData, forDescriptor descriptor: CBDescriptor)
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesForService service: CBService, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForDescriptor descriptor: CBDescriptor, error: NSError?)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForDescriptor descriptor: CBDescriptor, error: NSError?)
}
enum CBPeripheralManagerAuthorizationStatus : Int {
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
class CBPeripheralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  convenience init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?)
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]?)
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func addService(service: CBMutableService)
  func removeService(service: CBMutableService)
  func removeAllServices()
  func respondToRequest(request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: NSData, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  convenience init()
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: NSError?)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAddService service: CBService, error: NSError?)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  optional func peripheralManagerIsReadyToUpdateSubscribers(peripheral: CBPeripheralManager)
}
let CBPeripheralManagerOptionShowPowerAlertKey: String
let CBPeripheralManagerOptionRestoreIdentifierKey: String
let CBPeripheralManagerRestoredStateServicesKey: String
let CBPeripheralManagerRestoredStateAdvertisementDataKey: String
class CBService : CBAttribute {
  unowned(unsafe) var peripheral: @sil_unmanaged CBPeripheral { get }
  var isPrimary: Bool { get }
  var includedServices: [CBService]? { get }
  var characteristics: [CBCharacteristic]? { get }
}
class CBMutableService : CBService {
  var includedServices: [CBService]?
  var characteristics: [CBCharacteristic]?
  init(type UUID: CBUUID, primary isPrimary: Bool)
}
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
class CBUUID : NSObject, NSCopying {
  var data: NSData { get }
  var UUIDString: String { get }
   init(string theString: String)
   init(data theData: NSData)
   init(CFUUID theUUID: CFUUID)
   init(NSUUID theUUID: NSUUID)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
