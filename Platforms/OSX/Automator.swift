
enum AMLogLevel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Debug
  case Info
  case Warn
  case Error
}
class AMAction : NSObject {
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOfURL fileURL: NSURL) throws
  var name: String { get }
  var ignoresInput: Bool { get }
  var selectedInputType: String?
  var selectedOutputType: String?
  var progressValue: CGFloat
  func runWithInput(input: AnyObject?) throws -> AnyObject
  func runAsynchronouslyWithInput(input: AnyObject?)
  func willFinishRunning()
  func finishRunningWithError(error: NSError?)
  var output: AnyObject?
  func stop()
  func reset()
  func writeToDictionary(dictionary: NSMutableDictionary)
  func opened()
  func activated()
  func closed()
  func updateParameters()
  func parametersUpdated()
  var stopped: Bool { get }
  init()
}
class AMAppleScriptAction : AMBundleAction {
  var script: OSAScript
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOfURL fileURL: NSURL) throws
  init()
  init?(coder aDecoder: NSCoder)
}
class AMBundleAction : AMAction, NSCoding, NSCopying {
  func awakeFromBundle()
  var hasView: Bool { get }
  var view: NSView? { get }
  var bundle: NSBundle { get }
  var parameters: NSMutableDictionary?
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOfURL fileURL: NSURL) throws
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class AMShellScriptAction : AMBundleAction {
  var remapLineEndings: Bool { get }
  var inputFieldSeparator: String { get }
  var outputFieldSeparator: String { get }
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOfURL fileURL: NSURL) throws
  init()
  init?(coder aDecoder: NSCoder)
}
class AMWorkflow : NSObject, NSCopying {
  class func runWorkflowAtURL(fileURL: NSURL, withInput input: AnyObject?) throws -> AnyObject
  init()
  convenience init(contentsOfURL fileURL: NSURL) throws
  func writeToURL(fileURL: NSURL) throws
  func setValue(value: AnyObject?, forVariableWithName variableName: String) -> Bool
  func valueForVariableWithName(variableName: String) -> AnyObject
  func addAction(action: AMAction)
  func removeAction(action: AMAction)
  func insertAction(action: AMAction, atIndex index: Int)
  func moveActionAtIndex(startIndex: Int, toIndex endIndex: Int)
  @NSCopying var fileURL: NSURL? { get }
  var actions: [AMAction] { get }
  var input: AnyObject?
  var output: AnyObject? { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
class AMWorkflowController : NSController {
  var workflow: AMWorkflow?
  var workflowView: AMWorkflowView?
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  var canRun: Bool { get }
  var running: Bool { get }
  @IBAction func run(sender: AnyObject)
  @IBAction func stop(sender: AnyObject)
  var paused: Bool { get }
  @IBAction func pause(sender: AnyObject)
  @IBAction func step(sender: AnyObject)
  @IBAction func reset(sender: AnyObject)
  init()
  init?(coder: NSCoder)
}
struct __AMWorkflowControllerFlags {
  var shouldRunLocally: Int
  var isRunningLocally: Int
  var shouldDisplayProgressInMenuBar: Int
  var reserved: Int
  init()
  init(shouldRunLocally: Int, isRunningLocally: Int, shouldDisplayProgressInMenuBar: Int, reserved: Int)
}
struct __AMWorkflowControllerDelegateRespondTo {
  var workflowControllerDidAddWorkflow: Int
  var workflowControllerDidRemoveWorkflow: Int
  var workflowControllerWillRun: Int
  var workflowControllerWillStep: Int
  var workflowControllerWillStop: Int
  var workflowControllerWillPause: Int
  var workflowControllerDidRun: Int
  var workflowControllerDidStep: Int
  var workflowControllerDidStop: Int
  var workflowControllerDidPause: Int
  var workflowControllerWillRunAction: Int
  var workflowControllerDidRunAction: Int
  var workflowControllerDidError: Int
  var workflowControllerDidLogMessageOfTypeFromAction: Int
  var workflowControllerWillRunConversion: Int
  var workflowControllerDidRunConversion: Int
  var workflowControllerDidResumeWithAction: Int
  var reserved: Int
  init()
  init(workflowControllerDidAddWorkflow: Int, workflowControllerDidRemoveWorkflow: Int, workflowControllerWillRun: Int, workflowControllerWillStep: Int, workflowControllerWillStop: Int, workflowControllerWillPause: Int, workflowControllerDidRun: Int, workflowControllerDidStep: Int, workflowControllerDidStop: Int, workflowControllerDidPause: Int, workflowControllerWillRunAction: Int, workflowControllerDidRunAction: Int, workflowControllerDidError: Int, workflowControllerDidLogMessageOfTypeFromAction: Int, workflowControllerWillRunConversion: Int, workflowControllerDidRunConversion: Int, workflowControllerDidResumeWithAction: Int, reserved: Int)
}
extension NSObject {
  class func workflowControllerWillRun(controller: AMWorkflowController)
  func workflowControllerWillRun(controller: AMWorkflowController)
  class func workflowControllerWillStop(controller: AMWorkflowController)
  func workflowControllerWillStop(controller: AMWorkflowController)
  class func workflowControllerDidRun(controller: AMWorkflowController)
  func workflowControllerDidRun(controller: AMWorkflowController)
  class func workflowControllerDidStop(controller: AMWorkflowController)
  func workflowControllerDidStop(controller: AMWorkflowController)
  class func workflowController(controller: AMWorkflowController, willRunAction action: AMAction)
  func workflowController(controller: AMWorkflowController, willRunAction action: AMAction)
  class func workflowController(controller: AMWorkflowController, didRunAction action: AMAction)
  func workflowController(controller: AMWorkflowController, didRunAction action: AMAction)
  class func workflowController(controller: AMWorkflowController, didError error: NSError)
  func workflowController(controller: AMWorkflowController, didError error: NSError)
}
class AMWorkflowView : NSView {
  var editable: Bool
  var workflowController: AMWorkflowController?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __AMWorkflowViewFlags {
  var ignoreSubviewFrameChanges: ObjCBool
  var editingEnabled: ObjCBool
  var reserved: Int
  init()
  init(ignoreSubviewFrameChanges: ObjCBool, editingEnabled: ObjCBool, reserved: Int)
}
var AMAutomatorErrorDomain: String { get }
var AMActionErrorKey: String { get }
var AMWorkflowNewerVersionError: Int { get }
var AMWorkflowPropertyListInvalidError: Int { get }
var AMWorkflowNewerActionVersionError: Int { get }
var AMWorkflowOlderActionVersionError: Int { get }
var AMUserCanceledError: Int { get }
var AMNoSuchActionError: Int { get }
var AMActionNotLoadableError: Int { get }
var AMActionArchitectureMismatchError: Int { get }
var AMActionRuntimeMismatchError: Int { get }
var AMActionLoadError: Int { get }
var AMActionLinkError: Int { get }
var AMActionApplicationResourceError: Int { get }
var AMActionApplicationVersionResourceError: Int { get }
var AMActionFileResourceError: Int { get }
var AMActionLicenseResourceError: Int { get }
var AMActionRequiredActionResourceError: Int { get }
var AMActionInitializationError: Int { get }
var AMActionExecutionError: Int { get }
var AMActionExceptionError: Int { get }
var AMActionPropertyListInvalidError: Int { get }
var AMActionInsufficientDataError: Int { get }
var AMActionIsDeprecatedError: Int { get }
var AMActionFailedGatekeeperError: Int { get }
var AMActionSignatureCorruptError: Int { get }
var AMActionQuarantineError: Int { get }
var AMActionXProtectError: Int { get }
var AMActionMalwareError: Int { get }
var AMConversionNotPossibleError: Int { get }
var AMConversionNoDataError: Int { get }
var AMConversionFailedError: Int { get }
