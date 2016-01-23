
let RPRecordingErrorDomain: String
enum RPRecordingErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case UserDeclined
  case Disabled
  case FailedToStart
  case Failed
  case InsufficientStorage
  case Interrupted
  case ContentResize
}
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol RPPreviewViewControllerDelegate : NSObjectProtocol {
  optional func previewControllerDidFinish(previewController: RPPreviewViewController)
  optional func previewController(previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
class RPScreenRecorder : NSObject {
  class func sharedRecorder() -> RPScreenRecorder
  func startRecordingWithMicrophoneEnabled(microphoneEnabled: Bool, handler: ((NSError?) -> Void)?)
  func stopRecordingWithHandler(handler: ((RPPreviewViewController?, NSError?) -> Void)?)
  func discardRecordingWithHandler(handler: () -> Void)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var recording: Bool { get }
  var microphoneEnabled: Bool { get }
  var available: Bool { get }
}
protocol RPScreenRecorderDelegate : NSObjectProtocol {
  optional func screenRecorder(screenRecorder: RPScreenRecorder, didStopRecordingWithError error: NSError, previewViewController: RPPreviewViewController?)
  optional func screenRecorderDidChangeAvailability(screenRecorder: RPScreenRecorder)
}
