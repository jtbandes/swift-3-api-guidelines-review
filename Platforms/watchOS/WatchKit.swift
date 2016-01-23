
func WKAccessibilityIsVoiceOverRunning() -> Bool
let WKAccessibilityVoiceOverStatusChanged: String
enum WKAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
typealias WKAlertActionHandler = () -> Void
class WKAlertAction : Object {
  convenience init(title: String, style: WKAlertActionStyle, handler: WKAlertActionHandler)
}
class WKAudioFileAsset : Object {
  convenience init(url URL: URL)
  convenience init(url URL: URL, title: String?, albumTitle: String?, artist: String?)
  var url: URL { get }
  var duration: TimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
enum WKAudioFilePlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
class WKAudioFilePlayer : Object {
  convenience init(playerItem item: WKAudioFilePlayerItem)
  func play()
  func pause()
  func replaceCurrentItemWith(item: WKAudioFilePlayerItem?)
  var currentItem: WKAudioFilePlayerItem? { get }
  var status: WKAudioFilePlayerStatus { get }
  var error: Error? { get }
  var rate: Float
  var currentTime: TimeInterval { get }
}
class WKAudioFileQueuePlayer : WKAudioFilePlayer {
  convenience init(items: [WKAudioFilePlayerItem])
  func advanceToNextItem()
  func appendItem(item: WKAudioFilePlayerItem)
  func removeItem(item: WKAudioFilePlayerItem)
  func removeAllItems()
  var items: [WKAudioFilePlayerItem] { get }
  convenience init(playerItem item: WKAudioFilePlayerItem)
}
let WKAudioFilePlayerItemTimeJumpedNotification: String
let WKAudioFilePlayerItemDidPlayToEndTimeNotification: String
let WKAudioFilePlayerItemFailedToPlayToEndTimeNotification: String
enum WKAudioFilePlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
class WKAudioFilePlayerItem : Object {
   init(asset: WKAudioFileAsset)
  var asset: WKAudioFileAsset { get }
  var status: WKAudioFilePlayerItemStatus { get }
  var error: Error? { get }
  var currentTime: TimeInterval { get }
}
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
class WKExtension : Object {
  class func shared() -> WKExtension
  func openSystemURL(url: URL)
  weak var delegate: @sil_weak WKExtensionDelegate?
  var rootInterfaceController: WKInterfaceController? { get }
  init()
}
protocol WKExtensionDelegate : ObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject], withResponseInfo responseInfo: [Object : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification, withResponseInfo responseInfo: [Object : AnyObject])
  optional func handleUserActivity(userInfo: [Object : AnyObject]?)
  optional func didReceiveRemoteNotification(userInfo: [Object : AnyObject])
  optional func didReceive(notification: UILocalNotification)
}
class WKImage : Object, Copying, SecureCoding {
  convenience init(image: UIImage)
  convenience init(imageData: Data)
  convenience init(imageName: String)
  var image: UIImage? { get }
  var imageData: Data? { get }
  var imageName: String? { get }
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
enum WKAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alert
  case SideBySideButtonsAlert
  case ActionSheet
}
enum WKVideoGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ResizeAspect
  case ResizeAspectFill
  case Resize
}
enum WKAudioRecorderPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NarrowBandSpeech
  case WideBandSpeech
  case HighQualityAudio
}
class WKInterfaceController : Object {
  init()
  func awakeWithContext(context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  func didAppear()
  func willDisappear()
  func pickerDidFocus(picker: WKInterfacePicker)
  func pickerDidResignFocus(picker: WKInterfacePicker)
  func pickerDidSettle(picker: WKInterfacePicker)
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
  func presentMediaPlayerControllerWith(URL: URL, options: [Object : AnyObject]? = [:], completion: (Bool, TimeInterval, Error?) -> Void)
  func dismissMediaPlayerController()
  func presentAudioRecorderControllerWithOutputURL(URL: URL, preset: WKAudioRecorderPreset, options: [Object : AnyObject]? = [:], completion: (Bool, Error?) -> Void)
  func dismissAudioRecorderController()
  func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  func animateWithDuration(duration: TimeInterval, animations: () -> Void)
  func presentAlertWithTitle(title: String?, message: String?, preferredStyle: WKAlertControllerStyle, actions: [WKAlertAction])
  func presentAddPassesControllerWithPasses(passes: [AnyObject], completion: () -> Void)
  func dismissAddPassesController()
  func addMenuItemWith(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWith(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [Object : AnyObject]? = [:], webpageURL: URL?)
  func invalidateUserActivity()
  func beginGlanceUpdates()
  func endGlanceUpdates()
}
extension WKInterfaceController {
  class func reloadRootControllers(namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(namesAndContexts: [(name: String, context: AnyObject)])
}
let UIUserNotificationActionResponseTypedTextKey: String
let WKMediaPlayerControllerOptionsAutoplayKey: String
let WKMediaPlayerControllerOptionsStartTimeKey: String
let WKMediaPlayerControllerOptionsVideoGravityKey: String
let WKMediaPlayerControllerOptionsLoopsKey: String
let WKAudioRecorderControllerOptionsActionTitleKey: String
let WKAudioRecorderControllerOptionsAlwaysShowActionTitleKey: String
let WKAudioRecorderControllerOptionsAutorecordKey: String
let WKAudioRecorderControllerOptionsMaximumDurationKey: String
class WKUserNotificationInterfaceController : WKInterfaceController {
  init()
  func didReceiveRemoteNotification(remoteNotification: [Object : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceive(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forRemoteNotification remoteNotification: [Object : AnyObject], inputLanguage: String) -> [String]
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forLocalNotification localNotification: UILocalNotification, inputLanguage: String) -> [String]
}
class WKInterfaceDate : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setTimeZone(timeZone: TimeZone?)
  func setCalendar(calendar: Calendar?)
}
enum WKHapticType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Notification
  case DirectionUp
  case DirectionDown
  case Success
  case Failure
  case Retry
  case Start
  case Stop
  case Click
}
enum WKInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
enum WKInterfaceSemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
class WKInterfaceDevice : Object {
  class func current() -> WKInterfaceDevice
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  var layoutDirection: WKInterfaceLayoutDirection { get }
  class func interfaceLayoutDirectionFor(semanticContentAttribute: WKInterfaceSemanticContentAttribute) -> WKInterfaceLayoutDirection
  var systemVersion: String { get }
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  func play(type: WKHapticType)
  init()
}
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  func setContentInset(contentInset: UIEdgeInsets)
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
class WKInterfaceMovie : WKInterfaceObject {
  func setMovieURL(URL: URL)
  func setVideoGravity(videoGravity: WKVideoGravity)
  func setLoops(loops: Bool)
  func setPosterImage(posterImage: WKImage?)
}
enum WKInterfaceObjectHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
}
enum WKInterfaceObjectVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Top
  case Center
  case Bottom
}
class WKInterfaceObject : Object {
  func setHidden(hidden: Bool)
  func setAlpha(alpha: CGFloat)
  func setSemanticContentAttribute(semanticContentAttribute: WKInterfaceSemanticContentAttribute)
  func setHorizontalAlignment(horizontalAlignment: WKInterfaceObjectHorizontalAlignment)
  func setVerticalAlignment(verticalAlignment: WKInterfaceObjectVerticalAlignment)
  func setWidth(width: CGFloat)
  func setHeight(height: CGFloat)
  func setRelativeWidth(width: CGFloat, withAdjustment adjustment: CGFloat)
  func setRelativeHeight(height: CGFloat, withAdjustment adjustment: CGFloat)
  func sizeToFitWidth()
  func sizeToFitHeight()
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
class WKInterfacePicker : WKInterfaceObject {
  func focus()
  func resignFocus()
  func setSelectedItemIndex(itemIndex: Int)
  func setItems(items: [WKPickerItem]?)
  func setCoordinatedAnimations(coordinatedAnimations: [WKInterfaceObject]?)
  func setEnabled(enabled: Bool)
}
class WKPickerItem : Object, SecureCoding {
  var title: String?
  var caption: String?
  @NSCopying var accessoryImage: WKImage?
  @NSCopying var contentImage: WKImage?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
