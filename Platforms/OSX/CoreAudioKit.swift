
protocol AUCustomViewPersistentData {
  var customViewPersistentData: [String : AnyObject]? { get set }
}
struct AUGenericViewDisplayFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ViewTitleDisplayFlag: AUGenericViewDisplayFlags { get }
  static var ViewPropertiesDisplayFlag: AUGenericViewDisplayFlags { get }
  static var ViewParametersDisplayFlag: AUGenericViewDisplayFlags { get }
}
class AUGenericView : NSView, AUCustomViewPersistentData {
  var audioUnit: AudioUnit { get }
  var showsExpertParameters: Bool
  init(audioUnit au: AudioUnit)
  init(audioUnit inAudioUnit: AudioUnit, displayFlags inFlags: AUGenericViewDisplayFlags)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  var customViewPersistentData: [String : AnyObject]?
}
class AUPannerView : NSView {
  var audioUnit: AudioUnit { get }
   init(audioUnit au: AudioUnit)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class AUViewController : NSViewController, ExtensionRequestHandling {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(completionHandler: (NSViewController?) -> Void)
}
class CABTLEMIDIWindowController : NSWindowController {
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
class CAInterDeviceAudioViewController : NSViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
class CANetworkBrowserWindowController : NSWindowController {
  class func isAVBSupported() -> Bool
  init()
  convenience init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
}
