
class CBIdentity : NSObject, NSCoding, NSCopying {
   init?(name: String, authority: CBIdentityAuthority)
   init?(uniqueIdentifier uuid: NSUUID, authority: CBIdentityAuthority)
   init?(UUIDString uuid: String, authority: CBIdentityAuthority)
   init?(persistentReference data: NSData)
  var authority: CBIdentityAuthority { get }
  var uniqueIdentifier: NSUUID { get }
  var UUIDString: String { get }
  var fullName: String { get }
  var posixName: String { get }
  var aliases: [String] { get }
  var emailAddress: String? { get }
  var image: NSImage? { get }
  var persistentReference: NSData? { get }
  var hidden: Bool { get }
  func isMemberOfGroup(group: CBGroupIdentity) -> Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class CBUserIdentity : CBIdentity, NSCoding, NSCopying {
   init?(posixUID uid: uid_t, authority: CBIdentityAuthority)
  var posixUID: uid_t { get }
  var certificate: SecCertificate? { get }
  var enabled: Bool { get }
  func authenticateWithPassword(password: String) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
class CBGroupIdentity : CBIdentity {
   init?(posixGID gid: gid_t, authority: CBIdentityAuthority)
  var posixGID: gid_t { get }
  var memberIdentities: [CBIdentity] { get }
  init()
  init?(coder aDecoder: NSCoder)
}
class CBIdentityAuthority : NSObject {
  class func localIdentityAuthority() -> CBIdentityAuthority
  class func managedIdentityAuthority() -> CBIdentityAuthority
  class func defaultIdentityAuthority() -> CBIdentityAuthority
  var localizedName: String { get }
  init()
}
class CBIdentityPicker : NSObject {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  func runModalForWindow(window: NSWindow, modalDelegate delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalForWindow(window: NSWindow, completionHandler: ((NSModalResponse) -> Void)?)
  var identities: [CBIdentity] { get }
  init()
}
