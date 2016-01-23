
class AVInterstitialTimeRange : NSObject, NSCopying, NSSecureCoding {
  init(timeRange: CMTimeRange)
  var timeRange: CMTimeRange { get }
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class AVNavigationMarkersGroup : NSObject {
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
  var readyForDisplay: Bool { get }
  var contentOverlayView: UIView? { get }
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension AVPlayerViewController {
  var allowedSubtitleOptionLanguages: [String]?
  var requiresFullSubtitles: Bool
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  optional func playerViewController(playerViewController: AVPlayerViewController, willPresentInterstitialTimeRange interstitial: AVInterstitialTimeRange)
  optional func playerViewController(playerViewController: AVPlayerViewController, didPresentInterstitialTimeRange interstitial: AVInterstitialTimeRange)
  optional func playerViewController(playerViewController: AVPlayerViewController, willResumePlaybackAfterUserNavigatedFromTime oldTime: CMTime, toTime targetTime: CMTime)
  optional func playerViewController(playerViewController: AVPlayerViewController, didSelectMediaSelectionOption mediaSelectionOption: AVMediaSelectionOption?, inMediaSelectionGroup mediaSelectionGroup: AVMediaSelectionGroup)
}
