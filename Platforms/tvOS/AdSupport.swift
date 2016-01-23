
class ASIdentifierManager : Object {
  class func shared() -> ASIdentifierManager!
  var advertisingIdentifier: UUID! { get }
  var isAdvertisingTrackingEnabled: Bool { get }
  init()
}
