
class ASIdentifierManager : NSObject {
  class func sharedManager() -> ASIdentifierManager!
  var advertisingIdentifier: NSUUID! { get }
  var advertisingTrackingEnabled: Bool { get }
  init()
}
