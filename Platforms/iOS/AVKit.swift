
let AVKitErrorDomain: String
enum AVKitError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case PictureInPictureStartFailed
}
class AVPictureInPictureController : NSObject {
  class func isPictureInPictureSupported() -> Bool
  class func pictureInPictureButtonStartImageCompatibleWithTraitCollection(traitCollection: UITraitCollection?) -> UIImage
  class func pictureInPictureButtonStopImageCompatibleWithTraitCollection(traitCollection: UITraitCollection?) -> UIImage
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var pictureInPicturePossible: Bool { get }
  var pictureInPictureActive: Bool { get }
  var pictureInPictureSuspended: Bool { get }
  convenience init()
}
protocol AVPictureInPictureControllerDelegate : NSObjectProtocol {
  optional func pictureInPictureControllerWillStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureControllerDidStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: NSError)
  optional func pictureInPictureControllerWillStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureControllerDidStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
class AVPlayerViewController : UIViewController {
  var showsPlaybackControls: Bool
  var videoGravity: String
  var readyForDisplay: Bool { get }
  var videoBounds: CGRect { get }
  var contentOverlayView: UIView? { get }
  var allowsPictureInPicturePlayback: Bool
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  optional func playerViewControllerWillStartPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewControllerDidStartPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewController(playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: NSError)
  optional func playerViewControllerWillStopPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewControllerDidStopPictureInPicture(playerViewController: AVPlayerViewController)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(playerViewController: AVPlayerViewController) -> Bool
  optional func playerViewController(playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
