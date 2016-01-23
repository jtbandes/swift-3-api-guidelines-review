
class TVApplicationControllerContext : NSObject, NSCopying {
  @NSCopying var javaScriptApplicationURL: NSURL
  var storageIdentifier: String?
  var launchOptions: [String : AnyObject]
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol TVApplicationControllerDelegate : NSObjectProtocol {
  optional func appController(appController: TVApplicationController, evaluateAppJavaScriptInContext jsContext: JSContext)
  optional func appController(appController: TVApplicationController, didFinishLaunchingWithOptions options: [String : AnyObject]?)
  optional func appController(appController: TVApplicationController, didFailWithError error: NSError)
  optional func appController(appController: TVApplicationController, didStopWithOptions options: [String : AnyObject]?)
}
class TVApplicationController : NSObject {
  init(context: TVApplicationControllerContext, window: UIWindow?, delegate: TVApplicationControllerDelegate?)
  var window: UIWindow? { get }
  var context: TVApplicationControllerContext { get }
  weak var delegate: @sil_weak TVApplicationControllerDelegate? { get }
  var navigationController: UINavigationController { get }
  func evaluateInJavaScriptContext(evaluation: (JSContext) -> Void, completion: ((Bool) -> Void)?)
  func stop()
}
enum TVColorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Plain
  case LinearGradientTopToBottom
  case LinearGradientLeftToRight
}
class TVColor : NSObject, NSCopying {
  var colorType: TVColorType { get }
  var color: UIColor? { get }
  var gradientColors: [UIColor]? { get }
  var gradientPoints: [NSNumber]? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class TVElementFactory : NSObject {
  class func registerViewElementClass(elementClass: AnyClass, forElementName elementName: String)
  init()
}
enum TVImageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Image
  case Fullscreen
  case Decoration
  case Hero
}
class TVImageElement : TVViewElement {
  var URL: NSURL? { get }
  var srcset: [String : NSURL]? { get }
  var imageType: TVImageType { get }
  init()
}
protocol TVInterfaceCreating : NSObjectProtocol {
  optional func viewForElement(element: TVViewElement, existingView: UIView?) -> UIView?
  optional func viewControllerForElement(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController?
  optional func URLForResource(resourceName: String) -> NSURL?
}
class TVInterfaceFactory : NSObject, TVInterfaceCreating {
  class func sharedInterfaceFactory() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
  init()
  func viewForElement(element: TVViewElement, existingView: UIView?) -> UIView?
  func viewControllerForElement(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController?
  func URLForResource(resourceName: String) -> NSURL?
}
let TVMLKitErrorDomain: String
enum TVMLKitError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case InternetUnavailable
  case FailedToLaunch
  case Last
}
enum TVViewElementStyleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Integer
  case Double
  case Point
  case String
  case Color
  case URL
  case Transform
  case EdgeInsets
}
class TVStyleFactory : NSObject {
  class func registerStyle(styleName: String, withType type: TVViewElementStyleType, inherited: Bool)
  init()
}
enum TVTextElementStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Title
  case Subtitle
  case Description
  case Decoration
}
class TVTextElement : TVViewElement {
  var attributedText: NSAttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func attributedStringWithFont(font: UIFont) -> NSAttributedString
  func attributedStringWithFont(font: UIFont, foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> NSAttributedString
  init()
}
enum TVElementEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Play
  case Select
  case HoldSelect
  case Highlight
  case Change
}
enum TVElementUpdateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Subtree
  case Children
  case `Self`
}
enum TVElementResettableProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UpdateType
  case AutoHighlightIdentifier
}
class TVViewElement : NSObject, NSCopying {
  var elementIdentifier: String { get }
  var elementName: String { get }
  weak var parentViewElement: @sil_weak TVViewElement? { get }
  var childViewElements: [TVViewElement]? { get }
  var attributes: [String : String]? { get }
  var style: TVViewElementStyle? { get }
  var autoHighlightIdentifier: String? { get }
  var disabled: Bool
  var updateType: TVElementUpdateType { get }
  func resetProperty(resettableProperty: TVElementResettableProperty)
  func dispatchEventOfType(type: TVElementEventType, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)?)
  func dispatchEventWithName(eventName: String, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)?)
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum TVElementAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Left
  case Center
  case Right
}
enum TVElementContentAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Top
  case Center
  case Bottom
}
enum TVElementPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Center
  case Top
  case Bottom
  case Left
  case Right
  case TopLeft
  case TopRight
  case BottomLeft
  case BottomRight
  case Header
  case Footer
}
class TVViewElementStyle : NSObject, NSCopying {
  func valueForStyleProperty(name: String) -> AnyObject?
  var backgroundColor: TVColor? { get }
  var color: TVColor? { get }
  var fontSize: CGFloat { get }
  var fontWeight: String? { get }
  var height: CGFloat { get }
  var margin: UIEdgeInsets { get }
  var maxHeight: CGFloat { get }
  var maxWidth: CGFloat { get }
  var minHeight: CGFloat { get }
  var minWidth: CGFloat { get }
  var padding: UIEdgeInsets { get }
  var textAlignment: NSTextAlignment { get }
  var width: CGFloat { get }
  var alignment: TVElementAlignment { get }
  var contentAlignment: TVElementContentAlignment { get }
  var highlightColor: TVColor? { get }
  var imageTreatmentName: String? { get }
  var interitemSpacing: CGFloat { get }
  var textHighlightStyle: String? { get }
  var textMinimumScaleFactor: CGFloat { get }
  var position: TVElementPosition { get }
  var ratingStyle: String? { get }
  var maxTextLines: Int { get }
  var textStyle: String? { get }
  var tintColor: TVColor? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
