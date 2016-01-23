
class PKPushCredentials : Object {
  var type: String! { get }
  @NSCopying var token: Data! { get }
  init()
}
class PKPushPayload : Object {
  var type: String! { get }
  var dictionaryPayload: [Object : AnyObject]! { get }
  init()
}
let PKPushTypeVoIP: String
let PKPushTypeComplication: String
class PKPushRegistry : Object {
  weak var delegate: @sil_weak PKPushRegistryDelegate!
  var desiredPushTypes: Set<Object>!
  func pushTokenForType(type: String!) -> Data!
  init!(queue: dispatch_queue_t!)
  init()
}
protocol PKPushRegistryDelegate : ObjectProtocol {
  func pushRegistry(registry: PKPushRegistry!, didUpdatePushCredentials credentials: PKPushCredentials!, forType type: String!)
  func pushRegistry(registry: PKPushRegistry!, didReceiveIncomingPushWith payload: PKPushPayload!, forType type: String!)
  optional func pushRegistry(registry: PKPushRegistry!, didInvalidatePushTokenForType type: String!)
}
