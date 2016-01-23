
class PKPushCredentials : NSObject {
  var type: String! { get }
  @NSCopying var token: NSData! { get }
  init()
}
class PKPushPayload : NSObject {
  var type: String! { get }
  var dictionaryPayload: [NSObject : AnyObject]! { get }
  init()
}
let PKPushTypeVoIP: String
let PKPushTypeComplication: String
class PKPushRegistry : NSObject {
  weak var delegate: @sil_weak PKPushRegistryDelegate!
  var desiredPushTypes: Set<NSObject>!
  func pushTokenForType(type: String!) -> NSData!
  init!(queue: dispatch_queue_t!)
  init()
}
protocol PKPushRegistryDelegate : NSObjectProtocol {
  func pushRegistry(registry: PKPushRegistry!, didUpdatePushCredentials credentials: PKPushCredentials!, forType type: String!)
  func pushRegistry(registry: PKPushRegistry!, didReceiveIncomingPushWithPayload payload: PKPushPayload!, forType type: String!)
  optional func pushRegistry(registry: PKPushRegistry!, didInvalidatePushTokenForType type: String!)
}
