
class HMAccessory : Object {
  var name: String { get }
  @NSCopying var identifier: UUID { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var isReachable: Bool { get }
  var isBridged: Bool { get }
  var identifiersForBridgedAccessories: [UUID]? { get }
  var uniqueIdentifiersForBridgedAccessories: [UUID]? { get }
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  var isBlocked: Bool { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func identifyWithCompletionHandler(completion: (Error?) -> Void)
  init()
}
protocol HMAccessoryDelegate : ObjectProtocol {
  optional func accessoryDidUpdateName(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, didUpdateNameFor service: HMService)
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeFor service: HMService)
  optional func accessoryDidUpdateServices(accessory: HMAccessory)
  optional func accessoryDidUpdateReachability(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueFor characteristic: HMCharacteristic)
}
class HMAccessoryBrowser : Object {
  weak var delegate: @sil_weak HMAccessoryBrowserDelegate?
  var discoveredAccessories: [HMAccessory] { get }
  func startSearchingForNewAccessories()
  func stopSearchingForNewAccessories()
  init()
}
protocol HMAccessoryBrowserDelegate : ObjectProtocol {
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didFindNewAccessory accessory: HMAccessory)
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didRemoveNewAccessory accessory: HMAccessory)
}
class HMAccessoryCategory : Object {
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
class HMAction : Object {
  @NSCopying var uniqueIdentifier: UUID { get }
  init()
}
class HMActionSet : Object {
  var name: String { get }
  var actions: Set<HMAction> { get }
  var isExecuting: Bool { get }
  var actionSetType: String { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addAction(action: HMAction, completionHandler completion: (Error?) -> Void)
  func removeAction(action: HMAction, completionHandler completion: (Error?) -> Void)
}
let HMActionSetTypeWakeUp: String
let HMActionSetTypeSleep: String
let HMActionSetTypeHomeDeparture: String
let HMActionSetTypeHomeArrival: String
let HMActionSetTypeUserDefined: String
class HMCharacteristic : Object {
  var characteristicType: String { get }
  var localizedDescription: String { get }
  weak var service: @sil_weak HMService? { get }
  var properties: [String] { get }
  var metadata: HMCharacteristicMetadata? { get }
  @NSCopying var value: AnyObject? { get }
  var isNotificationEnabled: Bool { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func writeValue(value: AnyObject?, completionHandler completion: (Error?) -> Void)
  func readValueWithCompletionHandler(completion: (Error?) -> Void)
  func enableNotification(enable: Bool, completionHandler completion: (Error?) -> Void)
  func updateAuthorizationData(data: Data?, completionHandler completion: (Error?) -> Void)
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
  init(characteristic: HMCharacteristic, triggerValue: Copying?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: Copying? { get }
  func updateTriggerValue(triggerValue: Copying?, completionHandler completion: (Error?) -> Void)
}
class HMCharacteristicMetadata : Object {
  var minimumValue: Number? { get }
  var maximumValue: Number? { get }
  var stepValue: Number? { get }
  var maxLength: Number? { get }
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
  init(characteristic: HMCharacteristic, targetValue: Copying)
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: Copying { get }
  func updateTargetValue(targetValue: Copying, completionHandler completion: (Error?) -> Void)
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
class HMEvent : Object {
  @NSCopying var uniqueIdentifier: UUID { get }
  init()
}
let HMSignificantEventSunrise: String
let HMSignificantEventSunset: String
let HMCharacteristicKeyPath: String
let HMCharacteristicValueKeyPath: String
class HMEventTrigger : HMTrigger {
  init(name: String, events: [HMEvent], predicate: Predicate?)
  var events: [HMEvent] { get }
  @NSCopying var predicate: Predicate? { get }
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWith(dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringOnDateWith(dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWith(dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerWith(characteristic: HMCharacteristic, relatedBy operatorType: PredicateOperatorType, toValue value: AnyObject) -> Predicate
  func addEvent(event: HMEvent, completionHandler completion: (Error?) -> Void)
  func removeEvent(event: HMEvent, completionHandler completion: (Error?) -> Void)
  func updatePredicate(predicate: Predicate?, completionHandler completion: (Error?) -> Void)
}
class HMHome : Object {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var isPrimary: Bool { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func addAccessory(accessory: HMAccessory, completionHandler completion: (Error?) -> Void)
  func removeAccessory(accessory: HMAccessory, completionHandler completion: (Error?) -> Void)
  func assignAccessory(accessory: HMAccessory, to room: HMRoom, completionHandler completion: (Error?) -> Void)
  func servicesWithTypes(serviceTypes: [String]) -> [HMService]?
  func unblockAccessory(accessory: HMAccessory, completionHandler completion: (Error?) -> Void)
}
extension HMHome {
  var currentUser: HMUser { get }
  var users: [HMUser] { get }
  func manageUsersWithCompletionHandler(completion: (Error?) -> Void)
  func addUserWithCompletionHandler(completion: (HMUser?, Error?) -> Void)
  func removeUser(user: HMUser, completionHandler completion: (Error?) -> Void)
  func homeAccessControlFor(user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func addRoomWithName(roomName: String, completionHandler completion: (HMRoom?, Error?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (Error?) -> Void)
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
  func addZoneWithName(zoneName: String, completionHandler completion: (HMZone?, Error?) -> Void)
  func removeZone(zone: HMZone, completionHandler completion: (Error?) -> Void)
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
  func addServiceGroupWithName(serviceGroupName: String, completionHandler completion: (HMServiceGroup?, Error?) -> Void)
  func removeServiceGroup(group: HMServiceGroup, completionHandler completion: (Error?) -> Void)
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func addActionSetWithName(actionSetName: String, completionHandler completion: (HMActionSet?, Error?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  func builtinActionSetOfType(actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
  func addTrigger(trigger: HMTrigger, completionHandler completion: (Error?) -> Void)
  func removeTrigger(trigger: HMTrigger, completionHandler completion: (Error?) -> Void)
}
protocol HMHomeDelegate : ObjectProtocol {
  optional func homeDidUpdateName(home: HMHome)
  optional func home(home: HMHome, didAdd accessory: HMAccessory)
  optional func home(home: HMHome, didRemove accessory: HMAccessory)
  optional func home(home: HMHome, didAdd user: HMUser)
  optional func home(home: HMHome, didRemove user: HMUser)
  optional func home(home: HMHome, didUpdateRoom room: HMRoom, forAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didAdd room: HMRoom)
  optional func home(home: HMHome, didRemove room: HMRoom)
  optional func home(home: HMHome, didUpdateNameFor room: HMRoom)
  optional func home(home: HMHome, didAdd zone: HMZone)
  optional func home(home: HMHome, didRemove zone: HMZone)
  optional func home(home: HMHome, didUpdateNameFor zone: HMZone)
  optional func home(home: HMHome, didAdd room: HMRoom, to zone: HMZone)
  optional func home(home: HMHome, didRemove room: HMRoom, from zone: HMZone)
  optional func home(home: HMHome, didAdd group: HMServiceGroup)
  optional func home(home: HMHome, didRemove group: HMServiceGroup)
  optional func home(home: HMHome, didUpdateNameFor group: HMServiceGroup)
  optional func home(home: HMHome, didAdd service: HMService, to group: HMServiceGroup)
  optional func home(home: HMHome, didRemove service: HMService, from group: HMServiceGroup)
  optional func home(home: HMHome, didAdd actionSet: HMActionSet)
  optional func home(home: HMHome, didRemove actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateNameFor actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateActionsFor actionSet: HMActionSet)
  optional func home(home: HMHome, didAdd trigger: HMTrigger)
  optional func home(home: HMHome, didRemove trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateNameFor trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didEncounterError error: Error, forAccessory accessory: HMAccessory)
}
let HMUserFailedAccessoriesKey: String
class HMHomeAccessControl : Object {
  var isAdministrator: Bool { get }
}
class HMHomeManager : Object {
  weak var delegate: @sil_weak HMHomeManagerDelegate?
  var primaryHome: HMHome? { get }
  var homes: [HMHome] { get }
  func updatePrimaryHome(home: HMHome, completionHandler completion: (Error?) -> Void)
  func addHomeWithName(homeName: String, completionHandler completion: (HMHome?, Error?) -> Void)
  func removeHome(home: HMHome, completionHandler completion: (Error?) -> Void)
  init()
}
protocol HMHomeManagerDelegate : ObjectProtocol {
  optional func homeManagerDidUpdateHomes(manager: HMHomeManager)
  optional func homeManagerDidUpdatePrimaryHome(manager: HMHomeManager)
  optional func homeManager(manager: HMHomeManager, didAdd home: HMHome)
  optional func homeManager(manager: HMHomeManager, didRemove home: HMHome)
}
class HMLocationEvent : HMEvent {
}
class HMRoom : Object {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
}
class HMService : Object {
  weak var accessory: @sil_weak HMAccessory? { get }
  var serviceType: String { get }
  var localizedDescription: String { get }
  var name: String { get }
  var associatedServiceType: String? { get }
  var characteristics: [HMCharacteristic] { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  var isUserInteractive: Bool { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func updateAssociatedServiceType(serviceType: String?, completionHandler completion: (Error?) -> Void)
  init()
}
class HMServiceGroup : Object {
  var name: String { get }
  var services: [HMService] { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addService(service: HMService, completionHandler completion: (Error?) -> Void)
  func removeService(service: HMService, completionHandler completion: (Error?) -> Void)
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
  init(name: String, fire fireDate: Date, timeZone: TimeZone?, recurrence: DateComponents?, recurrenceCalendar: Calendar?)
  @NSCopying var fireDate: Date { get }
  @NSCopying var timeZone: TimeZone? { get }
  @NSCopying var recurrence: DateComponents? { get }
  @NSCopying var recurrenceCalendar: Calendar? { get }
  func updateFire(fireDate: Date, completionHandler completion: (Error?) -> Void)
  func updateTimeZone(timeZone: TimeZone?, completionHandler completion: (Error?) -> Void)
  func updateRecurrence(recurrence: DateComponents?, completionHandler completion: (Error?) -> Void)
}
class HMTrigger : Object {
  var name: String { get }
  var isEnabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  @NSCopying var lastFireDate: Date? { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  func enable(enable: Bool, completionHandler completion: (Error?) -> Void)
}
class HMUser : Object {
  var name: String { get }
  @NSCopying var uniqueIdentifier: UUID { get }
}
class HMZone : Object {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addRoom(room: HMRoom, completionHandler completion: (Error?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (Error?) -> Void)
}
