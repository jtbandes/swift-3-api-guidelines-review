
let AVKitErrorDomain: String
enum AVKitError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case PictureInPictureStartFailed
}
class AVPictureInPictureController : Object {
  class func isPictureInPictureSupported() -> Bool
  class func pictureInPictureButtonStartImageCompatibleWith(traitCollection: UITraitCollection?) -> UIImage
  class func pictureInPictureButtonStopImageCompatibleWith(traitCollection: UITraitCollection?) -> UIImage
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var isPictureInPicturePossible: Bool { get }
  var isPictureInPictureActive: Bool { get }
  var isPictureInPictureSuspended: Bool { get }
  convenience init()
}
protocol AVPictureInPictureControllerDelegate : ObjectProtocol {
  optional func pictureInPictureControllerWillStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureControllerDidStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: Error)
  optional func pictureInPictureControllerWillStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureControllerDidStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
class AVPlayerViewController : UIViewController {
  var showsPlaybackControls: Bool
  var videoGravity: String
  var isReadyForDisplay: Bool { get }
  var videoBounds: CGRect { get }
  var contentOverlayView: UIView? { get }
  var allowsPictureInPicturePlayback: Bool
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol AVPlayerViewControllerDelegate : ObjectProtocol {
  optional func playerViewControllerWillStartPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewControllerDidStartPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewController(playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: Error)
  optional func playerViewControllerWillStopPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewControllerDidStopPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(playerViewController: AVPlayerViewController) -> Bool
  optional func playerViewController(playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
