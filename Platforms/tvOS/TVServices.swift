
class TVContentIdentifier : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  @NSCopying var container: TVContentIdentifier? { get }
  init?(identifier: String, container: TVContentIdentifier?)
  init?(coder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
class TVContentItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contentIdentifier: TVContentIdentifier { get }
  @NSCopying var imageURL: NSURL?
  var imageShape: TVContentItemImageShape
  var title: String?
  @NSCopying var lastAccessedDate: NSDate?
  @NSCopying var expirationDate: NSDate?
  @NSCopying var creationDate: NSDate?
  @NSCopying var badgeCount: NSNumber?
  @NSCopying var duration: NSNumber?
  @NSCopying var currentPosition: NSNumber?
  @NSCopying var hasPlayedToEnd: NSNumber?
  @NSCopying var playURL: NSURL?
  @NSCopying var displayURL: NSURL?
  var topShelfItems: [TVContentItem]?
  init?(contentIdentifier ident: TVContentIdentifier)
  init?(coder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
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
