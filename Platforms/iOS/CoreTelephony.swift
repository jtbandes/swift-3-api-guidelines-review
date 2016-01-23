
let CTCallStateDialing: String
let CTCallStateIncoming: String
let CTCallStateConnected: String
let CTCallStateDisconnected: String
class CTCall : NSObject {
  var callState: String { get }
  var callID: String { get }
  init()
}
class CTCallCenter : NSObject {
  var currentCalls: Set<CTCall>? { get }
  var callEventHandler: ((CTCall) -> Void)?
  init()
}
class CTCarrier : NSObject {
  var carrierName: String? { get }
  var mobileCountryCode: String? { get }
  var mobileNetworkCode: String? { get }
  var isoCountryCode: String? { get }
  var allowsVOIP: Bool { get }
  init()
}
enum CTCellularDataRestrictedState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RestrictedStateUnknown
  case Restricted
  case NotRestricted
}
typealias CellularDataRestrictionDidUpdateNotifier = (CTCellularDataRestrictedState) -> Void
class CTCellularData : NSObject {
  var cellularDataRestrictionDidUpdateNotifier: CellularDataRestrictionDidUpdateNotifier?
  var restrictedState: CTCellularDataRestrictedState { get }
  init()
}
let CTSubscriberTokenRefreshed: String
class CTSubscriber : NSObject {
  var carrierToken: NSData? { get }
  init()
}
class CTSubscriberInfo : NSObject {
  class func subscriber() -> CTSubscriber
  init()
}
let CTRadioAccessTechnologyDidChangeNotification: String
let CTRadioAccessTechnologyGPRS: String
let CTRadioAccessTechnologyEdge: String
let CTRadioAccessTechnologyWCDMA: String
let CTRadioAccessTechnologyHSDPA: String
let CTRadioAccessTechnologyHSUPA: String
let CTRadioAccessTechnologyCDMA1x: String
let CTRadioAccessTechnologyCDMAEVDORev0: String
let CTRadioAccessTechnologyCDMAEVDORevA: String
let CTRadioAccessTechnologyCDMAEVDORevB: String
let CTRadioAccessTechnologyeHRPD: String
let CTRadioAccessTechnologyLTE: String
class CTTelephonyNetworkInfo : NSObject {
  var subscriberCellularProvider: CTCarrier? { get }
  var subscriberCellularProviderDidUpdateNotifier: ((CTCarrier) -> Void)?
  var currentRadioAccessTechnology: String? { get }
  init()
}
var kCTErrorDomainNoError: Int { get }
var kCTErrorDomainPOSIX: Int { get }
var kCTErrorDomainMach: Int { get }
struct CTError {
  var domain: Int32
  var error: Int32
  init()
  init(domain: Int32, error: Int32)
}
