
class HMAccessory : NSObject {
  var name: String { get }
  @NSCopying var identifier: NSUUID { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var reachable: Bool { get }
  var bridged: Bool { get }
  var identifiersForBridgedAccessories: [NSUUID]? { get }
  var uniqueIdentifiersForBridgedAccessories: [NSUUID]? { get }
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  var blocked: Bool { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func identifyWithCompletionHandler(completion: (NSError?) -> Void)
  init()
}
protocol HMAccessoryDelegate : NSObjectProtocol {
  optional func accessoryDidUpdateName(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, didUpdateNameForService service: HMService)
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeForService service: HMService)
  optional func accessoryDidUpdateServices(accessory: HMAccessory)
  optional func accessoryDidUpdateReachability(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueForCharacteristic characteristic: HMCharacteristic)
}
class HMAccessoryBrowser : NSObject {
  weak var delegate: @sil_weak HMAccessoryBrowserDelegate?
  var discoveredAccessories: [HMAccessory] { get }
  func startSearchingForNewAccessories()
  func stopSearchingForNewAccessories()
  init()
}
protocol HMAccessoryBrowserDelegate : NSObjectProtocol {
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didFindNewAccessory accessory: HMAccessory)
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didRemoveNewAccessory accessory: HMAccessory)
}
class HMAccessoryCategory : NSObject {
  var categoryType: String { get }
  var localizedDescription: String { get }
  init()
}
let HMAccessoryCategoryTypeOther: String
let HMAccessoryCategoryTypeSecuritySystem: String
let HMAccessoryCategoryTypeBridge: String
let HMAccessoryCategoryTypeDoor: String
let HMAccessoryCategoryTypeDoorLock: String
let HMAccessoryCategoryTypeFan: String
let HMAccessoryCategoryTypeGarageDoorOpener: String
let HMAccessoryCategoryTypeLightbulb: String
let HMAccessoryCategoryTypeOutlet: String
let HMAccessoryCategoryTypeProgrammableSwitch: String
let HMAccessoryCategoryTypeSensor: String
let HMAccessoryCategoryTypeSwitch: String
let HMAccessoryCategoryTypeThermostat: String
let HMAccessoryCategoryTypeWindow: String
let HMAccessoryCategoryTypeWindowCovering: String
class HMAction : NSObject {
  @NSCopying var uniqueIdentifier: NSUUID { get }
  init()
}
class HMActionSet : NSObject {
  var name: String { get }
  var actions: Set<HMAction> { get }
  var executing: Bool { get }
  var actionSetType: String { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addAction(action: HMAction, completionHandler completion: (NSError?) -> Void)
  func removeAction(action: HMAction, completionHandler completion: (NSError?) -> Void)
}
let HMActionSetTypeWakeUp: String
let HMActionSetTypeSleep: String
let HMActionSetTypeHomeDeparture: String
let HMActionSetTypeHomeArrival: String
let HMActionSetTypeUserDefined: String
class HMCharacteristic : NSObject {
  var characteristicType: String { get }
  var localizedDescription: String { get }
  weak var service: @sil_weak HMService? { get }
  var properties: [String] { get }
  var metadata: HMCharacteristicMetadata? { get }
  @NSCopying var value: AnyObject? { get }
  var notificationEnabled: Bool { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func writeValue(value: AnyObject?, completionHandler completion: (NSError?) -> Void)
  func readValueWithCompletionHandler(completion: (NSError?) -> Void)
  func enableNotification(enable: Bool, completionHandler completion: (NSError?) -> Void)
  func updateAuthorizationData(data: NSData?, completionHandler completion: (NSError?) -> Void)
  init()
}
enum HMCharacteristicValueDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Open
  case Closed
  case Opening
  case Closing
  case Stopped
}
enum HMCharacteristicValueHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case Heat
  case Cool
  case Auto
}
enum HMCharacteristicValueRotationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clockwise
  case CounterClockwise
}
enum HMCharacteristicValueTemperatureUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Celsius
  case Fahrenheit
}
enum HMCharacteristicValueLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unsecured
  case Secured
  case Jammed
  case Unknown
}
enum HMCharacteristicValueLockMechanismLastKnownAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SecuredUsingPhysicalMovementInterior
  case UnsecuredUsingPhysicalMovementInterior
  case SecuredUsingPhysicalMovementExterior
  case UnsecuredUsingPhysicalMovementExterior
  case SecuredWithKeypad
  case UnsecuredWithKeypad
  case SecuredRemotely
  case UnsecuredRemotely
  case SecuredWithAutomaticSecureTimeout
  case SecuredUsingPhysicalMovement
  case UnsecuredUsingPhysicalMovement
}
enum HMCharacteristicValueAirParticulateSize : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Size2_5
  case Size10
}
enum HMCharacteristicValueAirQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Excellent
  case Good
  case Fair
  case Inferior
  case Poor
}
enum HMCharacteristicValuePositionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Closing
  case Opening
  case Stopped
}
enum HMCharacteristicValueCurrentSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StayArm
  case AwayArm
  case NightArm
  case Disarmed
  case Triggered
}
enum HMCharacteristicValueTargetSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StayArm
  case AwayArm
  case NightArm
  case Disarm
}
class HMCharacteristicEvent : HMEvent {
  init(characteristic: HMCharacteristic, triggerValue: NSCopying?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: NSCopying? { get }
  func updateTriggerValue(triggerValue: NSCopying?, completionHandler completion: (NSError?) -> Void)
}
class HMCharacteristicMetadata : NSObject {
  var minimumValue: NSNumber? { get }
  var maximumValue: NSNumber? { get }
  var stepValue: NSNumber? { get }
  var maxLength: NSNumber? { get }
  var format: String? { get }
  var units: String? { get }
  var manufacturerDescription: String? { get }
  init()
}
let HMCharacteristicMetadataFormatBool: String
let HMCharacteristicMetadataFormatInt: String
let HMCharacteristicMetadataFormatFloat: String
let HMCharacteristicMetadataFormatString: String
let HMCharacteristicMetadataFormatArray: String
let HMCharacteristicMetadataFormatDictionary: String
let HMCharacteristicMetadataFormatUInt8: String
let HMCharacteristicMetadataFormatUInt16: String
let HMCharacteristicMetadataFormatUInt32: String
let HMCharacteristicMetadataFormatUInt64: String
let HMCharacteristicMetadataFormatData: String
let HMCharacteristicMetadataFormatTLV8: String
let HMCharacteristicMetadataUnitsCelsius: String
let HMCharacteristicMetadataUnitsFahrenheit: String
let HMCharacteristicMetadataUnitsPercentage: String
let HMCharacteristicMetadataUnitsArcDegree: String
let HMCharacteristicMetadataUnitsSeconds: String
let HMCharacteristicPropertySupportsEventNotification: String
let HMCharacteristicPropertyReadable: String
let HMCharacteristicPropertyWritable: String
let HMCharacteristicTypePowerState: String
let HMCharacteristicTypeHue: String
let HMCharacteristicTypeSaturation: String
let HMCharacteristicTypeBrightness: String
let HMCharacteristicTypeTemperatureUnits: String
let HMCharacteristicTypeCurrentTemperature: String
let HMCharacteristicTypeTargetTemperature: String
let HMCharacteristicTypeCurrentHeatingCooling: String
let HMCharacteristicTypeTargetHeatingCooling: String
let HMCharacteristicTypeCoolingThreshold: String
let HMCharacteristicTypeHeatingThreshold: String
let HMCharacteristicTypeCurrentRelativeHumidity: String
let HMCharacteristicTypeTargetRelativeHumidity: String
let HMCharacteristicTypeCurrentDoorState: String
let HMCharacteristicTypeTargetDoorState: String
let HMCharacteristicTypeObstructionDetected: String
let HMCharacteristicTypeName: String
let HMCharacteristicTypeManufacturer: String
let HMCharacteristicTypeModel: String
let HMCharacteristicTypeSerialNumber: String
let HMCharacteristicTypeIdentify: String
let HMCharacteristicTypeRotationDirection: String
let HMCharacteristicTypeRotationSpeed: String
let HMCharacteristicTypeOutletInUse: String
let HMCharacteristicTypeVersion: String
let HMCharacteristicTypeLogs: String
let HMCharacteristicTypeAudioFeedback: String
let HMCharacteristicTypeAdminOnlyAccess: String
let HMCharacteristicTypeSecuritySystemAlarmType: String
let HMCharacteristicTypeMotionDetected: String
let HMCharacteristicTypeCurrentLockMechanismState: String
let HMCharacteristicTypeTargetLockMechanismState: String
let HMCharacteristicTypeLockMechanismLastKnownAction: String
let HMCharacteristicTypeLockManagementControlPoint: String
let HMCharacteristicTypeLockManagementAutoSecureTimeout: String
let HMCharacteristicTypeAirParticulateDensity: String
let HMCharacteristicTypeAirParticulateSize: String
let HMCharacteristicTypeAirQuality: String
let HMCharacteristicTypeBatteryLevel: String
let HMCharacteristicTypeCarbonDioxideDetected: String
let HMCharacteristicTypeCarbonDioxideLevel: String
let HMCharacteristicTypeCarbonDioxidePeakLevel: String
let HMCharacteristicTypeCarbonMonoxideDetected: String
let HMCharacteristicTypeCarbonMonoxideLevel: String
let HMCharacteristicTypeCarbonMonoxidePeakLevel: String
let HMCharacteristicTypeChargingState: String
let HMCharacteristicTypeContactState: String
let HMCharacteristicTypeCurrentHorizontalTilt: String
let HMCharacteristicTypeCurrentLightLevel: String
let HMCharacteristicTypeCurrentPosition: String
let HMCharacteristicTypeCurrentSecuritySystemState: String
let HMCharacteristicTypeCurrentVerticalTilt: String
let HMCharacteristicTypeFirmwareVersion: String
let HMCharacteristicTypeHardwareVersion: String
let HMCharacteristicTypeHoldPosition: String
let HMCharacteristicTypeInputEvent: String
let HMCharacteristicTypeLeakDetected: String
let HMCharacteristicTypeOccupancyDetected: String
let HMCharacteristicTypeOutputState: String
let HMCharacteristicTypePositionState: String
let HMCharacteristicTypeSmokeDetected: String
let HMCharacteristicTypeSoftwareVersion: String
let HMCharacteristicTypeStatusActive: String
let HMCharacteristicTypeStatusFault: String
let HMCharacteristicTypeStatusJammed: String
let HMCharacteristicTypeStatusLowBattery: String
let HMCharacteristicTypeStatusTampered: String
let HMCharacteristicTypeTargetHorizontalTilt: String
let HMCharacteristicTypeTargetSecuritySystemState: String
let HMCharacteristicTypeTargetPosition: String
let HMCharacteristicTypeTargetVerticalTilt: String
class HMCharacteristicWriteAction : HMAction {
  init(characteristic: HMCharacteristic, targetValue: NSCopying)
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: NSCopying { get }
  func updateTargetValue(targetValue: NSCopying, completionHandler completion: (NSError?) -> Void)
}
let HMErrorDomain: String
enum HMErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlreadyExists
  case NotFound
  case InvalidParameter
  case AccessoryNotReachable
  case ReadOnlyCharacteristic
  case WriteOnlyCharacteristic
  case NotificationNotSupported
  case OperationTimedOut
  case AccessoryPoweredOff
  case AccessDenied
  case ObjectAssociatedToAnotherHome
  case ObjectNotAssociatedToAnyHome
  case ObjectAlreadyAssociatedToHome
  case AccessoryIsBusy
  case OperationInProgress
  case AccessoryOutOfResources
  case InsufficientPrivileges
  case AccessoryPairingFailed
  case InvalidDataFormatSpecified
  case NilParameter
  case UnconfiguredParameter
  case InvalidClass
  case OperationCancelled
  case RoomForHomeCannotBeInZone
  case NoActionsInActionSet
  case NoRegisteredActionSets
  case MissingParameter
  case FireDateInPast
  case RoomForHomeCannotBeUpdated
  case ActionInAnotherActionSet
  case ObjectWithSimilarNameExistsInHome
  case HomeWithSimilarNameExists
  case RenameWithSimilarName
  case CannotRemoveNonBridgeAccessory
  case NameContainsProhibitedCharacters
  case NameDoesNotStartWithValidCharacters
  case UserIDNotEmailAddress
  case UserDeclinedAddingUser
  case UserDeclinedRemovingUser
  case UserDeclinedInvite
  case UserManagementFailed
  case RecurrenceTooSmall
  case InvalidValueType
  case ValueLowerThanMinimum
  case ValueHigherThanMaximum
  case StringLongerThanMaximum
  case HomeAccessNotAuthorized
  case OperationNotSupported
  case MaximumObjectLimitReached
  case AccessorySentInvalidResponse
  case StringShorterThanMinimum
  case GenericError
  case SecurityFailure
  case CommunicationFailure
  case MessageAuthenticationFailed
  case InvalidMessageSize
  case AccessoryDiscoveryFailed
  case ClientRequestError
  case AccessoryResponseError
  case NameDoesNotEndWithValidCharacters
  case AccessoryIsBlocked
  case InvalidAssociatedServiceType
  case ActionSetExecutionFailed
  case ActionSetExecutionPartialSuccess
  case ActionSetExecutionInProgress
  case AccessoryOutOfCompliance
  case DataResetFailure
  case NotificationAlreadyEnabled
  case RecurrenceMustBeOnSpecifiedBoundaries
  case DateMustBeOnSpecifiedBoundaries
  case CannotActivateTriggerTooFarInFuture
  case RecurrenceTooLarge
  case ReadWritePartialSuccess
  case ReadWriteFailure
  case NotSignedIntoiCloud
  case KeychainSyncNotEnabled
  case CloudDataSyncInProgress
  case NetworkUnavailable
  case AddAccessoryFailed
  case MissingEntitlement
  case CannotUnblockNonBridgeAccessory
  case DeviceLocked
  case CannotRemoveBuiltinActionSet
  case LocationForHomeDisabled
  case NotAuthorizedForLocationServices
}
extension HMErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class HMEvent : NSObject {
  @NSCopying var uniqueIdentifier: NSUUID { get }
  init()
}
let HMSignificantEventSunrise: String
let HMSignificantEventSunset: String
let HMCharacteristicKeyPath: String
let HMCharacteristicValueKeyPath: String
class HMEventTrigger : HMTrigger {
  init(name: String, events: [HMEvent], predicate: NSPredicate?)
  var events: [HMEvent] { get }
  @NSCopying var predicate: NSPredicate? { get }
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringOnDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerWithCharacteristic(characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate
  func addEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func removeEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func updatePredicate(predicate: NSPredicate?, completionHandler completion: (NSError?) -> Void)
}
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var primary: Bool { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func addAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func removeAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func assignAccessory(accessory: HMAccessory, toRoom room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func servicesWithTypes(serviceTypes: [String]) -> [HMService]?
  func unblockAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var currentUser: HMUser { get }
  var users: [HMUser] { get }
  func manageUsersWithCompletionHandler(completion: (NSError?) -> Void)
  func addUserWithCompletionHandler(completion: (HMUser?, NSError?) -> Void)
  func removeUser(user: HMUser, completionHandler completion: (NSError?) -> Void)
  func homeAccessControlForUser(user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func addRoomWithName(roomName: String, completionHandler completion: (HMRoom?, NSError?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
  func addZoneWithName(zoneName: String, completionHandler completion: (HMZone?, NSError?) -> Void)
  func removeZone(zone: HMZone, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
  func addServiceGroupWithName(serviceGroupName: String, completionHandler completion: (HMServiceGroup?, NSError?) -> Void)
  func removeServiceGroup(group: HMServiceGroup, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func addActionSetWithName(actionSetName: String, completionHandler completion: (HMActionSet?, NSError?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func builtinActionSetOfType(actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
  func addTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
  func removeTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
}
protocol HMHomeDelegate : NSObjectProtocol {
  optional func homeDidUpdateName(home: HMHome)
  optional func home(home: HMHome, didAddAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didRemoveAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didAddUser user: HMUser)
  optional func home(home: HMHome, didRemoveUser user: HMUser)
  optional func home(home: HMHome, didUpdateRoom room: HMRoom, forAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didAddRoom room: HMRoom)
  optional func home(home: HMHome, didRemoveRoom room: HMRoom)
  optional func home(home: HMHome, didUpdateNameForRoom room: HMRoom)
  optional func home(home: HMHome, didAddZone zone: HMZone)
  optional func home(home: HMHome, didRemoveZone zone: HMZone)
  optional func home(home: HMHome, didUpdateNameForZone zone: HMZone)
  optional func home(home: HMHome, didAddRoom room: HMRoom, toZone zone: HMZone)
  optional func home(home: HMHome, didRemoveRoom room: HMRoom, fromZone zone: HMZone)
  optional func home(home: HMHome, didAddServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didRemoveServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didUpdateNameForServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didAddService service: HMService, toServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didRemoveService service: HMService, fromServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didAddActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didRemoveActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateNameForActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateActionsForActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didAddTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didRemoveTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateNameForTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didEncounterError error: NSError, forAccessory accessory: HMAccessory)
}
let HMUserFailedAccessoriesKey: String
class HMHomeAccessControl : NSObject {
  var administrator: Bool { get }
}
class HMHomeManager : NSObject {
  weak var delegate: @sil_weak HMHomeManagerDelegate?
  var primaryHome: HMHome? { get }
  var homes: [HMHome] { get }
  func updatePrimaryHome(home: HMHome, completionHandler completion: (NSError?) -> Void)
  func addHomeWithName(homeName: String, completionHandler completion: (HMHome?, NSError?) -> Void)
  func removeHome(home: HMHome, completionHandler completion: (NSError?) -> Void)
  init()
}
protocol HMHomeManagerDelegate : NSObjectProtocol {
  optional func homeManagerDidUpdateHomes(manager: HMHomeManager)
  optional func homeManagerDidUpdatePrimaryHome(manager: HMHomeManager)
  optional func homeManager(manager: HMHomeManager, didAddHome home: HMHome)
  optional func homeManager(manager: HMHomeManager, didRemoveHome home: HMHome)
}
class HMLocationEvent : HMEvent {
}
class HMRoom : NSObject {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
}
class HMService : NSObject {
  weak var accessory: @sil_weak HMAccessory? { get }
  var serviceType: String { get }
  var localizedDescription: String { get }
  var name: String { get }
  var associatedServiceType: String? { get }
  var characteristics: [HMCharacteristic] { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  var userInteractive: Bool { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func updateAssociatedServiceType(serviceType: String?, completionHandler completion: (NSError?) -> Void)
  init()
}
class HMServiceGroup : NSObject {
  var name: String { get }
  var services: [HMService] { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addService(service: HMService, completionHandler completion: (NSError?) -> Void)
  func removeService(service: HMService, completionHandler completion: (NSError?) -> Void)
}
let HMServiceTypeLightbulb: String
let HMServiceTypeSwitch: String
let HMServiceTypeThermostat: String
let HMServiceTypeGarageDoorOpener: String
let HMServiceTypeAccessoryInformation: String
let HMServiceTypeFan: String
let HMServiceTypeOutlet: String
let HMServiceTypeLockMechanism: String
let HMServiceTypeLockManagement: String
let HMServiceTypeAirQualitySensor: String
let HMServiceTypeBattery: String
let HMServiceTypeCarbonDioxideSensor: String
let HMServiceTypeCarbonMonoxideSensor: String
let HMServiceTypeContactSensor: String
let HMServiceTypeDoor: String
let HMServiceTypeHumiditySensor: String
let HMServiceTypeLeakSensor: String
let HMServiceTypeLightSensor: String
let HMServiceTypeMotionSensor: String
let HMServiceTypeOccupancySensor: String
let HMServiceTypeSecuritySystem: String
let HMServiceTypeStatefulProgrammableSwitch: String
let HMServiceTypeStatelessProgrammableSwitch: String
let HMServiceTypeSmokeSensor: String
let HMServiceTypeTemperatureSensor: String
let HMServiceTypeWindow: String
let HMServiceTypeWindowCovering: String
class HMTimerTrigger : HMTrigger {
  init(name: String, fireDate: NSDate, timeZone: NSTimeZone?, recurrence: NSDateComponents?, recurrenceCalendar: NSCalendar?)
  @NSCopying var fireDate: NSDate { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  @NSCopying var recurrence: NSDateComponents? { get }
  @NSCopying var recurrenceCalendar: NSCalendar? { get }
  func updateFireDate(fireDate: NSDate, completionHandler completion: (NSError?) -> Void)
  func updateTimeZone(timeZone: NSTimeZone?, completionHandler completion: (NSError?) -> Void)
  func updateRecurrence(recurrence: NSDateComponents?, completionHandler completion: (NSError?) -> Void)
}
class HMTrigger : NSObject {
  var name: String { get }
  var enabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  @NSCopying var lastFireDate: NSDate? { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func enable(enable: Bool, completionHandler completion: (NSError?) -> Void)
}
class HMUser : NSObject {
  var name: String { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
}
class HMZone : NSObject {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
}
