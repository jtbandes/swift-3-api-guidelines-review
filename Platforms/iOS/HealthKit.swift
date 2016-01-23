
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
class HKQueryAnchor : Object, SecureCoding, Copying {
  convenience init(fromValue value: Int)
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HKAnchoredObjectQuery : HKQuery {
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)?
  init(type: HKSampleType, predicate: Predicate?, anchor: Int, limit: Int, completionHandler handler: (HKAnchoredObjectQuery, [HKSample]?, Int, Error?) -> Void)
  init(type: HKSampleType, predicate: Predicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, Error?) -> Void)
}
class HKCategorySample : HKSample {
  var categoryType: HKCategoryType { get }
  var value: Int { get }
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date, metadata: [String : AnyObject]?)
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date)
  convenience init(type: HKCategoryType, value: Int, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: Coder)
}
let HKPredicateKeyPathCategoryValue: String
class HKCorrelation : HKSample {
  var correlationType: HKCorrelationType { get }
  var objects: Set<HKSample> { get }
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>)
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>, metadata: [String : AnyObject]?)
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>, device: HKDevice?, metadata: [String : AnyObject]?)
  func objectsFor(objectType: HKObjectType) -> Set<HKSample>
  init?(coder aDecoder: Coder)
}
class HKCorrelationQuery : HKQuery {
  @NSCopying var correlationType: HKCorrelationType { get }
  var samplePredicates: [HKSampleType : Predicate]? { get }
  init(type correlationType: HKCorrelationType, predicate: Predicate?, samplePredicates: [HKSampleType : Predicate]?, completion: (HKCorrelationQuery, [HKCorrelation]?, Error?) -> Void)
}
let HKErrorDomain: String
enum HKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoError
  case ErrorHealthDataUnavailable
  case ErrorHealthDataRestricted
  case ErrorInvalidArgument
  case ErrorAuthorizationDenied
  case ErrorAuthorizationNotDetermined
  case ErrorDatabaseInaccessible
  case ErrorUserCanceled
  case ErrorAnotherWorkoutSessionStarted
  case ErrorUserExitedWorkoutSession
}
enum HKUpdateFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Hourly
  case Daily
  case Weekly
}
enum HKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case SharingDenied
  case SharingAuthorized
}
enum HKBiologicalSex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSet
  case Female
  case Male
  case Other
}
enum HKBloodType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSet
  case APositive
  case ANegative
  case BPositive
  case BNegative
  case ABPositive
  case ABNegative
  case OPositive
  case ONegative
}
enum HKCategoryValueSleepAnalysis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InBed
  case Asleep
}
enum HKCategoryValueAppleStandHour : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stood
  case Idle
}
enum HKFitzpatrickSkinType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSet
  case I
  case II
  case III
  case IV
  case V
  case VI
}
enum HKCategoryValueCervicalMucusQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Dry
  case Sticky
  case Creamy
  case Watery
  case EggWhite
}
enum HKCategoryValueOvulationTestResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Negative
  case Positive
  case Indeterminate
}
enum HKCategoryValueMenstrualFlow : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Light
  case Medium
  case Heavy
}
enum HKCategoryValue : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotApplicable
}
class HKDeletedObject : Object, SecureCoding {
  var uuid: UUID { get }
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let HKDevicePropertyKeyName: String
let HKDevicePropertyKeyManufacturer: String
let HKDevicePropertyKeyModel: String
let HKDevicePropertyKeyHardwareVersion: String
let HKDevicePropertyKeyFirmwareVersion: String
let HKDevicePropertyKeySoftwareVersion: String
let HKDevicePropertyKeyLocalIdentifier: String
let HKDevicePropertyKeyUDIDeviceIdentifier: String
class HKDevice : Object, SecureCoding, Copying {
  var name: String { get }
  var manufacturer: String? { get }
  var model: String? { get }
  var hardwareVersion: String? { get }
  var firmwareVersion: String? { get }
  var softwareVersion: String? { get }
  var localIdentifier: String? { get }
  var udiDeviceIdentifier: String? { get }
  init(name: String?, manufacturer: String?, model: String?, hardwareVersion: String?, firmwareVersion: String?, softwareVersion: String?, localIdentifier: String?, udiDeviceIdentifier UDIDeviceIdentifier: String?)
  class func local() -> HKDevice
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HKHealthStore : Object {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatusFor(type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorizationToShare(typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?, completion: (Bool, Error?) -> Void)
  func handleAuthorizationForExtensionWithCompletion(completion: (Bool, Error?) -> Void)
  func earliestPermittedSampleDate() -> Date
  func save(object: HKObject, withCompletion completion: (Bool, Error?) -> Void)
  func save(objects: [HKObject], withCompletion completion: (Bool, Error?) -> Void)
  func delete(object: HKObject, withCompletion completion: (Bool, Error?) -> Void)
  func delete(objects: [HKObject], withCompletion completion: (Bool, Error?) -> Void)
  func deleteObjectsOf(objectType: HKObjectType, predicate: Predicate, withCompletion completion: (Bool, Int, Error?) -> Void)
  func execute(query: HKQuery)
  func stop(query: HKQuery)
  func splitTotalEnergy(totalEnergy: HKQuantity, start startDate: Date, end endDate: Date, resultsHandler: (HKQuantity?, HKQuantity?, Error?) -> Void)
  func dateOfBirth() throws -> Date
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  init()
}
extension HKHealthStore {
  func add(samples: [HKSample], to workout: HKWorkout, completion: (Bool, Error?) -> Void)
}
extension HKHealthStore {
  func enableBackgroundDeliveryFor(type: HKObjectType, frequency: HKUpdateFrequency, withCompletion completion: (Bool, Error?) -> Void)
  func disableBackgroundDeliveryFor(type: HKObjectType, withCompletion completion: (Bool, Error?) -> Void)
  func disableAllBackgroundDeliveryWithCompletion(completion: (Bool, Error?) -> Void)
}
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  func preferredUnitsFor(quantityTypes: Set<HKQuantityType>, completion: ([HKQuantityType : HKUnit], Error?) -> Void)
}
class HKBiologicalSexObject : Object, Copying, SecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class HKBloodTypeObject : Object, Copying, SecureCoding {
  var bloodType: HKBloodType { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class HKFitzpatrickSkinTypeObject : Object, Copying, SecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let HKMetadataKeyDeviceSerialNumber: String
let HKMetadataKeyBodyTemperatureSensorLocation: String
enum HKBodyTemperatureSensorLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Other
  case Armpit
  case Body
  case Ear
  case Finger
  case GastroIntestinal
  case Mouth
  case Rectum
  case Toe
  case EarDrum
  case TemporalArtery
  case Forehead
}
let HKMetadataKeyHeartRateSensorLocation: String
enum HKHeartRateSensorLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Other
  case Chest
  case Wrist
  case Finger
  case Hand
  case EarLobe
  case Foot
}
let HKMetadataKeyFoodType: String
let HKMetadataKeyUDIDeviceIdentifier: String
let HKMetadataKeyUDIProductionIdentifier: String
let HKMetadataKeyDigitalSignature: String
let HKMetadataKeyExternalUUID: String
let HKMetadataKeyTimeZone: String
let HKMetadataKeyDeviceName: String
let HKMetadataKeyDeviceManufacturerName: String
let HKMetadataKeyWasTakenInLab: String
let HKMetadataKeyReferenceRangeLowerLimit: String
let HKMetadataKeyReferenceRangeUpperLimit: String
let HKMetadataKeyWasUserEntered: String
let HKMetadataKeyWorkoutBrandName: String
let HKMetadataKeyGroupFitness: String
let HKMetadataKeyIndoorWorkout: String
let HKMetadataKeyCoachedWorkout: String
let HKMetadataKeySexualActivityProtectionUsed: String
let HKMetadataKeyMenstrualCycleStart: String
class HKObject : Object, SecureCoding {
  var uuid: UUID { get }
  var source: HKSource { get }
  var sourceRevision: HKSourceRevision { get }
  var device: HKDevice? { get }
  var metadata: [String : AnyObject]? { get }
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let HKPredicateKeyPathUUID: String
let HKPredicateKeyPathSource: String
let HKPredicateKeyPathMetadata: String
let HKPredicateKeyPathCorrelation: String
let HKPredicateKeyPathWorkout: String
let HKPredicateKeyPathDevice: String
let HKPredicateKeyPathSourceRevision: String
class HKObjectType : Object, SecureCoding, Copying {
  var identifier: String { get }
  class func quantityTypeForIdentifier(identifier: String) -> HKQuantityType?
  class func categoryTypeForIdentifier(identifier: String) -> HKCategoryType?
  class func characteristicTypeForIdentifier(identifier: String) -> HKCharacteristicType?
  class func correlationTypeForIdentifier(identifier: String) -> HKCorrelationType?
  class func workoutType() -> HKWorkoutType
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HKCharacteristicType : HKObjectType {
  init?(coder aDecoder: Coder)
}
class HKSampleType : HKObjectType {
  init?(coder aDecoder: Coder)
}
class HKCategoryType : HKSampleType {
  init?(coder aDecoder: Coder)
}
class HKCorrelationType : HKSampleType {
  init?(coder aDecoder: Coder)
}
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cumulative
  case Discrete
}
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func isCompatibleWith(unit: HKUnit) -> Bool
  init?(coder aDecoder: Coder)
}
class HKWorkoutType : HKSampleType {
  init?(coder aDecoder: Coder)
}
typealias HKObserverQueryCompletionHandler = () -> Void
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: Predicate?, updateHandler: (HKObserverQuery, HKObserverQueryCompletionHandler, Error?) -> Void)
}
class HKQuantity : Object, SecureCoding, Copying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatibleWith(unit: HKUnit) -> Bool
  func doubleValueFor(unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> ComparisonResult
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HKQuantitySample : HKSample {
  var quantityType: HKQuantityType { get }
  var quantity: HKQuantity { get }
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, metadata: [String : AnyObject]?)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, start startDate: Date, end endDate: Date, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: Coder)
}
let HKPredicateKeyPathQuantity: String
class HKQuery : Object {
  var sampleType: HKSampleType { get }
  var predicate: Predicate? { get }
}
struct HKQueryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: HKQueryOptions { get }
  static var StrictStartDate: HKQueryOptions { get }
  static var StrictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjectsWithMetadataKey(key: String) -> Predicate
  class func predicateForObjectsWithMetadataKey(key: String, allowedValues: [AnyObject]) -> Predicate
  class func predicateForObjectsWithMetadataKey(key: String, operatorType: PredicateOperatorType, value: AnyObject) -> Predicate
  class func predicateForObjectsFrom(source: HKSource) -> Predicate
  class func predicateForObjectsFrom(sources: Set<HKSource>) -> Predicate
  class func predicateForObjectsFrom(sourceRevisions: Set<HKSourceRevision>) -> Predicate
  class func predicateForObjectsFrom(devices: Set<HKDevice>) -> Predicate
  class func predicateForObjectsWithDeviceProperty(key: String, allowedValues: Set<String>) -> Predicate
  class func predicateForObjectWith(UUID: UUID) -> Predicate
  class func predicateForObjectsWithUUIDs(UUIDs: Set<UUID>) -> Predicate
  class func predicateForObjectsWithNoCorrelation() -> Predicate
  class func predicateForObjectsFrom(workout: HKWorkout) -> Predicate
}
extension HKQuery {
  class func predicateForSamplesWithStart(startDate: Date?, end endDate: Date?, options: HKQueryOptions = []) -> Predicate
}
extension HKQuery {
  class func predicateForQuantitySamplesWith(operatorType: PredicateOperatorType, quantity: HKQuantity) -> Predicate
}
extension HKQuery {
  class func predicateForCategorySamplesWith(operatorType: PredicateOperatorType, value: Int) -> Predicate
}
extension HKQuery {
  class func predicateForWorkoutsWith(workoutActivityType: HKWorkoutActivityType) -> Predicate
  class func predicateForWorkoutsWith(operatorType: PredicateOperatorType, duration: TimeInterval) -> Predicate
  class func predicateForWorkoutsWith(operatorType: PredicateOperatorType, totalEnergyBurned: HKQuantity) -> Predicate
  class func predicateForWorkoutsWith(operatorType: PredicateOperatorType, totalDistance: HKQuantity) -> Predicate
}
class HKSample : HKObject {
  var sampleType: HKSampleType { get }
  var startDate: Date { get }
  var endDate: Date { get }
  init?(coder aDecoder: Coder)
}
let HKSampleSortIdentifierStartDate: String
let HKSampleSortIdentifierEndDate: String
let HKPredicateKeyPathStartDate: String
let HKPredicateKeyPathEndDate: String
var HKObjectQueryNoLimit: Int32 { get }
class HKSampleQuery : HKQuery {
  var limit: Int { get }
  var sortDescriptors: [SortDescriptor]? { get }
  init(sampleType: HKSampleType, predicate: Predicate?, limit: Int, sortDescriptors: [SortDescriptor]?, resultsHandler: (HKSampleQuery, [HKSample]?, Error?) -> Void)
}
class HKSource : Object, SecureCoding, Copying {
  var name: String { get }
  var bundleIdentifier: String { get }
  class func defaultSource() -> HKSource
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HKSourceQuery : HKQuery {
  init(sampleType: HKSampleType, samplePredicate objectPredicate: Predicate?, completionHandler: (HKSourceQuery, Set<HKSource>?, Error?) -> Void)
}
class HKSourceRevision : Object, SecureCoding, Copying {
  var source: HKSource { get }
  var version: String? { get }
  init(source: HKSource, version: String)
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
struct HKStatisticsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: HKStatisticsOptions { get }
  static var SeparateBySource: HKStatisticsOptions { get }
  static var DiscreteAverage: HKStatisticsOptions { get }
  static var DiscreteMin: HKStatisticsOptions { get }
  static var DiscreteMax: HKStatisticsOptions { get }
  static var CumulativeSum: HKStatisticsOptions { get }
}
class HKStatistics : Object, SecureCoding, Copying {
  var quantityType: HKQuantityType { get }
  var startDate: Date { get }
  var endDate: Date { get }
  var sources: [HKSource]? { get }
  func averageQuantityFor(source: HKSource) -> HKQuantity?
  func averageQuantity() -> HKQuantity?
  func minimumQuantityFor(source: HKSource) -> HKQuantity?
  func minimumQuantity() -> HKQuantity?
  func maximumQuantityFor(source: HKSource) -> HKQuantity?
  func maximumQuantity() -> HKQuantity?
  func sumQuantityFor(source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class HKStatisticsCollection : Object {
  func statisticsFor(date: Date) -> HKStatistics?
  func enumerateStatisticsFrom(startDate: Date, to endDate: Date, withBlock block: (HKStatistics, UnsafeMutablePointer<ObjCBool>) -> Void)
  func statistics() -> [HKStatistics]
  func sources() -> Set<HKSource>
}
class HKStatisticsCollectionQuery : HKQuery {
  var anchorDate: Date { get }
  var options: HKStatisticsOptions { get }
  @NSCopying var intervalComponents: DateComponents { get }
  var initialResultsHandler: ((HKStatisticsCollectionQuery, HKStatisticsCollection?, Error?) -> Void)?
  var statisticsUpdateHandler: ((HKStatisticsCollectionQuery, HKStatistics?, HKStatisticsCollection?, Error?) -> Void)?
  init(quantityType: HKQuantityType, quantitySamplePredicate: Predicate?, options: HKStatisticsOptions = [], anchorDate: Date, intervalComponents: DateComponents)
}
class HKStatisticsQuery : HKQuery {
  init(quantityType: HKQuantityType, quantitySamplePredicate: Predicate?, options: HKStatisticsOptions = [], completionHandler handler: (HKStatisticsQuery, HKStatistics?, Error?) -> Void)
}
let HKQuantityTypeIdentifierBodyMassIndex: String
let HKQuantityTypeIdentifierBodyFatPercentage: String
let HKQuantityTypeIdentifierHeight: String
let HKQuantityTypeIdentifierBodyMass: String
let HKQuantityTypeIdentifierLeanBodyMass: String
let HKQuantityTypeIdentifierStepCount: String
let HKQuantityTypeIdentifierDistanceWalkingRunning: String
let HKQuantityTypeIdentifierDistanceCycling: String
let HKQuantityTypeIdentifierBasalEnergyBurned: String
let HKQuantityTypeIdentifierActiveEnergyBurned: String
let HKQuantityTypeIdentifierFlightsClimbed: String
let HKQuantityTypeIdentifierNikeFuel: String
let HKQuantityTypeIdentifierHeartRate: String
let HKQuantityTypeIdentifierBodyTemperature: String
let HKQuantityTypeIdentifierBasalBodyTemperature: String
let HKQuantityTypeIdentifierBloodPressureSystolic: String
let HKQuantityTypeIdentifierBloodPressureDiastolic: String
let HKQuantityTypeIdentifierRespiratoryRate: String
let HKQuantityTypeIdentifierOxygenSaturation: String
let HKQuantityTypeIdentifierPeripheralPerfusionIndex: String
let HKQuantityTypeIdentifierBloodGlucose: String
let HKQuantityTypeIdentifierNumberOfTimesFallen: String
let HKQuantityTypeIdentifierElectrodermalActivity: String
let HKQuantityTypeIdentifierInhalerUsage: String
let HKQuantityTypeIdentifierBloodAlcoholContent: String
let HKQuantityTypeIdentifierForcedVitalCapacity: String
let HKQuantityTypeIdentifierForcedExpiratoryVolume1: String
let HKQuantityTypeIdentifierPeakExpiratoryFlowRate: String
let HKQuantityTypeIdentifierDietaryFatTotal: String
let HKQuantityTypeIdentifierDietaryFatPolyunsaturated: String
let HKQuantityTypeIdentifierDietaryFatMonounsaturated: String
let HKQuantityTypeIdentifierDietaryFatSaturated: String
let HKQuantityTypeIdentifierDietaryCholesterol: String
let HKQuantityTypeIdentifierDietarySodium: String
let HKQuantityTypeIdentifierDietaryCarbohydrates: String
let HKQuantityTypeIdentifierDietaryFiber: String
let HKQuantityTypeIdentifierDietarySugar: String
let HKQuantityTypeIdentifierDietaryEnergyConsumed: String
let HKQuantityTypeIdentifierDietaryProtein: String
let HKQuantityTypeIdentifierDietaryVitaminA: String
let HKQuantityTypeIdentifierDietaryVitaminB6: String
let HKQuantityTypeIdentifierDietaryVitaminB12: String
let HKQuantityTypeIdentifierDietaryVitaminC: String
let HKQuantityTypeIdentifierDietaryVitaminD: String
let HKQuantityTypeIdentifierDietaryVitaminE: String
let HKQuantityTypeIdentifierDietaryVitaminK: String
let HKQuantityTypeIdentifierDietaryCalcium: String
let HKQuantityTypeIdentifierDietaryIron: String
let HKQuantityTypeIdentifierDietaryThiamin: String
let HKQuantityTypeIdentifierDietaryRiboflavin: String
let HKQuantityTypeIdentifierDietaryNiacin: String
let HKQuantityTypeIdentifierDietaryFolate: String
let HKQuantityTypeIdentifierDietaryBiotin: String
let HKQuantityTypeIdentifierDietaryPantothenicAcid: String
let HKQuantityTypeIdentifierDietaryPhosphorus: String
let HKQuantityTypeIdentifierDietaryIodine: String
let HKQuantityTypeIdentifierDietaryMagnesium: String
let HKQuantityTypeIdentifierDietaryZinc: String
let HKQuantityTypeIdentifierDietarySelenium: String
let HKQuantityTypeIdentifierDietaryCopper: String
let HKQuantityTypeIdentifierDietaryManganese: String
let HKQuantityTypeIdentifierDietaryChromium: String
let HKQuantityTypeIdentifierDietaryMolybdenum: String
let HKQuantityTypeIdentifierDietaryChloride: String
let HKQuantityTypeIdentifierDietaryPotassium: String
let HKQuantityTypeIdentifierDietaryCaffeine: String
let HKQuantityTypeIdentifierDietaryWater: String
let HKQuantityTypeIdentifierUVExposure: String
let HKCategoryTypeIdentifierSleepAnalysis: String
let HKCategoryTypeIdentifierAppleStandHour: String
let HKCategoryTypeIdentifierCervicalMucusQuality: String
let HKCategoryTypeIdentifierOvulationTestResult: String
let HKCategoryTypeIdentifierMenstrualFlow: String
let HKCategoryTypeIdentifierIntermenstrualBleeding: String
let HKCategoryTypeIdentifierSexualActivity: String
let HKCharacteristicTypeIdentifierBiologicalSex: String
let HKCharacteristicTypeIdentifierBloodType: String
let HKCharacteristicTypeIdentifierDateOfBirth: String
let HKCharacteristicTypeIdentifierFitzpatrickSkinType: String
let HKCorrelationTypeIdentifierBloodPressure: String
let HKCorrelationTypeIdentifierFood: String
let HKWorkoutTypeIdentifier: String
class HKUnit : Object, SecureCoding, Copying {
  /// Returns a unique string representation for the unit that could be used with +unitFromString:
  var unitString: String { get }
  convenience init(from string: String)
  convenience init(from massFormatterUnit: MassFormatterUnit)
  class func massFormatterUnitFrom(unit: HKUnit) -> MassFormatterUnit
  convenience init(from lengthFormatterUnit: LengthFormatterUnit)
  class func lengthFormatterUnitFrom(unit: HKUnit) -> LengthFormatterUnit
  convenience init(from energyFormatterUnit: EnergyFormatterUnit)
  class func energyFormatterUnitFrom(unit: HKUnit) -> EnergyFormatterUnit
  func isNull() -> Bool
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
enum HKMetricPrefix : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Pico
  case Nano
  case Micro
  case Milli
  case Centi
  case Deci
  case Deca
  case Hecto
  case Kilo
  case Mega
  case Giga
  case Tera
}
extension HKUnit {
  class func gramUnitWith(prefix: HKMetricPrefix) -> Self
  class func gram() -> Self
  class func ounce() -> Self
  class func pound() -> Self
  class func stone() -> Self
  class func moleUnitWith(prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnitWithMolarMass(gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnitWith(prefix: HKMetricPrefix) -> Self
  class func meter() -> Self
  class func inch() -> Self
  class func foot() -> Self
  class func yard() -> Self
  class func mile() -> Self
}
extension HKUnit {
  class func literUnitWith(prefix: HKMetricPrefix) -> Self
  class func liter() -> Self
  class func fluidOunceUS() -> Self
  class func fluidOunceImperial() -> Self
  class func pintUS() -> Self
  class func pintImperial() -> Self
  class func cupUS() -> Self
  class func cupImperial() -> Self
}
extension HKUnit {
  class func pascalUnitWith(prefix: HKMetricPrefix) -> Self
  class func pascal() -> Self
  class func millimeterOfMercury() -> Self
  class func centimeterOfWater() -> Self
  class func atmosphere() -> Self
}
extension HKUnit {
  class func secondUnitWith(prefix: HKMetricPrefix) -> Self
  class func second() -> Self
  class func minute() -> Self
  class func hour() -> Self
  class func day() -> Self
}
extension HKUnit {
  class func jouleUnitWith(prefix: HKMetricPrefix) -> Self
  class func joule() -> Self
  class func calorie() -> Self
  class func kilocalorie() -> Self
}
extension HKUnit {
  class func degreeCelsius() -> Self
  class func degreeFahrenheit() -> Self
  class func kelvin() -> Self
}
extension HKUnit {
  class func siemenUnitWith(prefix: HKMetricPrefix) -> Self
  class func siemen() -> Self
}
extension HKUnit {
  class func count() -> Self
  class func percent() -> Self
}
extension HKUnit {
  func unitMultipliedBy(unit: HKUnit) -> HKUnit
  func unitDividedBy(unit: HKUnit) -> HKUnit
  func unitRaisedToPower(power: Int) -> HKUnit
  func reciprocal() -> HKUnit
}
var HKUnitMolarMassBloodGlucose: Double { get }
enum HKWorkoutActivityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AmericanFootball
  case Archery
  case AustralianFootball
  case Badminton
  case Baseball
  case Basketball
  case Bowling
  case Boxing
  case Climbing
  case Cricket
  case CrossTraining
  case Curling
  case Cycling
  case Dance
  case DanceInspiredTraining
  case Elliptical
  case EquestrianSports
  case Fencing
  case Fishing
  case FunctionalStrengthTraining
  case Golf
  case Gymnastics
  case Handball
  case Hiking
  case Hockey
  case Hunting
  case Lacrosse
  case MartialArts
  case MindAndBody
  case MixedMetabolicCardioTraining
  case PaddleSports
  case Play
  case PreparationAndRecovery
  case Racquetball
  case Rowing
  case Rugby
  case Running
  case Sailing
  case SkatingSports
  case SnowSports
  case Soccer
  case Softball
  case Squash
  case StairClimbing
  case SurfingSports
  case Swimming
  case TableTennis
  case Tennis
  case TrackAndField
  case TraditionalStrengthTraining
  case Volleyball
  case Walking
  case WaterFitness
  case WaterPolo
  case WaterSports
  case Wrestling
  case Yoga
  case Other
}
enum HKWorkoutEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Pause
  case Resume
}
class HKWorkoutEvent : Object, SecureCoding {
  var type: HKWorkoutEventType { get }
  @NSCopying var date: Date { get }
  convenience init(type: HKWorkoutEventType, date: Date)
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class HKWorkout : HKSample {
  var workoutActivityType: HKWorkoutActivityType { get }
  var workoutEvents: [HKWorkoutEvent]? { get }
  var duration: TimeInterval { get }
  var totalEnergyBurned: HKQuantity? { get }
  var totalDistance: HKQuantity? { get }
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: Coder)
}
let HKPredicateKeyPathWorkoutDuration: String
let HKPredicateKeyPathWorkoutTotalDistance: String
let HKPredicateKeyPathWorkoutTotalEnergyBurned: String
let HKPredicateKeyPathWorkoutType: String
let HKWorkoutSortIdentifierDuration: String
let HKWorkoutSortIdentifierTotalDistance: String
let HKWorkoutSortIdentifierTotalEnergyBurned: String
