
struct CMAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
class CMAccelerometerData : CMLogItem {
  var acceleration: CMAcceleration { get }
  init()
  init?(coder aDecoder: Coder)
}
typealias CMAltitudeHandler = (CMAltitudeData?, Error?) -> Void
class CMAltimeter : Object {
  class func isRelativeAltitudeAvailable() -> Bool
  func startRelativeAltitudeUpdatesTo(queue: OperationQueue, withHandler handler: CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
  init()
}
class CMAltitudeData : CMLogItem {
  var relativeAltitude: Number { get }
  var pressure: Number { get }
  init()
  init?(coder aDecoder: Coder)
}
struct CMRotationMatrix {
  var m11: Double
  var m12: Double
  var m13: Double
  var m21: Double
  var m22: Double
  var m23: Double
  var m31: Double
  var m32: Double
  var m33: Double
  init()
  init(m11: Double, m12: Double, m13: Double, m21: Double, m22: Double, m23: Double, m31: Double, m32: Double, m33: Double)
}
struct CMQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}
struct CMAttitudeReferenceFrame : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var XArbitraryZVertical: CMAttitudeReferenceFrame { get }
  static var XArbitraryCorrectedZVertical: CMAttitudeReferenceFrame { get }
  static var XMagneticNorthZVertical: CMAttitudeReferenceFrame { get }
  static var XTrueNorthZVertical: CMAttitudeReferenceFrame { get }
}
class CMAttitude : Object, Copying, SecureCoding {
  var roll: Double { get }
  var pitch: Double { get }
  var yaw: Double { get }
  var rotationMatrix: CMRotationMatrix { get }
  var quaternion: CMQuaternion { get }
  func multiplyByInverseOf(attitude: CMAttitude)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct CMMagneticFieldCalibrationAccuracy : RawRepresentable, Equatable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var CMMagneticFieldCalibrationAccuracyUncalibrated: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyLow: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyMedium: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyHigh: CMMagneticFieldCalibrationAccuracy { get }
struct CMCalibratedMagneticField {
  var field: CMMagneticField
  var accuracy: CMMagneticFieldCalibrationAccuracy
  init()
  init(field: CMMagneticField, accuracy: CMMagneticFieldCalibrationAccuracy)
}
class CMDeviceMotion : CMLogItem {
  var attitude: CMAttitude { get }
  var rotationRate: CMRotationRate { get }
  var gravity: CMAcceleration { get }
  var userAcceleration: CMAcceleration { get }
  var magneticField: CMCalibratedMagneticField { get }
  init()
  init?(coder aDecoder: Coder)
}
struct CMError : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CMErrorNULL: CMError { get }
var CMErrorDeviceRequiresMovement: CMError { get }
var CMErrorTrueNorthNotAvailable: CMError { get }
var CMErrorUnknown: CMError { get }
var CMErrorMotionActivityNotAvailable: CMError { get }
var CMErrorMotionActivityNotAuthorized: CMError { get }
var CMErrorMotionActivityNotEntitled: CMError { get }
var CMErrorInvalidParameter: CMError { get }
var CMErrorInvalidAction: CMError { get }
var CMErrorNotAvailable: CMError { get }
var CMErrorNotEntitled: CMError { get }
var CMErrorNotAuthorized: CMError { get }
let CMErrorDomain: String
struct CMRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
class CMGyroData : CMLogItem {
  var rotationRate: CMRotationRate { get }
  init()
  init?(coder aDecoder: Coder)
}
class CMLogItem : Object, SecureCoding, Copying {
  var timestamp: TimeInterval { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
struct CMMagneticField {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
class CMMagnetometerData : CMLogItem {
  var magneticField: CMMagneticField { get }
  init()
  init?(coder aDecoder: Coder)
}
enum CMMotionActivityConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
class CMMotionActivity : CMLogItem {
  var confidence: CMMotionActivityConfidence { get }
  var startDate: Date { get }
  var unknown: Bool { get }
  var stationary: Bool { get }
  var walking: Bool { get }
  var running: Bool { get }
  var automotive: Bool { get }
  var cycling: Bool { get }
  init()
  init?(coder aDecoder: Coder)
}
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, Error?) -> Void
class CMMotionActivityManager : Object {
  class func isActivityAvailable() -> Bool
  func queryActivityStartingFrom(start: Date, to end: Date, to queue: OperationQueue, withHandler handler: CMMotionActivityQueryHandler)
  func startActivityUpdatesTo(queue: OperationQueue, withHandler handler: CMMotionActivityHandler)
  func stopActivityUpdates()
  init()
}
typealias CMAccelerometerHandler = (CMAccelerometerData?, Error?) -> Void
typealias CMGyroHandler = (CMGyroData?, Error?) -> Void
typealias CMDeviceMotionHandler = (CMDeviceMotion?, Error?) -> Void
typealias CMMagnetometerHandler = (CMMagnetometerData?, Error?) -> Void
class CMMotionManager : Object {
  var accelerometerUpdateInterval: TimeInterval
  var isAccelerometerAvailable: Bool { get }
  var isAccelerometerActive: Bool { get }
  var accelerometerData: CMAccelerometerData? { get }
  func startAccelerometerUpdates()
  func startAccelerometerUpdatesTo(queue: OperationQueue, withHandler handler: CMAccelerometerHandler)
  func stopAccelerometerUpdates()
  var gyroUpdateInterval: TimeInterval
  var isGyroAvailable: Bool { get }
  var isGyroActive: Bool { get }
  var gyroData: CMGyroData? { get }
  func startGyroUpdates()
  func startGyroUpdatesTo(queue: OperationQueue, withHandler handler: CMGyroHandler)
  func stopGyroUpdates()
  var magnetometerUpdateInterval: TimeInterval
  var isMagnetometerAvailable: Bool { get }
  var isMagnetometerActive: Bool { get }
  var magnetometerData: CMMagnetometerData? { get }
  func startMagnetometerUpdates()
  func startMagnetometerUpdatesTo(queue: OperationQueue, withHandler handler: CMMagnetometerHandler)
  func stopMagnetometerUpdates()
  var deviceMotionUpdateInterval: TimeInterval
  class func availableAttitudeReferenceFrames() -> CMAttitudeReferenceFrame
  var attitudeReferenceFrame: CMAttitudeReferenceFrame { get }
  var isDeviceMotionAvailable: Bool { get }
  var isDeviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdatesTo(queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  func startDeviceMotionUpdatesUsing(referenceFrame: CMAttitudeReferenceFrame)
  func startDeviceMotionUpdatesUsing(referenceFrame: CMAttitudeReferenceFrame, to queue: OperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  var showsDeviceMovementDisplay: Bool
  init()
}
class CMPedometerData : Object, SecureCoding, Copying {
  var startDate: Date { get }
  var endDate: Date { get }
  var numberOfSteps: Number { get }
  var distance: Number? { get }
  var floorsAscended: Number? { get }
  var floorsDescended: Number? { get }
  var currentPace: Number? { get }
  var currentCadence: Number? { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
typealias CMPedometerHandler = (CMPedometerData?, Error?) -> Void
class CMPedometer : Object {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  class func isPaceAvailable() -> Bool
  class func isCadenceAvailable() -> Bool
  func queryPedometerDataFrom(start: Date, to end: Date, withHandler handler: CMPedometerHandler)
  func startUpdatesFrom(start: Date, withHandler handler: CMPedometerHandler)
  func stopUpdates()
  init()
}
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: Date { get }
  init()
  init?(coder aDecoder: Coder)
}
class CMSensorDataList : Object, FastEnumeration {
  init()
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class CMSensorRecorder : Object {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataSince(identifier: UInt64) -> CMSensorDataList?
  func accelerometerDataFrom(fromDate: Date, to toDate: Date) -> CMSensorDataList?
  func recordAccelerometerFor(duration: TimeInterval)
  init()
}
typealias CMStepQueryHandler = (Int, Error?) -> Void
typealias CMStepUpdateHandler = (Int, Date, Error?) -> Void
class CMStepCounter : Object {
  class func isStepCountingAvailable() -> Bool
  func queryStepCountStartingFrom(start: Date, to end: Date, to queue: OperationQueue, withHandler handler: CMStepQueryHandler)
  func startStepCountingUpdatesTo(queue: OperationQueue, updateOn stepCounts: Int, withHandler handler: CMStepUpdateHandler)
  func stopStepCountingUpdates()
  init()
}
