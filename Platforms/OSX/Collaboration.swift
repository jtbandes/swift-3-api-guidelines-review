
class CBIdentity : Object, Coding, Copying {
   init?(name: String, authority: CBIdentityAuthority)
   init?(uniqueIdentifier uuid: UUID, authority: CBIdentityAuthority)
   init?(uuidString uuid: String, authority: CBIdentityAuthority)
   init?(persistentReference data: Data)
  var authority: CBIdentityAuthority { get }
  var uniqueIdentifier: UUID { get }
  var uuidString: String { get }
  var fullName: String { get }
  var posixName: String { get }
  var aliases: [String] { get }
  var emailAddress: String? { get }
  var image: NSImage? { get }
  var persistentReference: Data? { get }
  var isHidden: Bool { get }
  func isMemberOfGroup(group: CBGroupIdentity) -> Bool
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class CBUserIdentity : CBIdentity, Coding, Copying {
   init?(posixUID uid: uid_t, authority: CBIdentityAuthority)
  var posixUID: uid_t { get }
  var certificate: SecCertificate? { get }
  var isEnabled: Bool { get }
  func authenticateWithPassword(password: String) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
class CBGroupIdentity : CBIdentity {
   init?(posixGID gid: gid_t, authority: CBIdentityAuthority)
  var posixGID: gid_t { get }
  var memberIdentities: [CBIdentity] { get }
  init()
  init?(coder aDecoder: Coder)
}
class CBIdentityAuthority : Object {
  class func local() -> CBIdentityAuthority
  class func managed() -> CBIdentityAuthority
  class func defaultIdentityAuthority() -> CBIdentityAuthority
  var localizedName: String { get }
  init()
}
class CBIdentityPicker : Object {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  func runModalFor(window: NSWindow, modalDelegate delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalFor(window: NSWindow, completionHandler: ((NSModalResponse) -> Void)? = nil)
  var identities: [CBIdentity] { get }
  init()
}
