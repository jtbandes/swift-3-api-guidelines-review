
let WatchKitErrorDomain: String
enum WatchKitErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ApplicationDelegateWatchKitRequestReplyNotCalledError
  case InvalidArgumentError
  case MediaPlayerError
  case DownloadError
  case RecordingFailedError
}
extension WatchKitErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class WKInterfaceButton : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: AttributedString?)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: Data?)
  func setBackgroundImageNamed(imageName: String?)
  func setEnabled(enabled: Bool)
}
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
enum WKMenuItemIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Accept
  case Add
  case Block
  case Decline
  case Info
  case Maybe
  case More
  case Mute
  case Pause
  case Play
  case Repeat
  case Resume
  case Share
  case Shuffle
  case Speaker
  case Trash
}
enum WKTextInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case AllowEmoji
  case AllowAnimatedEmoji
}
class WKInterfaceController : Object {
  init()
  func awakeWithContext(context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  func table(table: WKInterfaceTable, didSelectRowAt rowIndex: Int)
  func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject])
  func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  func handleUserActivity(userInfo: [Object : AnyObject]?)
  func setTitle(title: String?)
  func pushWithName(name: String, context: AnyObject?)
  func pop()
  func popToRootController()
  class func reloadRootControllersWithNames(names: [String], contexts: [AnyObject]?)
  func becomeCurrentPage()
  func presentWithName(name: String, context: AnyObject?)
  func presentWithNames(names: [String], contexts: [AnyObject]?)
  func dismiss()
  func presentTextInputControllerWithSuggestions(suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestionsForLanguage(suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  func addMenuItemWith(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWith(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [Object : AnyObject]? = [:], webpageURL: URL?)
  func invalidateUserActivity()
  class func openParentApplication(userInfo: [Object : AnyObject], reply: (([Object : AnyObject], Error?) -> Void)? = nil) -> Bool
}
extension WKInterfaceController {
  class func reloadRootControllers(namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(namesAndContexts: [(name: String, context: AnyObject)])
}
class WKUserNotificationInterfaceController : WKInterfaceController {
  init()
  func didReceiveRemoteNotification(remoteNotification: [Object : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceive(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
}
class WKInterfaceDate : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setTimeZone(timeZone: TimeZone?)
  func setCalendar(calendar: Calendar?)
}
class WKInterfaceDevice : Object {
  class func current() -> WKInterfaceDevice
  func addCachedImage(image: UIImage, name: String) -> Bool
  func addCachedImageWith(imageData: Data, name: String) -> Bool
  func removeCachedImageWithName(name: String)
  func removeAllCachedImages()
  var cachedImages: [String : Number] { get }
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  var systemVersion: String { get }
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  init()
}
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: Data?)
  func setBackgroundImageNamed(imageName: String?)
  func startAnimating()
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  func stopAnimating()
}
protocol WKImageAnimatable : ObjectProtocol {
  func startAnimating()
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  func stopAnimating()
}
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: Data?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  func startAnimating()
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: TimeInterval, repeatCount: Int)
  func stopAnimating()
}
class WKInterfaceLabel : WKInterfaceObject {
  func setText(text: String?)
  func setTextColor(color: UIColor?)
  func setAttributedText(attributedText: AttributedString?)
}
enum WKInterfaceMapPinColor : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Red
  case Green
  case Purple
}
class WKInterfaceMap : WKInterfaceObject {
  func setVisibleMapRect(mapRect: MKMapRect)
  func setRegion(coordinateRegion: MKCoordinateRegion)
  func addAnnotation(location: CLLocationCoordinate2D, withImage image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withPinColor pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
class WKInterfaceObject : Object {
  func setHidden(hidden: Bool)
  func setAlpha(alpha: CGFloat)
  func setWidth(width: CGFloat)
  func setHeight(height: CGFloat)
  var interfaceProperty: String { get }
}
extension WKInterfaceObject {
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func setAccessibilityLabel(accessibilityLabel: String?)
  func setAccessibilityHint(accessibilityHint: String?)
  func setAccessibilityValue(accessibilityValue: String?)
  func setIsAccessibilityElement(isAccessibilityElement: Bool)
  func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  func setAccessibilityImageRegions(accessibilityImageRegions: [WKAccessibilityImageRegion])
}
class WKAccessibilityImageRegion : Object {
  var frame: CGRect
  var label: String
  init()
}
class WKInterfaceSeparator : WKInterfaceObject {
  func setColor(color: UIColor?)
}
class WKInterfaceSlider : WKInterfaceObject {
  func setEnabled(enabled: Bool)
  func setValue(value: Float)
  func setColor(color: UIColor?)
  func setNumberOfSteps(numberOfSteps: Int)
}
class WKInterfaceSwitch : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: AttributedString?)
  func setEnabled(enabled: Bool)
  func setOn(on: Bool)
  func setColor(color: UIColor?)
}
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAt(index: Int) -> AnyObject?
  func insertRowsAt(rows: IndexSet, withRowType rowType: String)
  func removeRowsAt(rows: IndexSet)
  func scrollToRowAt(index: Int)
}
class WKInterfaceTimer : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setDate(date: Date)
  func start()
  func stop()
}
