
let ADErrorDomain: String
enum ADError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case InventoryUnavailable
  case ConfigurationError
  case BannerVisibleWithoutContent
  case ApplicationInactive
  case AdUnloaded
}
enum ADAdType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Banner
  case MediumRectangle
}
class ADBannerView : UIView {
  init!(adType type: ADAdType)
  var adType: ADAdType { get }
  weak var delegate: @sil_weak ADBannerViewDelegate!
  var bannerLoaded: Bool { get }
  var bannerViewActionInProgress: Bool { get }
  func cancelBannerViewAction()
  var advertisingSection: String!
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol ADBannerViewDelegate : NSObjectProtocol {
  optional func bannerViewWillLoadAd(banner: ADBannerView!)
  optional func bannerViewDidLoadAd(banner: ADBannerView!)
  optional func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!)
  optional func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool
  optional func bannerViewActionDidFinish(banner: ADBannerView!)
}
extension ADBannerView {
}
class ADClient : NSObject {
  class func sharedClient() -> ADClient!
  func determineAppInstallationAttributionWithCompletionHandler(completionHandler: ((Bool) -> Void)!)
  func lookupAdConversionDetails(completionHandler: ((NSDate!, NSDate!) -> Void)!)
  func requestAttributionDetailsWithBlock(completionHandler: (([NSObject : AnyObject]!, NSError!) -> Void)!)
  func addClientToSegments(segmentIdentifiers: [AnyObject]!, replaceExisting: Bool)
  init()
}
let ADClientErrorDomain: String
enum ADClientError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case LimitAdTracking
}
class ADInterstitialAd : NSObject {
  weak var delegate: @sil_weak ADInterstitialAdDelegate!
  var loaded: Bool { get }
  var actionInProgress: Bool { get }
  func cancelAction()
  func presentInView(containerView: UIView!) -> Bool
  init()
}
protocol ADInterstitialAdDelegate : NSObjectProtocol {
  func interstitialAdDidUnload(interstitialAd: ADInterstitialAd!)
  func interstitialAd(interstitialAd: ADInterstitialAd!, didFailWithError error: NSError!)
  optional func interstitialAdWillLoad(interstitialAd: ADInterstitialAd!)
  optional func interstitialAdDidLoad(interstitialAd: ADInterstitialAd!)
  optional func interstitialAdActionShouldBegin(interstitialAd: ADInterstitialAd!, willLeaveApplication willLeave: Bool) -> Bool
  optional func interstitialAdActionDidFinish(interstitialAd: ADInterstitialAd!)
}
extension AVPlayerViewController {
  class func preparePrerollAds()
  func playPrerollAdWithCompletionHandler(completionHandler: ((NSError!) -> Void)!)
  func cancelPreroll()
}
extension MPMoviePlayerController {
  class func preparePrerollAds()
  func playPrerollAdWithCompletionHandler(completionHandler: ((NSError!) -> Void)!)
  func cancelPreroll()
}
enum ADInterstitialPresentationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Automatic
  case Manual
}
extension UIViewController {
  class func prepareInterstitialAds()
  var interstitialPresentationPolicy: ADInterstitialPresentationPolicy
  var canDisplayBannerAds: Bool
  var originalContentView: UIView! { get }
  var presentingFullScreenAd: Bool { get }
  var displayingBannerAd: Bool { get }
  func requestInterstitialAdPresentation() -> Bool
  var shouldPresentInterstitialAd: Bool { get }
}
