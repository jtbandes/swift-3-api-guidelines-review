
class AVInterstitialTimeRange : Object, Copying, SecureCoding {
  init(timeRange: CMTimeRange)
  var timeRange: CMTimeRange { get }
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class AVNavigationMarkersGroup : Object {
  init(title: String?, timedNavigationMarkers navigationMarkers: [AVTimedMetadataGroup])
  init(title: String?, dateRangeNavigationMarkers navigationMarkers: [AVDateRangeMetadataGroup])
  var title: String? { get }
  var timedNavigationMarkers: [AVTimedMetadataGroup]? { get }
  var dateRangeNavigationMarkers: [AVDateRangeMetadataGroup]? { get }
  convenience init()
}
extension AVPlayerItem {
  var navigationMarkerGroups: [AVNavigationMarkersGroup]
  var externalMetadata: [AVMetadataItem]
  var interstitialTimeRanges: [AVInterstitialTimeRange]
}
extension AVPlayerItem {
}
class AVPlayerViewController : UIViewController {
  var player: AVPlayer?
  var showsPlaybackControls: Bool
  var requiresLinearPlayback: Bool
  var videoGravity: String
  var isReadyForDisplay: Bool { get }
  var contentOverlayView: UIView? { get }
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension AVPlayerViewController {
  var allowedSubtitleOptionLanguages: [String]?
  var requiresFullSubtitles: Bool
}
protocol AVPlayerViewControllerDelegate : ObjectProtocol {
  optional func playerViewController(playerViewController: AVPlayerViewController, willPresent interstitial: AVInterstitialTimeRange)
  optional func playerViewController(playerViewController: AVPlayerViewController, didPresent interstitial: AVInterstitialTimeRange)
  optional func playerViewController(playerViewController: AVPlayerViewController, willResumePlaybackAfterUserNavigatedFrom oldTime: CMTime, to targetTime: CMTime)
  optional func playerViewController(playerViewController: AVPlayerViewController, didSelect mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
}
