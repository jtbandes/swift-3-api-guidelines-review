
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
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  var customViewPersistentData: [String : AnyObject]?
}
class AUPannerView : NSView {
  var audioUnit: AudioUnit { get }
   init(audioUnit au: AudioUnit)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class AUViewController : NSViewController, NSExtensionRequestHandling {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(completionHandler: (NSViewController?) -> Void)
}
class CABTLEMIDIWindowController : NSWindowController {
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
class CAInterDeviceAudioViewController : NSViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
class CANetworkBrowserWindowController : NSWindowController {
  class func isAVBSupported() -> Bool
  init()
  convenience init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
}
