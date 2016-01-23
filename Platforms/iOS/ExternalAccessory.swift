
var EAConnectionIDNone: Int { get }
class EAAccessory : NSObject {
  var connected: Bool { get }
  var connectionID: Int { get }
  var manufacturer: String { get }
  var name: String { get }
  var modelNumber: String { get }
  var serialNumber: String { get }
  var firmwareRevision: String { get }
  var hardwareRevision: String { get }
  var dockType: String { get }
  var protocolStrings: [String] { get }
  unowned(unsafe) var delegate: @sil_unmanaged EAAccessoryDelegate?
  init()
}
protocol EAAccessoryDelegate : NSObjectProtocol {
  optional func accessoryDidDisconnect(accessory: EAAccessory)
}
enum EABluetoothAccessoryPickerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlreadyConnected
  case ResultNotFound
  case ResultCancelled
  case ResultFailed
}
let EABluetoothAccessoryPickerErrorDomain: String
typealias EABluetoothAccessoryPickerCompletion = (NSError?) -> Void
let EAAccessoryDidConnectNotification: String
let EAAccessoryDidDisconnectNotification: String
let EAAccessoryKey: String
let EAAccessorySelectedKey: String
class EAAccessoryManager : NSObject {
  class func sharedAccessoryManager() -> EAAccessoryManager
  func showBluetoothAccessoryPickerWithNameFilter(predicate: NSPredicate?, completion: EABluetoothAccessoryPickerCompletion?)
  func registerForLocalNotifications()
  func unregisterForLocalNotifications()
  var connectedAccessories: [EAAccessory] { get }
  init()
}
class EASession : NSObject {
  init(accessory: EAAccessory, forProtocol protocolString: String)
  var accessory: EAAccessory { get }
  var protocolString: String { get }
  var inputStream: NSInputStream? { get }
  var outputStream: NSOutputStream? { get }
  init()
}
struct EAWiFiUnconfiguredAccessoryProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PropertySupportsAirPlay: EAWiFiUnconfiguredAccessoryProperties { get }
  static var PropertySupportsAirPrint: EAWiFiUnconfiguredAccessoryProperties { get }
  static var PropertySupportsHomeKit: EAWiFiUnconfiguredAccessoryProperties { get }
}
class EAWiFiUnconfiguredAccessory : NSObject {
  var name: String { get }
  var manufacturer: String { get }
  var model: String { get }
  var ssid: String { get }
  var macAddress: String { get }
  var properties: EAWiFiUnconfiguredAccessoryProperties { get }
  init()
}
enum EAWiFiUnconfiguredAccessoryBrowserState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WiFiUnavailable
  case Stopped
  case Searching
  case Configuring
}
enum EAWiFiUnconfiguredAccessoryConfigurationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case UserCancelledConfiguration
  case Failed
}
class EAWiFiUnconfiguredAccessoryBrowser : NSObject {
  weak var delegate: @sil_weak EAWiFiUnconfiguredAccessoryBrowserDelegate?
  var unconfiguredAccessories: Set<EAWiFiUnconfiguredAccessory> { get }
  init(delegate: EAWiFiUnconfiguredAccessoryBrowserDelegate?, queue: dispatch_queue_t?)
  func startSearchingForUnconfiguredAccessoriesMatchingPredicate(predicate: NSPredicate?)
  func stopSearchingForUnconfiguredAccessories()
  convenience init()
}
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : NSObjectProtocol {
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didUpdateState state: EAWiFiUnconfiguredAccessoryBrowserState)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didFindUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didRemoveUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didFinishConfiguringAccessory accessory: EAWiFiUnconfiguredAccessory, withStatus status: EAWiFiUnconfiguredAccessoryConfigurationStatus)
}
