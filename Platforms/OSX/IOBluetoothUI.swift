
class IOBluetoothDeviceSelectorController {
}
typealias IOBluetoothDeviceSelectorControllerRef = IOBluetoothDeviceSelectorController
class IOBluetoothPairingController {
}
typealias IOBluetoothPairingControllerRef = IOBluetoothPairingController
typealias IOBluetoothServiceBrowserControllerRef = IOBluetoothServiceBrowserController
class IOBluetoothServiceBrowserController {
}
typealias IOBluetoothServiceBrowserControllerOptions = UInt32
var kIOBluetoothServiceBrowserControllerOptionsNone: Int { get }
var kIOBluetoothServiceBrowserControllerOptionsAutoStartInquiry: Int { get }
var kIOBluetoothServiceBrowserControllerOptionsDisconnectWhenDone: Int { get }
var kIOBluetoothUISuccess: Int { get }
var kIOBluetoothUIUserCanceledErr: Int { get }
func IOBluetoothValidateHardwareWithDescription(cancelButtonTitle: CFString!, _ descriptionText: CFString!) -> IOReturn
func IOBluetoothGetPairingController() -> Unmanaged<IOBluetoothPairingController>!
func IOBluetoothGetDeviceSelectorController() -> Unmanaged<IOBluetoothDeviceSelectorController>!
class IOBluetoothDeviceSelectorController : NSWindowController {
  class func deviceSelector() -> IOBluetoothDeviceSelectorController!
  func runModal() -> Int32
  func beginSheetModalFor(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func getResults() -> [AnyObject]!
  func setOptions(options: IOBluetoothServiceBrowserControllerOptions)
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setHeader(headerText: String!)
  func getHeader() -> String!
  func setDescriptionText(descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(prompt: String!)
  func getPrompt() -> String!
  func setCancel(prompt: String!)
  func getCancel() -> String!
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
class IOBluetoothObjectPushUIController : NSWindowController {
  init!(objectPushWith inDevice: IOBluetoothDevice!, withFiles inFiles: [AnyObject]!, delegate inDelegate: AnyObject!)
  func runModal()
  func runPanel()
  func beginSheetModalFor(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func stop()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setIconImage(image: NSImage!)
  func getDevice() -> IOBluetoothDevice!
  func isTransferInProgress() -> Bool
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
class IOBluetoothPairingController : NSWindowController {
  func runModal() -> Int32
  func getResults() -> [AnyObject]!
  func setOptions(options: IOBluetoothServiceBrowserControllerOptions)
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setDescriptionText(descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(prompt: String!)
  func getPrompt() -> String!
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
struct BluetoothKeyboardReturnType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothKeyboardANSIReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardISOReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardJISReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardNoReturn: BluetoothKeyboardReturnType { get }
class IOBluetoothPasskeyDisplay : NSView {
  var usePasskeyNotificaitons: Bool
  var isIncomingRequest: Bool
  var passkey: String!
  var returnImage: NSImage!
  var returnHighlightImage: NSImage!
  @IBOutlet unowned(unsafe) var centeredView: @sil_unmanaged NSView!
  @IBOutlet unowned(unsafe) var backgroundImageConstraint: @sil_unmanaged NSLayoutConstraint!
  class func sharedDisplayView() -> IOBluetoothPasskeyDisplay!
  func setPasskey(inString: String!, forDevice device: IOBluetoothDevice!, usingSSP isSSP: Bool)
  func advancePasskeyIndicator()
  func retreatPasskeyIndicator()
  func resetPasskeyIndicator()
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class IOBluetoothAccessibilityIgnoredTextFieldCell : NSTextFieldCell {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
class IOBluetoothAccessibilityIgnoredImageCell : NSImageCell {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
class IOBluetoothServiceBrowserController : NSWindowController {
   init!(_ inOptions: IOBluetoothServiceBrowserControllerOptions)
  class func withServiceBrowserControllerRef(serviceBrowserControllerRef: IOBluetoothServiceBrowserController!) -> IOBluetoothServiceBrowserController!
  func getRef() -> Unmanaged<IOBluetoothServiceBrowserController>!
  func setOptions(inOptions: IOBluetoothServiceBrowserControllerOptions)
  func runModal() -> Int32
  func beginSheetModalFor(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func getResults() -> [AnyObject]!
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setDescriptionText(descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(prompt: String!)
  func getPrompt() -> String!
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
