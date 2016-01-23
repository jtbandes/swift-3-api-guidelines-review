
let GCControllerDidConnectNotification: String
let GCControllerDidDisconnectNotification: String
class GCEventViewController : UIViewController {
  var controllerUserInteractionEnabled: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
enum GCControllerPlayerIndex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case IndexUnset
  case Index1
  case Index2
  case Index3
  case Index4
}
class GCController : Object {
  var controllerPausedHandler: ((GCController) -> Void)?
  var handlerQueue: dispatch_queue_t
  var vendorName: String? { get }
  var isAttachedToDevice: Bool { get }
  var playerIndex: GCControllerPlayerIndex
  var gamepad: GCGamepad? { get }
  var microGamepad: GCMicroGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }
  var motion: GCMotion? { get }
  class func controllers() -> [GCController]
  class func startWirelessControllerDiscovery(completionHandler completionHandler: (() -> Void)? = nil)
  class func stopWirelessControllerDiscovery()
  init()
}
class GCControllerAxisInput : GCControllerElement {
  var valueChangedHandler: GCControllerAxisValueChangedHandler?
  var value: Float { get }
  init()
}
typealias GCControllerAxisValueChangedHandler = (GCControllerAxisInput, Float) -> Void
class GCControllerButtonInput : GCControllerElement {
  var valueChangedHandler: GCControllerButtonValueChangedHandler?
  var pressedChangedHandler: GCControllerButtonValueChangedHandler?
  var value: Float { get }
  var isPressed: Bool { get }
  init()
}
typealias GCControllerButtonValueChangedHandler = (GCControllerButtonInput, Float, Bool) -> Void
class GCControllerDirectionPad : GCControllerElement {
  var valueChangedHandler: GCControllerDirectionPadValueChangedHandler?
  var xAxis: GCControllerAxisInput { get }
  var yAxis: GCControllerAxisInput { get }
  var up: GCControllerButtonInput { get }
  var down: GCControllerButtonInput { get }
  var left: GCControllerButtonInput { get }
  var right: GCControllerButtonInput { get }
  init()
}
typealias GCControllerDirectionPadValueChangedHandler = (GCControllerDirectionPad, Float, Float) -> Void
class GCControllerElement : Object {
  weak var collection: @sil_weak GCControllerElement? { get }
  var isAnalog: Bool { get }
  init()
}
class GCExtendedGamepad : Object {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCExtendedGamepadValueChangedHandler?
  func saveSnapshot() -> GCExtendedGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }
  var leftThumbstick: GCControllerDirectionPad { get }
  var rightThumbstick: GCControllerDirectionPad { get }
  var leftShoulder: GCControllerButtonInput { get }
  var rightShoulder: GCControllerButtonInput { get }
  var leftTrigger: GCControllerButtonInput { get }
  var rightTrigger: GCControllerButtonInput { get }
  init()
}
typealias GCExtendedGamepadValueChangedHandler = (GCExtendedGamepad, GCControllerElement) -> Void
class GCExtendedGamepadSnapshot : GCExtendedGamepad {
  @NSCopying var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
  init()
}
struct GCExtendedGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  var leftThumbstickX: Float
  var leftThumbstickY: Float
  var rightThumbstickX: Float
  var rightThumbstickY: Float
  var leftTrigger: Float
  var rightTrigger: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float, leftThumbstickX: Float, leftThumbstickY: Float, rightThumbstickX: Float, rightThumbstickY: Float, leftTrigger: Float, rightTrigger: Float)
}
func GCExtendedGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCExtendedGamepadSnapShotDataV100>, _ data: Data?) -> Bool
func NSDataFromGCExtendedGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCExtendedGamepadSnapShotDataV100>) -> Data?
class GCGamepad : Object {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCGamepadValueChangedHandler?
  func saveSnapshot() -> GCGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }
  var leftShoulder: GCControllerButtonInput { get }
  var rightShoulder: GCControllerButtonInput { get }
  init()
}
typealias GCGamepadValueChangedHandler = (GCGamepad, GCControllerElement) -> Void
class GCGamepadSnapshot : GCGamepad {
  @NSCopying var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
  init()
}
struct GCGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float)
}
func GCGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>, _ data: Data?) -> Bool
func NSDataFromGCGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>) -> Data?
class GCMicroGamepad : Object {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMicroGamepadValueChangedHandler?
  func saveSnapshot() -> GCMicroGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var reportsAbsoluteDpadValues: Bool
  var allowsRotation: Bool
  init()
}
typealias GCMicroGamepadValueChangedHandler = (GCMicroGamepad, GCControllerElement) -> Void
class GCMicroGamepadSnapshot : GCMicroGamepad {
  @NSCopying var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
  init()
}
struct GCMicroGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonX: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonX: Float)
}
func GCMicroGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>, _ data: Data?) -> Bool
func NSDataFromGCMicroGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>) -> Data?
struct GCAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct GCRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct GCEulerAngles {
  var pitch: Double
  var yaw: Double
  var roll: Double
  init()
  init(pitch: Double, yaw: Double, roll: Double)
}
struct GCQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}
class GCMotion : Object {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMotionValueChangedHandler?
  var gravity: GCAcceleration { get }
  var userAcceleration: GCAcceleration { get }
  init()
}
typealias GCMotionValueChangedHandler = (GCMotion) -> Void
