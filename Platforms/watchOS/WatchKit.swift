
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
class WKAlertAction : NSObject {
  convenience init(title: String, style: WKAlertActionStyle, handler: WKAlertActionHandler)
}
class WKAudioFileAsset : NSObject {
  convenience init(URL: NSURL)
  convenience init(URL: NSURL, title: String?, albumTitle: String?, artist: String?)
  var URL: NSURL { get }
  var duration: NSTimeInterval { get }
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
class WKAudioFilePlayer : NSObject {
  convenience init(playerItem item: WKAudioFilePlayerItem)
  func play()
  func pause()
  func replaceCurrentItemWithPlayerItem(item: WKAudioFilePlayerItem?)
  var currentItem: WKAudioFilePlayerItem? { get }
  var status: WKAudioFilePlayerStatus { get }
  var error: NSError? { get }
  var rate: Float
  var currentTime: NSTimeInterval { get }
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
class WKAudioFilePlayerItem : NSObject {
   init(asset: WKAudioFileAsset)
  var asset: WKAudioFileAsset { get }
  var status: WKAudioFilePlayerItemStatus { get }
  var error: NSError? { get }
  var currentTime: NSTimeInterval { get }
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
class WKExtension : NSObject {
  class func sharedExtension() -> WKExtension
  func openSystemURL(url: NSURL)
  weak var delegate: @sil_weak WKExtensionDelegate?
  var rootInterfaceController: WKInterfaceController? { get }
  init()
}
protocol WKExtensionDelegate : NSObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleUserActivity(userInfo: [NSObject : AnyObject]?)
  optional func didReceiveRemoteNotification(userInfo: [NSObject : AnyObject])
  optional func didReceiveLocalNotification(notification: UILocalNotification)
}
class WKImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(image: UIImage)
  convenience init(imageData: NSData)
  convenience init(imageName: String)
  var image: UIImage? { get }
  var imageData: NSData? { get }
  var imageName: String? { get }
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class WKInterfaceButton : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
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
class WKInterfaceController : NSObject {
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
  func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
  func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  func handleUserActivity(userInfo: [NSObject : AnyObject]?)
  func setTitle(title: String?)
  func pushControllerWithName(name: String, context: AnyObject?)
  func popController()
  func popToRootController()
  class func reloadRootControllersWithNames(names: [String], contexts: [AnyObject]?)
  func becomeCurrentPage()
  func presentControllerWithName(name: String, context: AnyObject?)
  func presentControllerWithNames(names: [String], contexts: [AnyObject]?)
  func dismissController()
  func presentTextInputControllerWithSuggestions(suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestionsForLanguage(suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  func presentMediaPlayerControllerWithURL(URL: NSURL, options: [NSObject : AnyObject]?, completion: (Bool, NSTimeInterval, NSError?) -> Void)
  func dismissMediaPlayerController()
  func presentAudioRecorderControllerWithOutputURL(URL: NSURL, preset: WKAudioRecorderPreset, options: [NSObject : AnyObject]?, completion: (Bool, NSError?) -> Void)
  func dismissAudioRecorderController()
  func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  func presentAlertControllerWithTitle(title: String?, message: String?, preferredStyle: WKAlertControllerStyle, actions: [WKAlertAction])
  func presentAddPassesControllerWithPasses(passes: [AnyObject], completion: () -> Void)
  func dismissAddPassesController()
  func addMenuItemWithImage(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWithItemIcon(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [NSObject : AnyObject]?, webpageURL: NSURL?)
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
  func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forRemoteNotification remoteNotification: [NSObject : AnyObject], inputLanguage: String) -> [String]
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forLocalNotification localNotification: UILocalNotification, inputLanguage: String) -> [String]
}
class WKInterfaceDate : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setTimeZone(timeZone: NSTimeZone?)
  func setCalendar(calendar: NSCalendar?)
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
class WKInterfaceDevice : NSObject {
  class func currentDevice() -> WKInterfaceDevice
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  var layoutDirection: WKInterfaceLayoutDirection { get }
  class func interfaceLayoutDirectionForSemanticContentAttribute(semanticContentAttribute: WKInterfaceSemanticContentAttribute) -> WKInterfaceLayoutDirection
  var systemVersion: String { get }
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  func playHaptic(type: WKHapticType)
  init()
}
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  func setContentInset(contentInset: UIEdgeInsets)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  func startAnimating()
  func startAnimatingWithImagesInRange(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  func stopAnimating()
}
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImagesInRange(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  func stopAnimating()
}
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: NSData?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  func startAnimating()
  func startAnimatingWithImagesInRange(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  func stopAnimating()
}
class WKInterfaceLabel : WKInterfaceObject {
  func setText(text: String?)
  func setTextColor(color: UIColor?)
  func setAttributedText(attributedText: NSAttributedString?)
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
  func setMovieURL(URL: NSURL)
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
class WKInterfaceObject : NSObject {
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
class WKAccessibilityImageRegion : NSObject {
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
class WKPickerItem : NSObject, NSSecureCoding {
  var title: String?
  var caption: String?
  @NSCopying var accessoryImage: WKImage?
  @NSCopying var contentImage: WKImage?
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setEnabled(enabled: Bool)
  func setOn(on: Bool)
  func setColor(color: UIColor?)
}
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAtIndex(index: Int) -> AnyObject?
  func insertRowsAtIndexes(rows: NSIndexSet, withRowType rowType: String)
  func removeRowsAtIndexes(rows: NSIndexSet)
  func scrollToRowAtIndex(index: Int)
}
class WKInterfaceTimer : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setDate(date: NSDate)
  func start()
  func stop()
}
