
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
class CLBeaconRegion : CLRegion {
  init(proximityUUID: NSUUID, identifier: String)
  init(proximityUUID: NSUUID, major: CLBeaconMajorValue, identifier: String)
  init(proximityUUID: NSUUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  func peripheralDataWithMeasuredPower(measuredPower: NSNumber?) -> NSMutableDictionary
  var proximityUUID: NSUUID { get }
  var major: NSNumber? { get }
  var minor: NSNumber? { get }
  var notifyEntryStateOnDisplay: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  var proximityUUID: NSUUID { get }
  var major: NSNumber { get }
  var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CLCircularRegion : CLRegion {
  init(center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func containsCoordinate(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum CLError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LocationUnknown
  case Denied
  case Network
  case HeadingFailure
  case RegionMonitoringDenied
  case RegionMonitoringFailure
  case RegionMonitoringSetupDelayed
  case RegionMonitoringResponseDelayed
  case GeocodeFoundNoResult
  case GeocodeFoundPartialResult
  case GeocodeCanceled
  case DeferredFailed
  case DeferredNotUpdatingLocation
  case DeferredAccuracyTooLow
  case DeferredDistanceFiltered
  case DeferredCanceled
  case RangingUnavailable
  case RangingFailure
}
extension CLError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let kCLErrorUserInfoAlternateRegionKey: String
let kCLErrorDomain: String
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, NSError?) -> Void
class CLGeocoder : NSObject {
  var geocoding: Bool { get }
  func reverseGeocodeLocation(location: CLLocation, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressDictionary(addressDictionary: [NSObject : AnyObject], completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, inRegion region: CLRegion?, completionHandler: CLGeocodeCompletionHandler)
  func cancelGeocode()
  init()
}
typealias CLHeadingComponentValue = Double
let kCLHeadingFilterNone: CLLocationDegrees
class CLHeading : NSObject, NSCopying, NSSecureCoding {
  var magneticHeading: CLLocationDirection { get }
  var trueHeading: CLLocationDirection { get }
  var headingAccuracy: CLLocationDirection { get }
  var x: CLHeadingComponentValue { get }
  var y: CLHeadingComponentValue { get }
  var z: CLHeadingComponentValue { get }
  @NSCopying var timestamp: NSDate { get }
  var description: String { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias CLLocationDegrees = Double
typealias CLLocationAccuracy = Double
typealias CLLocationSpeed = Double
typealias CLLocationDirection = Double
struct CLLocationCoordinate2D {
  var latitude: CLLocationDegrees
  var longitude: CLLocationDegrees
  init()
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
}
typealias CLLocationDistance = Double
let kCLDistanceFilterNone: CLLocationDistance
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
let CLLocationDistanceMax: CLLocationDistance
let CLTimeIntervalMax: NSTimeInterval
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
func CLLocationCoordinate2DIsValid(coord: CLLocationCoordinate2D) -> Bool
func CLLocationCoordinate2DMake(latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
class CLFloor : NSObject, NSCopying, NSSecureCoding {
  var level: Int { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: NSDate)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: NSDate)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  var course: CLLocationDirection { get }
  var speed: CLLocationSpeed { get }
  @NSCopying var timestamp: NSDate { get }
  @NSCopying var floor: CLFloor? { get }
  var description: String { get }
  func distanceFromLocation(location: CLLocation) -> CLLocationDistance
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum CLDeviceOrientation : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
  case FaceUp
  case FaceDown
}
enum CLAuthorizationStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NotDetermined
  case Restricted
  case Denied
  case AuthorizedAlways
  case AuthorizedWhenInUse
  static var Authorized: CLAuthorizationStatus { get }
}
enum CLActivityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Other
  case AutomotiveNavigation
  case Fitness
  case OtherNavigation
}
class CLLocationManager : NSObject {
  class func locationServicesEnabled() -> Bool
  class func headingAvailable() -> Bool
  class func significantLocationChangeMonitoringAvailable() -> Bool
  class func isMonitoringAvailableForClass(regionClass: AnyClass) -> Bool
  class func isRangingAvailable() -> Bool
  class func authorizationStatus() -> CLAuthorizationStatus
  unowned(unsafe) var delegate: @sil_unmanaged CLLocationManagerDelegate?
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  var pausesLocationUpdatesAutomatically: Bool
  var allowsBackgroundLocationUpdates: Bool
  @NSCopying var location: CLLocation? { get }
  var headingFilter: CLLocationDegrees
  var headingOrientation: CLDeviceOrientation
  @NSCopying var heading: CLHeading? { get }
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  var monitoredRegions: Set<CLRegion> { get }
  var rangedRegions: Set<CLRegion> { get }
  func requestWhenInUseAuthorization()
  func requestAlwaysAuthorization()
  func startUpdatingLocation()
  func stopUpdatingLocation()
  func requestLocation()
  func startUpdatingHeading()
  func stopUpdatingHeading()
  func dismissHeadingCalibrationDisplay()
  func startMonitoringSignificantLocationChanges()
  func stopMonitoringSignificantLocationChanges()
  func stopMonitoringForRegion(region: CLRegion)
  func startMonitoringForRegion(region: CLRegion)
  func requestStateForRegion(region: CLRegion)
  func startRangingBeaconsInRegion(region: CLBeaconRegion)
  func stopRangingBeaconsInRegion(region: CLBeaconRegion)
  func allowDeferredLocationUpdatesUntilTraveled(distance: CLLocationDistance, timeout: NSTimeInterval)
  func disallowDeferredLocationUpdates()
  class func deferredLocationUpdatesAvailable() -> Bool
  init()
}
protocol CLLocationManagerDelegate : NSObjectProtocol {
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  optional func locationManager(manager: CLLocationManager, didUpdateHeading newHeading: CLHeading)
  optional func locationManagerShouldDisplayHeadingCalibration(manager: CLLocationManager) -> Bool
  optional func locationManager(manager: CLLocationManager, didDetermineState state: CLRegionState, forRegion region: CLRegion)
  optional func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion)
  optional func locationManager(manager: CLLocationManager, rangingBeaconsDidFailForRegion region: CLBeaconRegion, withError error: NSError)
  optional func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion)
  optional func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
  optional func locationManager(manager: CLLocationManager, monitoringDidFailForRegion region: CLRegion?, withError error: NSError)
  optional func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus)
  optional func locationManager(manager: CLLocationManager, didStartMonitoringForRegion region: CLRegion)
  optional func locationManagerDidPauseLocationUpdates(manager: CLLocationManager)
  optional func locationManagerDidResumeLocationUpdates(manager: CLLocationManager)
  optional func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWithError error: NSError?)
  optional func locationManager(manager: CLLocationManager, didVisit visit: CLVisit)
}
extension CLLocationManager {
  func startMonitoringVisits()
  func stopMonitoringVisits()
}
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var addressDictionary: [NSObject : AnyObject]? { get }
  var name: String? { get }
  var thoroughfare: String? { get }
  var subThoroughfare: String? { get }
  var locality: String? { get }
  var subLocality: String? { get }
  var administrativeArea: String? { get }
  var subAdministrativeArea: String? { get }
  var postalCode: String? { get }
  var ISOcountryCode: String? { get }
  var country: String? { get }
  var inlandWater: String? { get }
  var ocean: String? { get }
  var areasOfInterest: [String]? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inside
  case Outside
}
enum CLProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Immediate
  case Near
  case Far
}
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var notifyOnEntry: Bool
  var notifyOnExit: Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CLVisit : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var arrivalDate: NSDate { get }
  @NSCopying var departureDate: NSDate { get }
  var coordinate: CLLocationCoordinate2D { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
