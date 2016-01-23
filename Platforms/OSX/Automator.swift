
enum AMLogLevel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Debug
  case Info
  case Warn
  case Error
}
class AMAction : Object {
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOf fileURL: URL) throws
  var name: String { get }
  var ignoresInput: Bool { get }
  var selectedInputType: String?
  var selectedOutputType: String?
  var progressValue: CGFloat
  func runWithInput(input: AnyObject?) throws -> AnyObject
  func runAsynchronouslyWithInput(input: AnyObject?)
  func willFinishRunning()
  func finishRunningWithError(error: Error?)
  var output: AnyObject?
  func stop()
  func reset()
  func writeTo(dictionary: MutableDictionary)
  func opened()
  func activated()
  func closed()
  func updateParameters()
  func parametersUpdated()
  var isStopped: Bool { get }
  init()
}
class AMAppleScriptAction : AMBundleAction {
  var script: OSAScript
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOf fileURL: URL) throws
  init()
  init?(coder aDecoder: Coder)
}
class AMBundleAction : AMAction, Coding, Copying {
  func awakeFromBundle()
  var hasView: Bool { get }
  var view: NSView? { get }
  var bundle: Bundle { get }
  var parameters: MutableDictionary?
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOf fileURL: URL) throws
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AMShellScriptAction : AMBundleAction {
  var remapLineEndings: Bool { get }
  var inputFieldSeparator: String { get }
  var outputFieldSeparator: String { get }
  init?(definition dict: [String : AnyObject], fromArchive archived: Bool)
  init(contentsOf fileURL: URL) throws
  init()
  init?(coder aDecoder: Coder)
}
class AMWorkflow : Object, Copying {
  class func runAt(fileURL: URL, withInput input: AnyObject?) throws -> AnyObject
  init()
  convenience init(contentsOf fileURL: URL) throws
  func writeTo(fileURL: URL) throws
  func setValue(value: AnyObject?, forVariableWithName variableName: String) -> Bool
  func valueForVariableWithName(variableName: String) -> AnyObject
  func addAction(action: AMAction)
  func removeAction(action: AMAction)
  func insertAction(action: AMAction, at index: Int)
  func moveActionAt(startIndex: Int, to endIndex: Int)
  @NSCopying var fileURL: URL? { get }
  var actions: [AMAction] { get }
  var input: AnyObject?
  var output: AnyObject? { get }
  func copy(zone zone: Zone = nil) -> AnyObject
}
class AMWorkflowController : NSController {
  var workflow: AMWorkflow?
  var workflowView: AMWorkflowView?
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  var canRun: Bool { get }
  var isRunning: Bool { get }
  @IBAction func run(sender: AnyObject)
  @IBAction func stop(sender: AnyObject)
  var isPaused: Bool { get }
  @IBAction func pause(sender: AnyObject)
  @IBAction func step(sender: AnyObject)
  @IBAction func reset(sender: AnyObject)
  init()
  init?(coder: Coder)
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
extension Object {
  class func workflowControllerWillRun(controller: AMWorkflowController)
  func workflowControllerWillRun(controller: AMWorkflowController)
  class func workflowControllerWillStop(controller: AMWorkflowController)
  func workflowControllerWillStop(controller: AMWorkflowController)
  class func workflowControllerDidRun(controller: AMWorkflowController)
  func workflowControllerDidRun(controller: AMWorkflowController)
  class func workflowControllerDidStop(controller: AMWorkflowController)
  func workflowControllerDidStop(controller: AMWorkflowController)
  class func workflowController(controller: AMWorkflowController, willRun action: AMAction)
  func workflowController(controller: AMWorkflowController, willRun action: AMAction)
  class func workflowController(controller: AMWorkflowController, didRun action: AMAction)
  func workflowController(controller: AMWorkflowController, didRun action: AMAction)
  class func workflowController(controller: AMWorkflowController, didError error: Error)
  func workflowController(controller: AMWorkflowController, didError error: Error)
}
class AMWorkflowView : NSView {
  var isEditable: Bool
  var workflowController: AMWorkflowController?
  init(frame frameRect: Rect)
  init?(coder: Coder)
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
