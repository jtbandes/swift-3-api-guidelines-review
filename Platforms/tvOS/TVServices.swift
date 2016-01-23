
class TVContentIdentifier : Object, Copying, SecureCoding {
  var identifier: String { get }
  @NSCopying var container: TVContentIdentifier? { get }
  init?(identifier: String, container: TVContentIdentifier?)
  init?(coder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
class TVContentItem : Object, Copying, SecureCoding {
  @NSCopying var contentIdentifier: TVContentIdentifier { get }
  @NSCopying var imageURL: URL?
  var imageShape: TVContentItemImageShape
  var title: String?
  @NSCopying var lastAccessedDate: Date?
  @NSCopying var expirationDate: Date?
  @NSCopying var creationDate: Date?
  @NSCopying var badgeCount: Number?
  @NSCopying var duration: Number?
  @NSCopying var currentPosition: Number?
  @NSCopying var hasPlayedToEnd: Number?
  @NSCopying var playURL: URL?
  @NSCopying var displayURL: URL?
  var topShelfItems: [TVContentItem]?
  init?(contentIdentifier ident: TVContentIdentifier)
  init?(coder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}
enum TVContentItemImageShape : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Poster
  case Square
  case SDTV
  case HDTV
  case Wide
  case ExtraWide
}
enum TVTopShelfContentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Inset
  case Sectioned
}
protocol TVTopShelfProvider {
  var topShelfStyle: TVTopShelfContentStyle { get }
  var topShelfItems: [TVContentItem] { get }
}
let TVTopShelfItemsDidChangeNotification: String
func TVTopShelfImageSizeForShape(shape: TVContentItemImageShape, _ style: TVTopShelfContentStyle) -> CGSize
