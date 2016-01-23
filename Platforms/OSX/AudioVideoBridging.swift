
typealias AVB17221ACMPInterfaceCompletion = (Error?, AVB17221ACMPMessage) -> Void
protocol AVB17221ACMPClient {
  func acmpDidReceiveCommand(message: AVB17221ACMPMessage, on anInterface: AVB17221ACMPInterface) -> Bool
  func acmpDidReceiveResponse(message: AVB17221ACMPMessage, on anInterface: AVB17221ACMPInterface) -> Bool
}
class AVB17221ACMPInterface : AVB1722ControlInterface {
  @NSCopying var multicastDestinationAddress: AVBMACAddress { get }
   init(interfaceNamed anInterfaceName: String)
  func setHandler(handler: AVB17221ACMPClient, forEntityID targetEntityID: UInt64) -> Bool
  func removeHandlerForEntityID(targetEntityID: UInt64)
  func sendACMPResponseMessage(message: AVB17221ACMPMessage) throws
  func sendACMPCommand(message: AVB17221ACMPMessage, completionHandler: AVB17221ACMPInterfaceCompletion) -> Bool
  init?(interfaceName anInterfaceName: String)
  init?(interface anInterface: AVBInterface)
}
class AVB17221ACMPMessage : Object, Copying {
  var messageType: AVB17221ACMPMessageType
  var status: AVB17221ACMPStatusCode
  var streamID: UInt64
  var controllerEntityID: UInt64
  var talkerEntityID: UInt64
  var listenerEntityID: UInt64
  var talkerUniqueID: UInt16
  var listenerUniqueID: UInt16
  @NSCopying var destinationMAC: AVBMACAddress?
  var connectionCount: UInt16
  var sequenceID: UInt16
  var flags: AVB17221ACMPFlags
  var vlanID: UInt16
  @NSCopying var sourceMAC: AVBMACAddress?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
protocol AVB17221AECPClient {
  func aecpDidReceiveCommand(message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
  func aecpDidReceiveResponse(message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
}
typealias AVB17221AECPInterfaceCompletion = (Error?, AVB17221AECPMessage) -> Void
class AVB17221AECPInterface : AVB1722ControlInterface {
   init?(interfaceNamed anInterfaceName: String)
  func setHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  func removeHandlerForEntityID(targetEntityID: UInt64)
  func setCommandHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  func removeCommandHandlerForEntityID(targetEntityID: UInt64)
  func setResponseHandler(handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool
  func removeResponseHandlerForControllerEntityID(controllerEntityID: UInt64)
  func sendCommand(message: AVB17221AECPMessage, to destMAC: AVBMACAddress, completionHandler: AVB17221AECPInterfaceCompletion) -> Bool
  func sendResponse(message: AVB17221AECPMessage, to destMAC: AVBMACAddress) throws
  init?(interfaceName anInterfaceName: String)
  init?(interface anInterface: AVBInterface)
}
class AVB17221AECPMessage : Object, Copying {
  var messageType: AVB17221AECPMessageType
  var status: AVB17221AECPStatusCode
  var targetEntityID: UInt64
  var controllerEntityID: UInt64
  var sequenceID: UInt16
  @NSCopying var sourceMAC: AVBMACAddress
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AVB17221AECPAEMMessage : AVB17221AECPMessage {
  var commandType: AVB17221AEMCommandType
  var isUnsolicited: Bool
  var isControllerRequest: Bool
  @NSCopying var commandSpecificData: Data?
  class func command() -> AVB17221AECPAEMMessage
  class func response() -> AVB17221AECPAEMMessage
  init()
}
class AVB17221AECPAddressAccessMessage : AVB17221AECPMessage {
  var tlvs: [AVB17221AECPAddressAccessTLV]?
  class func command() -> AVB17221AECPAddressAccessMessage
  class func response() -> AVB17221AECPAddressAccessMessage
  init()
}
class AVB17221AECPAddressAccessTLV : Object {
  var mode: AVB17221AECPAddressAccessTLVMode
  var address: UInt64
  @NSCopying var memoryData: Data?
  init()
}
class AVB17221AECPAVCMessage : AVB17221AECPMessage {
  @NSCopying var commandResponse: Data?
  init()
}
class AVB17221AECPVendorMessage : AVB17221AECPMessage {
  var protocolID: UInt64
  @NSCopying var protocolSpecificData: Data?
  init()
}
class AVB17221Entity : Object {
  var isLocalEntity: Bool
  var timeToLive: UInt8
  var entityID: UInt64
  var entityModelID: UInt64
  var entityCapabilities: AVB17221ADPEntityCapabilities
  var talkerStreamSources: UInt16
  var talkerCapabilities: AVB17221ADPTalkerCapabilities
  var listenerStreamSinks: UInt16
  var listenerCapabilities: AVB17221ADPListenerCapabilities
  var controllerCapabilities: AVB17221ADPControllerCapabilities
  var availableIndex: UInt32
  var gPTPGrandmasterID: UInt64
  var gPTPDomainNumber: UInt8
  var identifyControlIndex: UInt16
  var interfaceIndex: UInt16
  var associationID: UInt64
  var macAddresses: [AVBMACAddress]
  unowned(unsafe) var entityDiscovery: @sil_unmanaged AVB17221EntityDiscovery?
  init()
}
class AVB17221EntityDiscovery : Object {
  var interfaceName: String
  unowned(unsafe) var interface: @sil_unmanaged AVBInterface? { get }
  unowned(unsafe) var discoveryDelegate: @sil_unmanaged AVB17221EntityDiscoveryDelegate?
  init(interfaceName anInterfaceName: String)
  func primeIterators()
  func discoverEntities() -> Bool
  func discoverEntity(entityID: UInt64) -> Bool
  func addLocalEntity(anEntity: AVB17221Entity) throws
  func removeLocalEntity(guid: UInt64) throws
  func changeEntityWithEntityID(entityID: UInt64, toNewGPTPGrandmasterID gPTPGrandmasterID: UInt64) throws
  init()
}
struct AVB17221EntityPropertyChanged : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TimeToLive: AVB17221EntityPropertyChanged { get }
  static var EntityID: AVB17221EntityPropertyChanged { get }
  static var VendorID: AVB17221EntityPropertyChanged { get }
  static var ModelID: AVB17221EntityPropertyChanged { get }
  static var EntityCapabilities: AVB17221EntityPropertyChanged { get }
  static var TalkerStreamSources: AVB17221EntityPropertyChanged { get }
  static var TalkerCapabilities: AVB17221EntityPropertyChanged { get }
  static var ListenerStreamSinks: AVB17221EntityPropertyChanged { get }
  static var ListenerCapabilities: AVB17221EntityPropertyChanged { get }
  static var ControllerCapabilities: AVB17221EntityPropertyChanged { get }
  static var AvailableIndex: AVB17221EntityPropertyChanged { get }
  static var GPTPGrandmasterID: AVB17221EntityPropertyChanged { get }
  static var MACAddress: AVB17221EntityPropertyChanged { get }
  static var AssociationID: AVB17221EntityPropertyChanged { get }
  static var EntityType: AVB17221EntityPropertyChanged { get }
  static var IdentifyControlIndex: AVB17221EntityPropertyChanged { get }
  static var InterfaceIndex: AVB17221EntityPropertyChanged { get }
  static var GPTPDomainNumber: AVB17221EntityPropertyChanged { get }
}
protocol AVB17221EntityDiscoveryDelegate {
  func didAddRemoteEntity(newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didRemoveRemoteEntity(oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didRediscoverRemoteEntity(entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didUpdateRemoteEntity(entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didAddLocalEntity(newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didRemoveLocalEntity(oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didRediscoverLocalEntity(entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  func didUpdateLocalEntity(entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
}
class AVB1722ControlInterface : Object {
  var interfaceName: String { get }
  unowned(unsafe) var interface: @sil_unmanaged AVBInterface? { get }
  init?(interfaceName anInterfaceName: String)
  init?(interface anInterface: AVBInterface)
}
let AVBNullEUI64: UInt64
class AVBCentralManager : Object {
  func startControllerMatching()
  func didAdd(interface: AVBInterface)
  func didRemove(interface: AVBInterface)
  func streamingEnabledInterfacesOnly() -> Bool
  class func nextAvailableDynamicEntityID() -> UInt64
  class func releaseDynamicEntityID(entityID: UInt64)
  class func nextAvailableDynamicEntityModelID() -> UInt64
  class func releaseDynamicEntityModelID(entityModelID: UInt64)
  init()
}
var AVB_LEGACY_OBJC_RUNTIME: Int32 { get }
var AVB_MODERN_OBJC_RUNTIME: Int32 { get }
var AVBMACAddressSize: Int32 { get }
enum AVB17221ADPEntityCapabilities : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  static var EFUMode: AVB17221ADPEntityCapabilities { get }
  case AddressAccessSupported
  case GatewayEntity
  case AEMSupported
  case LegacyAVC
  case AssociationIDSupported
  case AssociationIDValid
  case VendorUniqueSupported
  case ClassASupported
  case ClassBSupported
  static var GPTPSupported: AVB17221ADPEntityCapabilities { get }
  case AEMAuthenticationSupported
  case AEMAuthenticationRequired
  case AEMPersistentAcquireSupported
  case AEMIdenitifyControlIndexValid
  case AEMInterfaceIndexValid
  case GeneralControllerIgnore
  case EntityNotReady
}
struct AVB17221ADPTalkerCapabilities : OptionSetType {
  init(rawValue: UInt16)
  let rawValue: UInt16
  static var Implemented: AVB17221ADPTalkerCapabilities { get }
  static var HasOtherSource: AVB17221ADPTalkerCapabilities { get }
  static var HasControlSource: AVB17221ADPTalkerCapabilities { get }
  static var HasMediaClockSource: AVB17221ADPTalkerCapabilities { get }
  static var HasSMPTESource: AVB17221ADPTalkerCapabilities { get }
  static var HasMIDISource: AVB17221ADPTalkerCapabilities { get }
  static var HasAudioSource: AVB17221ADPTalkerCapabilities { get }
  static var HasVideoSource: AVB17221ADPTalkerCapabilities { get }
}
struct AVB17221ADPListenerCapabilities : OptionSetType {
  init(rawValue: UInt16)
  let rawValue: UInt16
  static var Implemented: AVB17221ADPListenerCapabilities { get }
  static var HasOtherSink: AVB17221ADPListenerCapabilities { get }
  static var HasControlSink: AVB17221ADPListenerCapabilities { get }
  static var HasMediaClockSink: AVB17221ADPListenerCapabilities { get }
  static var HasSMPTESink: AVB17221ADPListenerCapabilities { get }
  static var HasMIDISink: AVB17221ADPListenerCapabilities { get }
  static var HasAudioSink: AVB17221ADPListenerCapabilities { get }
  static var HasVideoSink: AVB17221ADPListenerCapabilities { get }
}
struct AVB17221ADPControllerCapabilities : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Implemented: AVB17221ADPControllerCapabilities { get }
  static var HasLayer3Proxy: AVB17221ADPControllerCapabilities { get }
}
enum AVB17221AECPMessageType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case AEMCommand
  case AEMResponse
  case AddressAccessCommand
  case AddressAccessResponse
  case LegacyAVCCommand
  case LegacyAVCResponse
  case VendorUniqueCommand
  case VendorUniqueResponse
}
enum AVB17221AECPStatusCode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Success
  case NotImplemented
  case NoSuchDescriptor
  case EntityLocked
  case EntityAcquired
  case NotAuthorized
  case InsufficientPrivileges
  case BadArguments
  case NoResources
  case InProgress
  case EntityMisbehaving
  case NotSupported
  case StreamIsRunning
  static var AddressAccessAddressTooLow: AVB17221AECPStatusCode { get }
  static var AddressAccessAddressTooHigh: AVB17221AECPStatusCode { get }
  static var AddressAccessAddressInvalid: AVB17221AECPStatusCode { get }
  static var AddressAccessTLVInvalid: AVB17221AECPStatusCode { get }
  static var AddressAccessDataInvalid: AVB17221AECPStatusCode { get }
  static var AddressAccessUnsupported: AVB17221AECPStatusCode { get }
  static var AVCFailure: AVB17221AECPStatusCode { get }
}
enum AVB17221ACMPMessageType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ConnectTXCommand
  case ConnectTXResponse
  case DisconnectTXCommand
  case DisconnectTXResponse
  case GetTXStateCommand
  case GetTXStateResponse
  case ConnectRXCommand
  case ConnectRXResponse
  case DisconnectRXCommand
  case DisconnectRXResponse
  case GetRXStateCommand
  case GetRXStateResponse
  case GetTXConnectionCommand
  case GetTXConnectionResponse
}
enum AVB17221ACMPStatusCode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Success
  case ListenerUnknownID
  case TalkerUnknownID
  case TalkerDestMACFail
  case TalkerNoStreamIndex
  case TalkerNoBandwidth
  case TalkerExclusive
  case ListenerTalkerTimeout
  case ListenerExclusive
  case StateUnavailable
  case NotConnected
  case NoSuchConnection
  case UnableToSendMessage
  case TalkerMisbehaving
  case ListenerMisbehaving
  case SRPFace
  case ControllerNotAuthorized
  case IncompatibleRequest
  case NotSupported
}
struct AVB17221ACMPFlags : OptionSetType {
  init(rawValue: UInt16)
  let rawValue: UInt16
  static var None: AVB17221ACMPFlags { get }
  static var ClassB: AVB17221ACMPFlags { get }
  static var FastConnect: AVB17221ACMPFlags { get }
  static var SavedState: AVB17221ACMPFlags { get }
  static var StreamingWait: AVB17221ACMPFlags { get }
  static var SupportsEncrypted: AVB17221ACMPFlags { get }
  static var EncryptedPDU: AVB17221ACMPFlags { get }
  static var StreamingTalkerFailed: AVB17221ACMPFlags { get }
}
enum AVB17221AEMCommandType : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case AcquireEntity
  case LockEntity
  case EntityAvailable
  case ControllerAvailable
  case ReadDescriptor
  case WriteDescriptor
  case SetConfiguration
  case GetConfiguration
  case SetStreamFormat
  case GetStreamFormat
  case SetVideoFormat
  case GetVideoFormat
  case SetSensorFormat
  case GetSensorFormat
  case SetStreamInfo
  case GetStreamInfo
  case SetName
  case GetName
  case SetAssociationID
  case GetAssociationID
  case SetSamplingRate
  case GetSamplingRate
  case SetClockSource
  case GetClockSource
  case SetControl
  case GetControl
  case IncrementControl
  case DecrementControl
  case SetSignalSelector
  case GetSignalSelector
  case SetMixer
  case GetMixer
  case SetMatrix
  case GetMatrix
  case StartStreaming
  case StopStreaming
  case RegisterUnsolicitedNotification
  case DeregisterUnsolicitedNotification
  case IdentifyNotification
  case GetAVBInfo
  case GetASPath
  case GetCounters
  case Reboot
  case GetAudioMap
  case AddAudioMapping
  case RemoveAudioMapping
  case GetVideoMap
  case AddVideoMapping
  case RemoveVideoMapping
  case GetSensorMap
  case AddSensorMapping
  case RemoveSensorMapping
  case StartOperation
  case AbortOperation
  case OperationStatus
  case AuthenticateAddKey
  case AuthenticateDeleteKey
  case AuthenticateGetKeyList
  case AuthenticateGetKey
  case AuthenticateAddKeyToChain
  case AuthenticateDeleteKeyFromChain
  case AuthenticateGetKeychainList
  case AuthenticateGetIdentity
  case AuthenticateAddToken
  case AuthenticateDeleteToken
  case Authenticate
  case Deauthenticate
  case EnableTransportSecurity
  case DisableTransportSecurity
  case EnableStreamEncryption
  case DisableStreamEncryption
  case SetMemoryObjectLength
  case GetMemoryObjectLength
  case SetStreamBackup
  case GetStreamBackup
}
enum AVB17221AECPAddressAccessTLVMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Read
  case Write
  case Execute
}
let AVBErrorDomain: String
class AVBEthernetInterface : AVBInterface {
  init?(interfaceName anInterfaceName: String)
  init()
}
class AVBInterface : Object {
  var interfaceName: String { get }
  var entityDiscovery: AVB17221EntityDiscovery? { get }
  var aecp: AVB17221AECPInterface? { get }
  var acmp: AVB17221ACMPInterface? { get }
  class func macAddressForInterfaceNamed(anInterfaceName: String) -> AVBMACAddress?
  class func supportedInterfaces() -> [String]?
  class func isAVBEnabledOnInterfaceNamed(anInterfaceName: String) -> Bool
  class func isAVBCapableInterfaceNamed(anInterfaceName: String) -> Bool
  init?(interfaceName anInterfaceName: String)
  class func myGUID() -> UInt64
  class func myEntityID() -> UInt64
  init()
}
class AVBMACAddress : Object, Copying {
  init(bytes: UnsafePointer<UInt8>)
  var bytes: UnsafePointer<UInt8> { get }
  @NSCopying var dataRepresentation: Data
  var stringRepresentation: String
  var isMulticast: Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
