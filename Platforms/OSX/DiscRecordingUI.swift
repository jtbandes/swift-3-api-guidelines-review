
let DRBurnProgressPanelWillBeginNotification: String
let DRBurnProgressPanelDidFinishNotification: String
class DRBurnProgressPanel : NSPanel {
  func beginProgressSheetFor(burn: DRBurn!, layout: AnyObject!, modalFor docWindow: NSWindow!)
  func beginFor(burn: DRBurn!, layout: AnyObject!)
  func setDescription(description: String!)
  func description() -> String!
  func setVerboseProgressStatus(verbose: Bool)
  func verboseProgressStatus() -> Bool
  @IBAction func stopBurn(sender: AnyObject!)
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension Object {
  class func burnProgressPanelWillBegin(aNotification: Notification!)
  func burnProgressPanelWillBegin(aNotification: Notification!)
  class func burnProgressPanelDidFinish(aNotification: Notification!)
  func burnProgressPanelDidFinish(aNotification: Notification!)
  class func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
  func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
}
class DRBurnSession {
}
typealias DRBurnSessionRef = DRBurnSession
func DRBurnSessionGetTypeID() -> CFTypeID
func DRBurnSessionCreate() -> Unmanaged<DRBurnSession>!
func DRBurnSessionSetBurn(burnSession: DRBurnSession!, _ burn: DRBurn!)
func DRBurnSessionGetBurn(burnSession: DRBurnSession!) -> Unmanaged<DRBurn>!
var kDRBurnSessionOK: Int { get }
var kDRBurnSessionCancel: Int { get }
var kBurnSessionSetupDialogOptionsCurrentVersion: Int { get }
var kBurnSessionSetupDialogDefaultOptions: UInt32 { get }
var kBurnSessionSetupDialogForceClosedDiscs: UInt32 { get }
var kBurnSessionSetupDialogDontHandleReservations: UInt32 { get }
var kBurnSessionSetupDialogAllowTestBurns: UInt32 { get }
typealias DRBurnSessionSetupDialogOptionFlags = UInt32
struct DRBurnSessionSetupDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DRBurnSessionSetupDialogOptionFlags
  var defaultButtonTitle: Unmanaged<CFString>!
  init()
  init(version: UInt32, dialogOptionFlags: DRBurnSessionSetupDialogOptionFlags, defaultButtonTitle: Unmanaged<CFString>!)
}
var kDRBurnSessionSetupCallbacksCurrentVersion: Int { get }
typealias DRBurnSessionDeviceCheckProcPtr = @convention(c) (DRBurnSession!, DRDevice!) -> DarwinBoolean
typealias DRBurnSessionMediaCheckProcPtr = @convention(c) (DRBurnSession!, DRDevice!, UnsafeMutablePointer<Unmanaged<CFString>?>) -> DarwinBoolean
typealias DRBurnSessionDeviceSelectionNotificationProcPtr = @convention(c) (DRBurnSession!, DRDevice!) -> Void
struct DRBurnSessionSetupCallbacks {
  var version: UInt32
  var deviceShouldBeTarget: DRBurnSessionDeviceCheckProcPtr!
  var containsSuitableMedia: DRBurnSessionMediaCheckProcPtr!
  var deviceSelectionChanged: DRBurnSessionDeviceSelectionNotificationProcPtr!
  init()
  init(version: UInt32, deviceShouldBeTarget: DRBurnSessionDeviceCheckProcPtr!, containsSuitableMedia: DRBurnSessionMediaCheckProcPtr!, deviceSelectionChanged: DRBurnSessionDeviceSelectionNotificationProcPtr!)
}
func DRBurnSessionSetupDialog(burnSession: DRBurnSession!, _ options: UnsafeMutablePointer<DRBurnSessionSetupDialogOptions>, _ setupCallbacks: UnsafeMutablePointer<DRBurnSessionSetupCallbacks>) -> Int8
var kDRBurnProgressSetupCallbacksCurrentVersion: Int { get }
typealias DRBurnSessionProgressBeginNotificationProcPtr = @convention(c) (DRBurnSession!) -> Void
typealias DRBurnSessionProgressFinishNotificationProcPtr = @convention(c) (DRBurnSession!) -> Void
typealias DRBurnSessionBurnCompleteProcPtr = @convention(c) (DRBurnSession!, DRBurn!) -> DarwinBoolean
struct DRBurnSessionProgressCallbacks {
  var version: UInt32
  var progressWillBegin: DRBurnSessionProgressBeginNotificationProcPtr!
  var progressDidFinish: DRBurnSessionProgressFinishNotificationProcPtr!
  var burnDidFinish: DRBurnSessionBurnCompleteProcPtr!
  init()
  init(version: UInt32, progressWillBegin: DRBurnSessionProgressBeginNotificationProcPtr!, progressDidFinish: DRBurnSessionProgressFinishNotificationProcPtr!, burnDidFinish: DRBurnSessionBurnCompleteProcPtr!)
}
var kBurnSessionProgressDialogOptionsCurrentVersion: Int { get }
var kBurnSessionProgressDialogDefaultOptions: Int { get }
var kBurnSessionProgressDialogDisplayVerboseProgress: Int { get }
typealias DRBurnSessionProgressDialogOptionFlags = UInt32
struct DRBurnSessionProgressDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DRBurnSessionProgressDialogOptionFlags
  var description: Unmanaged<CFString>!
  init()
  init(version: UInt32, dialogOptionFlags: DRBurnSessionProgressDialogOptionFlags, description: Unmanaged<CFString>!)
}
func DRBurnSessionBeginProgressDialog(burnSession: DRBurnSession!, _ layout: AnyObject!, _ options: UnsafeMutablePointer<DRBurnSessionProgressDialogOptions>, _ progressCallbacks: UnsafeMutablePointer<DRBurnSessionProgressCallbacks>)
class DRBurnSetupPanel : DRSetupPanel {
  func setDefaultButtonTitle(title: String!)
  func setCanSelectTestBurn(flag: Bool)
  func setCanSelectAppendableMedia(flag: Bool)
  func burnObject() -> DRBurn!
  @IBAction func expand(sender: AnyObject!)
  @IBAction func burnSpeed(sender: AnyObject!)
  @IBAction func appendable(sender: AnyObject!)
  @IBAction func completionAction(sender: AnyObject!)
  @IBAction func testBurn(sender: AnyObject!)
  @IBAction func verifyBurn(sender: AnyObject!)
  init!(nibName: String!)
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let DRBurnSetupPanelDefaultButtonDefaultTitle: String
let DREraseProgressPanelWillBeginNotification: String
let DREraseProgressPanelDidFinishNotification: String
class DREraseProgressPanel : NSPanel {
  func beginProgressSheetFor(erase: DRErase!, modalFor docWindow: NSWindow!)
  func beginFor(erase: DRErase!)
  func setDescription(description: String!)
  func description() -> String!
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension Object {
  class func eraseProgressPanelWillBegin(aNotification: Notification!)
  func eraseProgressPanelWillBegin(aNotification: Notification!)
  class func eraseProgressPanelDidFinish(aNotification: Notification!)
  func eraseProgressPanelDidFinish(aNotification: Notification!)
  class func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
  func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
}
class DREraseSession {
}
typealias DREraseSessionRef = DREraseSession
func DREraseSessionGetTypeID() -> CFTypeID
func DREraseSessionCreate() -> Unmanaged<DREraseSession>!
func DREraseSessionSetErase(eraseSession: DREraseSession!, _ erase: DRErase!)
func DREraseSessionGetErase(eraseSession: DREraseSession!) -> Unmanaged<DRErase>!
var kDREraseSessionOK: Int { get }
var kDREraseSessionCancel: Int { get }
var kEraseSessionSetupDialogOptionsCurrentVersion: Int { get }
var kEraseSessionSetupDialogDefaultOptions: Int { get }
var kEraseSessionSetupDialogDontHandleReservations: Int { get }
typealias DREraseSessionSetupDialogOptionFlags = UInt32
struct DREraseSessionSetupDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DREraseSessionSetupDialogOptionFlags
  init()
  init(version: UInt32, dialogOptionFlags: DREraseSessionSetupDialogOptionFlags)
}
var kDREraseSessionSetupCallbacksCurrentVersion: Int { get }
typealias DREraseSessionDeviceCheckProcPtr = @convention(c) (DREraseSession!, DRDevice!) -> DarwinBoolean
typealias DREraseSessionMediaCheckProcPtr = @convention(c) (DREraseSession!, DRDevice!, UnsafeMutablePointer<Unmanaged<CFString>?>) -> DarwinBoolean
typealias DREraseSessionDeviceSelectionNotificationProcPtr = @convention(c) (DREraseSession!, DRDevice!) -> Void
struct DREraseSessionSetupCallbacks {
  var version: UInt32
  var deviceShouldBeTarget: DREraseSessionDeviceCheckProcPtr!
  var containsSuitableMedia: DREraseSessionMediaCheckProcPtr!
  var deviceSelectionChanged: DREraseSessionDeviceSelectionNotificationProcPtr!
  init()
  init(version: UInt32, deviceShouldBeTarget: DREraseSessionDeviceCheckProcPtr!, containsSuitableMedia: DREraseSessionMediaCheckProcPtr!, deviceSelectionChanged: DREraseSessionDeviceSelectionNotificationProcPtr!)
}
func DREraseSessionSetupDialog(eraseSession: DREraseSession!, _ options: UnsafeMutablePointer<DREraseSessionSetupDialogOptions>, _ setupCallbacks: UnsafeMutablePointer<DREraseSessionSetupCallbacks>) -> Int8
var kDREraseProgressSetupCallbacksCurrentVersion: Int { get }
typealias DREraseSessionProgressBeginNotificationProcPtr = @convention(c) (DREraseSession!) -> Void
typealias DREraseSessionProgressFinishNotificationProcPtr = @convention(c) (DREraseSession!) -> Void
typealias DREraseSessionEraseCompleteProcPtr = @convention(c) (DREraseSession!, DRErase!) -> DarwinBoolean
struct DREraseSessionProgressCallbacks {
  var version: UInt32
  var progressWillBegin: DREraseSessionProgressBeginNotificationProcPtr!
  var progressDidFinish: DREraseSessionProgressFinishNotificationProcPtr!
  var eraseDidFinish: DREraseSessionEraseCompleteProcPtr!
  init()
  init(version: UInt32, progressWillBegin: DREraseSessionProgressBeginNotificationProcPtr!, progressDidFinish: DREraseSessionProgressFinishNotificationProcPtr!, eraseDidFinish: DREraseSessionEraseCompleteProcPtr!)
}
var kEraseSessionProgressDialogOptionsCurrentVersion: Int { get }
var kEraseSessionProgressDialogDefaultOptions: Int { get }
typealias DREraseSessionProgressDialogOptionFlags = UInt32
struct DREraseSessionProgressDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DREraseSessionProgressDialogOptionFlags
  var description: Unmanaged<CFString>!
  init()
  init(version: UInt32, dialogOptionFlags: DREraseSessionProgressDialogOptionFlags, description: Unmanaged<CFString>!)
}
func DREraseSessionBeginProgressDialog(eraseSession: DREraseSession!, _ options: UnsafeMutablePointer<DREraseSessionProgressDialogOptions>, _ progressCallbacks: UnsafeMutablePointer<DREraseSessionProgressCallbacks>)
class DREraseSetupPanel : DRSetupPanel {
  func eraseObject() -> DRErase!
  @IBAction func eraseType(sender: AnyObject!)
  init!(nibName: String!)
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
class DRSetupPanel : NSPanel {
  init!(nibName: String!)
  func run() -> Int
  func beginSetupSheetFor(owner: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @IBAction func ok(sender: AnyObject!)
  @IBAction func cancel(sender: AnyObject!)
  @IBAction func eject(sender: AnyObject!)
  @IBAction func open(sender: AnyObject!)
  @IBAction func close(sender: AnyObject!)
  func deviceSelectionChanged(device: DRDevice!)
  func mediaStateChanged(status: [Object : AnyObject]!) -> Bool
  func setupForDisplay()
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let DRSetupPanelDeviceSelectionChangedNotification: String
let DRSetupPanelSelectedDeviceKey: String
extension Object {
  class func setupPanel(aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  func setupPanel(aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  class func setupPanel(aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  func setupPanel(aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  class func setupPanelDeviceSelectionChanged(aNotification: Notification!)
  func setupPanelDeviceSelectionChanged(aNotification: Notification!)
  class func setupPanelShouldHandleMediaReservations(aPanel: DRSetupPanel!) -> Bool
  func setupPanelShouldHandleMediaReservations(aPanel: DRSetupPanel!) -> Bool
  class func setupPanel(aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func setupPanel(aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
}
let DRBurnIcon: String
let DREraseIcon: String
