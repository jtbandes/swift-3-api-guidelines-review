
var HKAnchoredObjectQueryNoAnchor: Int32 { get }
class HKQueryAnchor : NSObject, NSSecureCoding, NSCopying {
  convenience init(fromValue value: Int)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class HKAnchoredObjectQuery : HKQuery {
  var updateHandler: ((HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, NSError?) -> Void)?
  init(type: HKSampleType, predicate: NSPredicate?, anchor: Int, limit: Int, completionHandler handler: (HKAnchoredObjectQuery, [HKSample]?, Int, NSError?) -> Void)
  init(type: HKSampleType, predicate: NSPredicate?, anchor: HKQueryAnchor?, limit: Int, resultsHandler handler: (HKAnchoredObjectQuery, [HKSample]?, [HKDeletedObject]?, HKQueryAnchor?, NSError?) -> Void)
}
class HKCategorySample : HKSample {
  var categoryType: HKCategoryType { get }
  var value: Int { get }
  convenience init(type: HKCategoryType, value: Int, startDate: NSDate, endDate: NSDate, metadata: [String : AnyObject]?)
  convenience init(type: HKCategoryType, value: Int, startDate: NSDate, endDate: NSDate)
  convenience init(type: HKCategoryType, value: Int, startDate: NSDate, endDate: NSDate, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: NSCoder)
}
let HKPredicateKeyPathCategoryValue: String
class HKCorrelation : HKSample {
  var correlationType: HKCorrelationType { get }
  var objects: Set<HKSample> { get }
  convenience init(type correlationType: HKCorrelationType, startDate: NSDate, endDate: NSDate, objects: Set<HKSample>)
  convenience init(type correlationType: HKCorrelationType, startDate: NSDate, endDate: NSDate, objects: Set<HKSample>, metadata: [String : AnyObject]?)
  convenience init(type correlationType: HKCorrelationType, startDate: NSDate, endDate: NSDate, objects: Set<HKSample>, device: HKDevice?, metadata: [String : AnyObject]?)
  func objectsForType(objectType: HKObjectType) -> Set<HKSample>
  init?(coder aDecoder: NSCoder)
}
class HKCorrelationQuery : HKQuery {
  @NSCopying var correlationType: HKCorrelationType { get }
  var samplePredicates: [HKSampleType : NSPredicate]? { get }
  init(type correlationType: HKCorrelationType, predicate: NSPredicate?, samplePredicates: [HKSampleType : NSPredicate]?, completion: (HKCorrelationQuery, [HKCorrelation]?, NSError?) -> Void)
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
class HKDeletedObject : NSObject, NSSecureCoding {
  var UUID: NSUUID { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let HKDevicePropertyKeyName: String
let HKDevicePropertyKeyManufacturer: String
let HKDevicePropertyKeyModel: String
let HKDevicePropertyKeyHardwareVersion: String
let HKDevicePropertyKeyFirmwareVersion: String
let HKDevicePropertyKeySoftwareVersion: String
let HKDevicePropertyKeyLocalIdentifier: String
let HKDevicePropertyKeyUDIDeviceIdentifier: String
class HKDevice : NSObject, NSSecureCoding, NSCopying {
  var name: String { get }
  var manufacturer: String? { get }
  var model: String? { get }
  var hardwareVersion: String? { get }
  var firmwareVersion: String? { get }
  var softwareVersion: String? { get }
  var localIdentifier: String? { get }
  var UDIDeviceIdentifier: String? { get }
  init(name: String?, manufacturer: String?, model: String?, hardwareVersion: String?, firmwareVersion: String?, softwareVersion: String?, localIdentifier: String?, UDIDeviceIdentifier: String?)
  class func localDevice() -> HKDevice
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatusForType(type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorizationToShareTypes(typesToShare: Set<HKSampleType>?, readTypes typesToRead: Set<HKObjectType>?, completion: (Bool, NSError?) -> Void)
  func handleAuthorizationForExtensionWithCompletion(completion: (Bool, NSError?) -> Void)
  func earliestPermittedSampleDate() -> NSDate
  func saveObject(object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func saveObjects(objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func deleteObject(object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func deleteObjects(objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func deleteObjectsOfType(objectType: HKObjectType, predicate: NSPredicate, withCompletion completion: (Bool, Int, NSError?) -> Void)
  func executeQuery(query: HKQuery)
  func stopQuery(query: HKQuery)
  func splitTotalEnergy(totalEnergy: HKQuantity, startDate: NSDate, endDate: NSDate, resultsHandler: (HKQuantity?, HKQuantity?, NSError?) -> Void)
  func dateOfBirth() throws -> NSDate
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  init()
}
extension HKHealthStore {
  func addSamples(samples: [HKSample], toWorkout workout: HKWorkout, completion: (Bool, NSError?) -> Void)
}
extension HKHealthStore {
  func enableBackgroundDeliveryForType(type: HKObjectType, frequency: HKUpdateFrequency, withCompletion completion: (Bool, NSError?) -> Void)
  func disableBackgroundDeliveryForType(type: HKObjectType, withCompletion completion: (Bool, NSError?) -> Void)
  func disableAllBackgroundDeliveryWithCompletion(completion: (Bool, NSError?) -> Void)
}
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  func preferredUnitsForQuantityTypes(quantityTypes: Set<HKQuantityType>, completion: ([HKQuantityType : HKUnit], NSError?) -> Void)
}
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
class HKObject : NSObject, NSSecureCoding {
  var UUID: NSUUID { get }
  var source: HKSource { get }
  var sourceRevision: HKSourceRevision { get }
  var device: HKDevice? { get }
  var metadata: [String : AnyObject]? { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let HKPredicateKeyPathUUID: String
let HKPredicateKeyPathSource: String
let HKPredicateKeyPathMetadata: String
let HKPredicateKeyPathCorrelation: String
let HKPredicateKeyPathWorkout: String
let HKPredicateKeyPathDevice: String
let HKPredicateKeyPathSourceRevision: String
class HKObjectType : NSObject, NSSecureCoding, NSCopying {
  var identifier: String { get }
  class func quantityTypeForIdentifier(identifier: String) -> HKQuantityType?
  class func categoryTypeForIdentifier(identifier: String) -> HKCategoryType?
  class func characteristicTypeForIdentifier(identifier: String) -> HKCharacteristicType?
  class func correlationTypeForIdentifier(identifier: String) -> HKCorrelationType?
  class func workoutType() -> HKWorkoutType
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class HKCharacteristicType : HKObjectType {
  init?(coder aDecoder: NSCoder)
}
class HKSampleType : HKObjectType {
  init?(coder aDecoder: NSCoder)
}
class HKCategoryType : HKSampleType {
  init?(coder aDecoder: NSCoder)
}
class HKCorrelationType : HKSampleType {
  init?(coder aDecoder: NSCoder)
}
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cumulative
  case Discrete
}
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func isCompatibleWithUnit(unit: HKUnit) -> Bool
  init?(coder aDecoder: NSCoder)
}
class HKWorkoutType : HKSampleType {
  init?(coder aDecoder: NSCoder)
}
typealias HKObserverQueryCompletionHandler = () -> Void
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: NSPredicate?, updateHandler: (HKObserverQuery, HKObserverQueryCompletionHandler, NSError?) -> Void)
}
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatibleWithUnit(unit: HKUnit) -> Bool
  func doubleValueForUnit(unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> NSComparisonResult
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class HKQuantitySample : HKSample {
  var quantityType: HKQuantityType { get }
  var quantity: HKQuantity { get }
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, startDate: NSDate, endDate: NSDate)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, startDate: NSDate, endDate: NSDate, metadata: [String : AnyObject]?)
  convenience init(type quantityType: HKQuantityType, quantity: HKQuantity, startDate: NSDate, endDate: NSDate, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: NSCoder)
}
let HKPredicateKeyPathQuantity: String
class HKQuery : NSObject {
  var sampleType: HKSampleType { get }
  var predicate: NSPredicate? { get }
}
struct HKQueryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: HKQueryOptions { get }
  static var StrictStartDate: HKQueryOptions { get }
  static var StrictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjectsWithMetadataKey(key: String) -> NSPredicate
  class func predicateForObjectsWithMetadataKey(key: String, allowedValues: [AnyObject]) -> NSPredicate
  class func predicateForObjectsWithMetadataKey(key: String, operatorType: NSPredicateOperatorType, value: AnyObject) -> NSPredicate
  class func predicateForObjectsFromSource(source: HKSource) -> NSPredicate
  class func predicateForObjectsFromSources(sources: Set<HKSource>) -> NSPredicate
  class func predicateForObjectsFromSourceRevisions(sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  class func predicateForObjectsFromDevices(devices: Set<HKDevice>) -> NSPredicate
  class func predicateForObjectsWithDeviceProperty(key: String, allowedValues: Set<String>) -> NSPredicate
  class func predicateForObjectWithUUID(UUID: NSUUID) -> NSPredicate
  class func predicateForObjectsWithUUIDs(UUIDs: Set<NSUUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjectsFromWorkout(workout: HKWorkout) -> NSPredicate
}
extension HKQuery {
  class func predicateForSamplesWithStartDate(startDate: NSDate?, endDate: NSDate?, options: HKQueryOptions) -> NSPredicate
}
extension HKQuery {
  class func predicateForQuantitySamplesWithOperatorType(operatorType: NSPredicateOperatorType, quantity: HKQuantity) -> NSPredicate
}
extension HKQuery {
  class func predicateForCategorySamplesWithOperatorType(operatorType: NSPredicateOperatorType, value: Int) -> NSPredicate
}
extension HKQuery {
  class func predicateForWorkoutsWithWorkoutActivityType(workoutActivityType: HKWorkoutActivityType) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(operatorType: NSPredicateOperatorType, duration: NSTimeInterval) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(operatorType: NSPredicateOperatorType, totalEnergyBurned: HKQuantity) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(operatorType: NSPredicateOperatorType, totalDistance: HKQuantity) -> NSPredicate
}
class HKSample : HKObject {
  var sampleType: HKSampleType { get }
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  init?(coder aDecoder: NSCoder)
}
let HKSampleSortIdentifierStartDate: String
let HKSampleSortIdentifierEndDate: String
let HKPredicateKeyPathStartDate: String
let HKPredicateKeyPathEndDate: String
var HKObjectQueryNoLimit: Int32 { get }
class HKSampleQuery : HKQuery {
  var limit: Int { get }
  var sortDescriptors: [NSSortDescriptor]? { get }
  init(sampleType: HKSampleType, predicate: NSPredicate?, limit: Int, sortDescriptors: [NSSortDescriptor]?, resultsHandler: (HKSampleQuery, [HKSample]?, NSError?) -> Void)
}
class HKSource : NSObject, NSSecureCoding, NSCopying {
  var name: String { get }
  var bundleIdentifier: String { get }
  class func defaultSource() -> HKSource
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class HKSourceQuery : HKQuery {
  init(sampleType: HKSampleType, samplePredicate objectPredicate: NSPredicate?, completionHandler: (HKSourceQuery, Set<HKSource>?, NSError?) -> Void)
}
class HKSourceRevision : NSObject, NSSecureCoding, NSCopying {
  var source: HKSource { get }
  var version: String? { get }
  init(source: HKSource, version: String)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
class HKStatistics : NSObject, NSSecureCoding, NSCopying {
  var quantityType: HKQuantityType { get }
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  var sources: [HKSource]? { get }
  func averageQuantityForSource(source: HKSource) -> HKQuantity?
  func averageQuantity() -> HKQuantity?
  func minimumQuantityForSource(source: HKSource) -> HKQuantity?
  func minimumQuantity() -> HKQuantity?
  func maximumQuantityForSource(source: HKSource) -> HKQuantity?
  func maximumQuantity() -> HKQuantity?
  func sumQuantityForSource(source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class HKStatisticsCollection : NSObject {
  func statisticsForDate(date: NSDate) -> HKStatistics?
  func enumerateStatisticsFromDate(startDate: NSDate, toDate endDate: NSDate, withBlock block: (HKStatistics, UnsafeMutablePointer<ObjCBool>) -> Void)
  func statistics() -> [HKStatistics]
  func sources() -> Set<HKSource>
}
class HKStatisticsCollectionQuery : HKQuery {
  var anchorDate: NSDate { get }
  var options: HKStatisticsOptions { get }
  @NSCopying var intervalComponents: NSDateComponents { get }
  var initialResultsHandler: ((HKStatisticsCollectionQuery, HKStatisticsCollection?, NSError?) -> Void)?
  var statisticsUpdateHandler: ((HKStatisticsCollectionQuery, HKStatistics?, HKStatisticsCollection?, NSError?) -> Void)?
  init(quantityType: HKQuantityType, quantitySamplePredicate: NSPredicate?, options: HKStatisticsOptions, anchorDate: NSDate, intervalComponents: NSDateComponents)
}
class HKStatisticsQuery : HKQuery {
  init(quantityType: HKQuantityType, quantitySamplePredicate: NSPredicate?, options: HKStatisticsOptions, completionHandler handler: (HKStatisticsQuery, HKStatistics?, NSError?) -> Void)
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
class HKUnit : NSObject, NSSecureCoding, NSCopying {
  /// Returns a unique string representation for the unit that could be used with +unitFromString:
  var unitString: String { get }
  convenience init(fromString string: String)
  convenience init(fromMassFormatterUnit massFormatterUnit: NSMassFormatterUnit)
  class func massFormatterUnitFromUnit(unit: HKUnit) -> NSMassFormatterUnit
  convenience init(fromLengthFormatterUnit lengthFormatterUnit: NSLengthFormatterUnit)
  class func lengthFormatterUnitFromUnit(unit: HKUnit) -> NSLengthFormatterUnit
  convenience init(fromEnergyFormatterUnit energyFormatterUnit: NSEnergyFormatterUnit)
  class func energyFormatterUnitFromUnit(unit: HKUnit) -> NSEnergyFormatterUnit
  func isNull() -> Bool
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  class func gramUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func gramUnit() -> Self
  class func ounceUnit() -> Self
  class func poundUnit() -> Self
  class func stoneUnit() -> Self
  class func moleUnitWithMetricPrefix(prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnitWithMolarMass(gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func meterUnit() -> Self
  class func inchUnit() -> Self
  class func footUnit() -> Self
  class func yardUnit() -> Self
  class func mileUnit() -> Self
}
extension HKUnit {
  class func literUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func literUnit() -> Self
  class func fluidOunceUSUnit() -> Self
  class func fluidOunceImperialUnit() -> Self
  class func pintUSUnit() -> Self
  class func pintImperialUnit() -> Self
  class func cupUSUnit() -> Self
  class func cupImperialUnit() -> Self
}
extension HKUnit {
  class func pascalUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func pascalUnit() -> Self
  class func millimeterOfMercuryUnit() -> Self
  class func centimeterOfWaterUnit() -> Self
  class func atmosphereUnit() -> Self
}
extension HKUnit {
  class func secondUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func secondUnit() -> Self
  class func minuteUnit() -> Self
  class func hourUnit() -> Self
  class func dayUnit() -> Self
}
extension HKUnit {
  class func jouleUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func jouleUnit() -> Self
  class func calorieUnit() -> Self
  class func kilocalorieUnit() -> Self
}
extension HKUnit {
  class func degreeCelsiusUnit() -> Self
  class func degreeFahrenheitUnit() -> Self
  class func kelvinUnit() -> Self
}
extension HKUnit {
  class func siemenUnitWithMetricPrefix(prefix: HKMetricPrefix) -> Self
  class func siemenUnit() -> Self
}
extension HKUnit {
  class func countUnit() -> Self
  class func percentUnit() -> Self
}
extension HKUnit {
  func unitMultipliedByUnit(unit: HKUnit) -> HKUnit
  func unitDividedByUnit(unit: HKUnit) -> HKUnit
  func unitRaisedToPower(power: Int) -> HKUnit
  func reciprocalUnit() -> HKUnit
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
class HKWorkoutEvent : NSObject, NSSecureCoding {
  var type: HKWorkoutEventType { get }
  @NSCopying var date: NSDate { get }
  convenience init(type: HKWorkoutEventType, date: NSDate)
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class HKWorkout : HKSample {
  var workoutActivityType: HKWorkoutActivityType { get }
  var workoutEvents: [HKWorkoutEvent]? { get }
  var duration: NSTimeInterval { get }
  var totalEnergyBurned: HKQuantity? { get }
  var totalDistance: HKQuantity? { get }
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, duration: NSTimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, duration: NSTimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: NSCoder)
}
let HKPredicateKeyPathWorkoutDuration: String
let HKPredicateKeyPathWorkoutTotalDistance: String
let HKPredicateKeyPathWorkoutTotalEnergyBurned: String
let HKPredicateKeyPathWorkoutType: String
let HKWorkoutSortIdentifierDuration: String
let HKWorkoutSortIdentifierTotalDistance: String
let HKWorkoutSortIdentifierTotalEnergyBurned: String
