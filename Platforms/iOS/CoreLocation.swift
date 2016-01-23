
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
class CLBeaconRegion : CLRegion {
  init(proximityUUID: UUID, identifier: String)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, identifier: String)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  func peripheralDataWithMeasuredPower(measuredPower: Number?) -> MutableDictionary
  var proximityUUID: UUID { get }
  var major: Number? { get }
  var minor: Number? { get }
  var notifyEntryStateOnDisplay: Bool
  init()
  init?(coder aDecoder: Coder)
}
class CLBeacon : Object, Copying, SecureCoding {
  var proximityUUID: UUID { get }
  var major: Number { get }
  var minor: Number { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CLCircularRegion : CLRegion {
  init(center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func contains(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  init?(coder aDecoder: Coder)
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
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, Error?) -> Void
class CLGeocoder : Object {
  var isGeocoding: Bool { get }
  func reverseGeocodeLocation(location: CLLocation, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressDictionary(addressDictionary: [Object : AnyObject], completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, in region: CLRegion?, completionHandler: CLGeocodeCompletionHandler)
  func cancelGeocode()
  init()
}
typealias CLHeadingComponentValue = Double
let kCLHeadingFilterNone: CLLocationDegrees
class CLHeading : Object, Copying, SecureCoding {
  var magneticHeading: CLLocationDirection { get }
  var trueHeading: CLLocationDirection { get }
  var headingAccuracy: CLLocationDirection { get }
  var x: CLHeadingComponentValue { get }
  var y: CLHeadingComponentValue { get }
  var z: CLHeadingComponentValue { get }
  @NSCopying var timestamp: Date { get }
  var description: String { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
let CLTimeIntervalMax: TimeInterval
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
func CLLocationCoordinate2DIsValid(coord: CLLocationCoordinate2D) -> Bool
func CLLocationCoordinate2DMake(latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
class CLFloor : Object, Copying, SecureCoding {
  var level: Int { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CLLocation : Object, Copying, SecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: Date)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: Date)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  var course: CLLocationDirection { get }
  var speed: CLLocationSpeed { get }
  @NSCopying var timestamp: Date { get }
  @NSCopying var floor: CLFloor? { get }
  var description: String { get }
  func distanceFrom(location: CLLocation) -> CLLocationDistance
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
class CLLocationManager : Object {
  class func locationServicesEnabled() -> Bool
  class func headingAvailable() -> Bool
  class func significantLocationChangeMonitoringAvailable() -> Bool
  class func isMonitoringAvailableFor(regionClass: AnyClass) -> Bool
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
  func stopMonitoringFor(region: CLRegion)
  func startMonitoringFor(region: CLRegion)
  func requestStateFor(region: CLRegion)
  func startRangingBeaconsIn(region: CLBeaconRegion)
  func stopRangingBeaconsIn(region: CLBeaconRegion)
  func allowDeferredLocationUpdatesUntilTraveled(distance: CLLocationDistance, timeout: TimeInterval)
  func disallowDeferredLocationUpdates()
  class func deferredLocationUpdatesAvailable() -> Bool
  init()
}
protocol CLLocationManagerDelegate : ObjectProtocol {
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  optional func locationManager(manager: CLLocationManager, didUpdateHeading newHeading: CLHeading)
  optional func locationManagerShouldDisplayHeadingCalibration(manager: CLLocationManager) -> Bool
  optional func locationManager(manager: CLLocationManager, didDetermineState state: CLRegionState, forRegion region: CLRegion)
  optional func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion)
  optional func locationManager(manager: CLLocationManager, rangingBeaconsDidFailFor region: CLBeaconRegion, withError error: Error)
  optional func locationManager(manager: CLLocationManager, didEnter region: CLRegion)
  optional func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: Error)
  optional func locationManager(manager: CLLocationManager, monitoringDidFailFor region: CLRegion?, withError error: Error)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
  optional func locationManager(manager: CLLocationManager, didStartMonitoringFor region: CLRegion)
  optional func locationManagerDidPauseLocationUpdates(manager: CLLocationManager)
  optional func locationManagerDidResumeLocationUpdates(manager: CLLocationManager)
  optional func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWithError error: Error?)
  optional func locationManager(manager: CLLocationManager, didVisit visit: CLVisit)
}
extension CLLocationManager {
  func startMonitoringVisits()
  func stopMonitoringVisits()
}
class CLPlacemark : Object, Copying, SecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @NSCopying var timeZone: TimeZone? { get }
  var addressDictionary: [Object : AnyObject]? { get }
  var name: String? { get }
  var thoroughfare: String? { get }
  var subThoroughfare: String? { get }
  var locality: String? { get }
  var subLocality: String? { get }
  var administrativeArea: String? { get }
  var subAdministrativeArea: String? { get }
  var postalCode: String? { get }
  var isOcountryCode: String? { get }
  var country: String? { get }
  var inlandWater: String? { get }
  var ocean: String? { get }
  var areasOfInterest: [String]? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
class CLRegion : Object, Copying, SecureCoding {
  var identifier: String { get }
  var notifyOnEntry: Bool
  var notifyOnExit: Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CLVisit : Object, SecureCoding, Copying {
  @NSCopying var arrivalDate: Date { get }
  @NSCopying var departureDate: Date { get }
  var coordinate: CLLocationCoordinate2D { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
