
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
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol RPPreviewViewControllerDelegate : ObjectProtocol {
  optional func previewControllerDidFinish(previewController: RPPreviewViewController)
  optional func previewController(previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
class RPScreenRecorder : Object {
  class func shared() -> RPScreenRecorder
  func startRecordingWithMicrophoneEnabled(microphoneEnabled: Bool, handler: ((Error?) -> Void)? = nil)
  func stopRecording(handler handler: ((RPPreviewViewController?, Error?) -> Void)? = nil)
  func discardRecordingWithHandler(handler: () -> Void)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var isRecording: Bool { get }
  var isMicrophoneEnabled: Bool { get }
  var isAvailable: Bool { get }
}
protocol RPScreenRecorderDelegate : ObjectProtocol {
  optional func screenRecorder(screenRecorder: RPScreenRecorder, didStopRecordingWithError error: Error, previewViewController: RPPreviewViewController?)
  optional func screenRecorderDidChangeAvailability(screenRecorder: RPScreenRecorder)
}
