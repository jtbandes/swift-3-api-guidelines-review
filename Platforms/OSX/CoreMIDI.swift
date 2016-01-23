
typealias MIDIDriverRef = UnsafeMutablePointer<UnsafeMutablePointer<MIDIDriverInterface>>
typealias MIDIDeviceListRef = MIDIObjectRef
struct MIDIDriverInterface {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var FindDevices: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!
  var Start: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!
  var Stop: (@convention(c) (MIDIDriverRef) -> OSStatus)!
  var Configure: (@convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus)!
  var Send: (@convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!
  var EnableSource: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus)!
  var Flush: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!
  var Monitor: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, FindDevices: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!, Start: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!, Stop: (@convention(c) (MIDIDriverRef) -> OSStatus)!, Configure: (@convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus)!, Send: (@convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!, EnableSource: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus)!, Flush: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!, Monitor: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus)!)
}
let kMIDIDriverPropertyUsesSerial: CFString!
func MIDIDeviceCreate(owner: MIDIDriverRef, _ name: CFString!, _ manufacturer: CFString!, _ model: CFString!, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
func MIDIDeviceDispose(device: MIDIDeviceRef) -> OSStatus
func MIDIDeviceListGetNumberOfDevices(devList: MIDIDeviceListRef) -> Int
func MIDIDeviceListGetDevice(devList: MIDIDeviceListRef, _ index0: Int) -> MIDIDeviceRef
func MIDIDeviceListAddDevice(devList: MIDIDeviceListRef, _ dev: MIDIDeviceRef) -> OSStatus
func MIDIDeviceListDispose(devList: MIDIDeviceListRef) -> OSStatus
func MIDIEndpointSetRefCons(endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<Void>, _ ref2: UnsafeMutablePointer<Void>) -> OSStatus
func MIDIEndpointGetRefCons(endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ ref2: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus
func MIDIGetDriverIORunLoop() -> Unmanaged<CFRunLoop>!
func MIDIGetDriverDeviceList(driver: MIDIDriverRef) -> MIDIDeviceListRef
func MIDIDriverEnableMonitoring(driver: MIDIDriverRef, _ enabled: Bool) -> OSStatus
var kMIDIInvalidClient: OSStatus { get }
var kMIDIInvalidPort: OSStatus { get }
var kMIDIWrongEndpointType: OSStatus { get }
var kMIDINoConnection: OSStatus { get }
var kMIDIUnknownEndpoint: OSStatus { get }
var kMIDIUnknownProperty: OSStatus { get }
var kMIDIWrongPropertyType: OSStatus { get }
var kMIDINoCurrentSetup: OSStatus { get }
var kMIDIMessageSendErr: OSStatus { get }
var kMIDIServerStartErr: OSStatus { get }
var kMIDISetupFormatErr: OSStatus { get }
var kMIDIWrongThread: OSStatus { get }
var kMIDIObjectNotFound: OSStatus { get }
var kMIDIIDNotUnique: OSStatus { get }
var kMIDINotPermitted: OSStatus { get }
typealias MIDIObjectRef = UInt32
typealias MIDIClientRef = MIDIObjectRef
typealias MIDIPortRef = MIDIObjectRef
typealias MIDIDeviceRef = MIDIObjectRef
typealias MIDIEntityRef = MIDIObjectRef
typealias MIDIEndpointRef = MIDIObjectRef
typealias MIDITimeStamp = UInt64
enum MIDIObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Other
  case Device
  case Entity
  case Source
  case Destination
  case ExternalDevice
  case ExternalEntity
  case ExternalSource
  case ExternalDestination
}
let kMIDIObjectType_ExternalMask: MIDIObjectType
typealias MIDIUniqueID = Int32
var kMIDIInvalidUniqueID: MIDIUniqueID { get }
typealias MIDINotifyProc = @convention(c) (UnsafePointer<MIDINotification>, UnsafeMutablePointer<Void>) -> Void
typealias MIDINotifyBlock = (UnsafePointer<MIDINotification>) -> Void
typealias MIDIReadProc = @convention(c) (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias MIDIReadBlock = (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>) -> Void
typealias MIDICompletionProc = @convention(c) (UnsafeMutablePointer<MIDISysexSendRequest>) -> Void
struct MIDIPacket {
  var timeStamp: MIDITimeStamp
  var length: UInt16
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: MIDITimeStamp, length: UInt16, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct MIDIPacketList {
  var numPackets: UInt32
  var packet: (MIDIPacket)
  init()
  init(numPackets: UInt32, packet: (MIDIPacket))
}
struct MIDISysexSendRequest {
  var destination: MIDIEndpointRef
  var data: UnsafePointer<UInt8>
  var bytesToSend: UInt32
  var complete: DarwinBoolean
  var reserved: (UInt8, UInt8, UInt8)
  var completionProc: MIDICompletionProc
  var completionRefCon: UnsafeMutablePointer<Void>
}
enum MIDINotificationMessageID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MsgSetupChanged
  case MsgObjectAdded
  case MsgObjectRemoved
  case MsgPropertyChanged
  case MsgThruConnectionsChanged
  case MsgSerialPortOwnerChanged
  case MsgIOError
}
struct MIDINotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32)
}
struct MIDIObjectAddRemoveNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var parent: MIDIObjectRef
  var parentType: MIDIObjectType
  var child: MIDIObjectRef
  var childType: MIDIObjectType
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, parent: MIDIObjectRef, parentType: MIDIObjectType, child: MIDIObjectRef, childType: MIDIObjectType)
}
struct MIDIObjectPropertyChangeNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var object: MIDIObjectRef
  var objectType: MIDIObjectType
  var propertyName: Unmanaged<CFString>
}
struct MIDIIOErrorNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var driverDevice: MIDIDeviceRef
  var errorCode: OSStatus
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, driverDevice: MIDIDeviceRef, errorCode: OSStatus)
}
let kMIDIPropertyName: CFString
let kMIDIPropertyManufacturer: CFString
let kMIDIPropertyModel: CFString
let kMIDIPropertyUniqueID: CFString
let kMIDIPropertyDeviceID: CFString
let kMIDIPropertyReceiveChannels: CFString
let kMIDIPropertyTransmitChannels: CFString
let kMIDIPropertyMaxSysExSpeed: CFString
let kMIDIPropertyAdvanceScheduleTimeMuSec: CFString
let kMIDIPropertyIsEmbeddedEntity: CFString
let kMIDIPropertyIsBroadcast: CFString
let kMIDIPropertySingleRealtimeEntity: CFString
let kMIDIPropertyConnectionUniqueID: CFString
let kMIDIPropertyOffline: CFString
let kMIDIPropertyPrivate: CFString
let kMIDIPropertyDriverOwner: CFString
let kMIDIPropertyNameConfiguration: CFString
let kMIDIPropertyImage: CFString
let kMIDIPropertyDriverVersion: CFString
let kMIDIPropertySupportsGeneralMIDI: CFString
let kMIDIPropertySupportsMMC: CFString
let kMIDIPropertyCanRoute: CFString
let kMIDIPropertyReceivesClock: CFString
let kMIDIPropertyReceivesMTC: CFString
let kMIDIPropertyReceivesNotes: CFString
let kMIDIPropertyReceivesProgramChanges: CFString
let kMIDIPropertyReceivesBankSelectMSB: CFString
let kMIDIPropertyReceivesBankSelectLSB: CFString
let kMIDIPropertyTransmitsClock: CFString
let kMIDIPropertyTransmitsMTC: CFString
let kMIDIPropertyTransmitsNotes: CFString
let kMIDIPropertyTransmitsProgramChanges: CFString
let kMIDIPropertyTransmitsBankSelectMSB: CFString
let kMIDIPropertyTransmitsBankSelectLSB: CFString
let kMIDIPropertyPanDisruptsStereo: CFString
let kMIDIPropertyIsSampler: CFString
let kMIDIPropertyIsDrumMachine: CFString
let kMIDIPropertyIsMixer: CFString
let kMIDIPropertyIsEffectUnit: CFString
let kMIDIPropertyMaxReceiveChannels: CFString
let kMIDIPropertyMaxTransmitChannels: CFString
let kMIDIPropertyDriverDeviceEditorApp: CFString
let kMIDIPropertySupportsShowControl: CFString
let kMIDIPropertyDisplayName: CFString
func MIDIClientCreate(name: CFString, _ notifyProc: MIDINotifyProc?, _ notifyRefCon: UnsafeMutablePointer<Void>, _ outClient: UnsafeMutablePointer<MIDIClientRef>) -> OSStatus
func MIDIClientCreateWithBlock(name: CFString, _ outClient: UnsafeMutablePointer<MIDIClientRef>, _ notifyBlock: MIDINotifyBlock?) -> OSStatus
func MIDIClientDispose(client: MIDIClientRef) -> OSStatus
func MIDIInputPortCreate(client: MIDIClientRef, _ portName: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
func MIDIInputPortCreateWithBlock(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>, _ readBlock: MIDIReadBlock) -> OSStatus
func MIDIOutputPortCreate(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
func MIDIPortDispose(port: MIDIPortRef) -> OSStatus
func MIDIPortConnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef, _ connRefCon: UnsafeMutablePointer<Void>) -> OSStatus
func MIDIPortDisconnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef) -> OSStatus
func MIDIGetNumberOfDevices() -> Int
func MIDIGetDevice(deviceIndex0: Int) -> MIDIDeviceRef
func MIDIDeviceGetNumberOfEntities(device: MIDIDeviceRef) -> Int
func MIDIDeviceGetEntity(device: MIDIDeviceRef, _ entityIndex0: Int) -> MIDIEntityRef
func MIDIEntityGetNumberOfSources(entity: MIDIEntityRef) -> Int
func MIDIEntityGetSource(entity: MIDIEntityRef, _ sourceIndex0: Int) -> MIDIEndpointRef
func MIDIEntityGetNumberOfDestinations(entity: MIDIEntityRef) -> Int
func MIDIEntityGetDestination(entity: MIDIEntityRef, _ destIndex0: Int) -> MIDIEndpointRef
func MIDIEntityGetDevice(inEntity: MIDIEntityRef, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
func MIDIGetNumberOfSources() -> Int
func MIDIGetSource(sourceIndex0: Int) -> MIDIEndpointRef
func MIDIGetNumberOfDestinations() -> Int
func MIDIGetDestination(destIndex0: Int) -> MIDIEndpointRef
func MIDIEndpointGetEntity(inEndpoint: MIDIEndpointRef, _ outEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
func MIDIDestinationCreate(client: MIDIClientRef, _ name: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
func MIDIDestinationCreateWithBlock(client: MIDIClientRef, _ name: CFString, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>, _ readBlock: MIDIReadBlock) -> OSStatus
func MIDISourceCreate(client: MIDIClientRef, _ name: CFString, _ outSrc: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
func MIDIEndpointDispose(endpt: MIDIEndpointRef) -> OSStatus
func MIDIGetNumberOfExternalDevices() -> Int
func MIDIGetExternalDevice(deviceIndex0: Int) -> MIDIDeviceRef
func MIDIObjectGetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outValue: UnsafeMutablePointer<Int32>) -> OSStatus
func MIDIObjectSetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ value: Int32) -> OSStatus
func MIDIObjectGetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
func MIDIObjectSetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: CFString) -> OSStatus
func MIDIObjectGetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
func MIDIObjectSetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ data: CFData) -> OSStatus
func MIDIObjectGetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
func MIDIObjectSetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ dict: CFDictionary) -> OSStatus
func MIDIObjectGetProperties(obj: MIDIObjectRef, _ outProperties: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ deep: Bool) -> OSStatus
func MIDIObjectRemoveProperty(obj: MIDIObjectRef, _ propertyID: CFString) -> OSStatus
func MIDIObjectFindByUniqueID(inUniqueID: MIDIUniqueID, _ outObject: UnsafeMutablePointer<MIDIObjectRef>, _ outObjectType: UnsafeMutablePointer<MIDIObjectType>) -> OSStatus
func MIDISend(port: MIDIPortRef, _ dest: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
func MIDISendSysex(request: UnsafeMutablePointer<MIDISysexSendRequest>) -> OSStatus
func MIDIReceived(src: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
func MIDIFlushOutput(dest: MIDIEndpointRef) -> OSStatus
func MIDIRestart() -> OSStatus
func MIDIPacketNext(pkt: UnsafePointer<MIDIPacket>) -> UnsafeMutablePointer<MIDIPacket>
func MIDIPacketListInit(pktlist: UnsafeMutablePointer<MIDIPacketList>) -> UnsafeMutablePointer<MIDIPacket>
func MIDIPacketListAdd(pktlist: UnsafeMutablePointer<MIDIPacketList>, _ listSize: Int, _ curPacket: UnsafeMutablePointer<MIDIPacket>, _ time: MIDITimeStamp, _ nData: Int, _ data: UnsafePointer<UInt8>) -> UnsafeMutablePointer<MIDIPacket>
typealias MIDISetupRef = MIDIObjectRef
func MIDIDeviceAddEntity(device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
func MIDIDeviceRemoveEntity(device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus
func MIDIEntityAddOrRemoveEndpoints(entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus
func MIDISetupAddDevice(device: MIDIDeviceRef) -> OSStatus
func MIDISetupRemoveDevice(device: MIDIDeviceRef) -> OSStatus
func MIDISetupAddExternalDevice(device: MIDIDeviceRef) -> OSStatus
func MIDISetupRemoveExternalDevice(device: MIDIDeviceRef) -> OSStatus
func MIDIExternalDeviceCreate(name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
typealias MIDIThruConnectionRef = MIDIObjectRef
struct MIDIValueMap {
  var value: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(value: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
enum MIDITransformType : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case None
  case FilterOut
  case MapControl
  case Add
  case Scale
  case MinValue
  case MaxValue
  case MapValue
}
var kMIDIThruConnection_MaxEndpoints: Int { get }
enum MIDITransformControlType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ControlType_7Bit
  case ControlType_14Bit
  case ControlType_7BitRPN
  case ControlType_14BitRPN
  case ControlType_7BitNRPN
  case ControlType_14BitNRPN
}
struct MIDITransform {
  var transform: MIDITransformType
  var param: Int16
  init()
  init(transform: MIDITransformType, param: Int16)
}
struct MIDIControlTransform {
  var controlType: MIDITransformControlType
  var remappedControlType: MIDITransformControlType
  var controlNumber: UInt16
  var transform: MIDITransformType
  var param: Int16
  init()
  init(controlType: MIDITransformControlType, remappedControlType: MIDITransformControlType, controlNumber: UInt16, transform: MIDITransformType, param: Int16)
}
struct MIDIThruConnectionEndpoint {
  var endpointRef: MIDIEndpointRef
  var uniqueID: MIDIUniqueID
  init()
  init(endpointRef: MIDIEndpointRef, uniqueID: MIDIUniqueID)
}
struct MIDIThruConnectionParams {
  var version: UInt32
  var numSources: UInt32
  var sources: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint)
  var numDestinations: UInt32
  var destinations: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint)
  var channelMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var lowVelocity: UInt8
  var highVelocity: UInt8
  var lowNote: UInt8
  var highNote: UInt8
  var noteNumber: MIDITransform
  var velocity: MIDITransform
  var keyPressure: MIDITransform
  var channelPressure: MIDITransform
  var programChange: MIDITransform
  var pitchBend: MIDITransform
  var filterOutSysEx: UInt8
  var filterOutMTC: UInt8
  var filterOutBeatClock: UInt8
  var filterOutTuneRequest: UInt8
  var reserved2: (UInt8, UInt8, UInt8)
  var filterOutAllControls: UInt8
  var numControlTransforms: UInt16
  var numMaps: UInt16
  var reserved3: (UInt16, UInt16, UInt16, UInt16)
  init()
  init(version: UInt32, numSources: UInt32, sources: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint), numDestinations: UInt32, destinations: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint), channelMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), lowVelocity: UInt8, highVelocity: UInt8, lowNote: UInt8, highNote: UInt8, noteNumber: MIDITransform, velocity: MIDITransform, keyPressure: MIDITransform, channelPressure: MIDITransform, programChange: MIDITransform, pitchBend: MIDITransform, filterOutSysEx: UInt8, filterOutMTC: UInt8, filterOutBeatClock: UInt8, filterOutTuneRequest: UInt8, reserved2: (UInt8, UInt8, UInt8), filterOutAllControls: UInt8, numControlTransforms: UInt16, numMaps: UInt16, reserved3: (UInt16, UInt16, UInt16, UInt16))
}
func MIDIThruConnectionParamsSize(ptr: UnsafePointer<MIDIThruConnectionParams>) -> Int
func MIDIThruConnectionParamsInitialize(inConnectionParams: UnsafeMutablePointer<MIDIThruConnectionParams>)
func MIDIThruConnectionCreate(inPersistentOwnerID: CFString?, _ inConnectionParams: CFData, _ outConnection: UnsafeMutablePointer<MIDIThruConnectionRef>) -> OSStatus
func MIDIThruConnectionDispose(connection: MIDIThruConnectionRef) -> OSStatus
func MIDIThruConnectionGetParams(connection: MIDIThruConnectionRef, _ outConnectionParams: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
func MIDIThruConnectionSetParams(connection: MIDIThruConnectionRef, _ inConnectionParams: CFData) -> OSStatus
func MIDIThruConnectionFind(inPersistentOwnerID: CFString, _ outConnectionList: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
