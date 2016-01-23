
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
  var isBannerLoaded: Bool { get }
  var isBannerViewActionInProgress: Bool { get }
  func cancelAction()
  var advertisingSection: String!
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol ADBannerViewDelegate : ObjectProtocol {
  optional func bannerViewWillLoadAd(banner: ADBannerView!)
  optional func bannerViewDidLoadAd(banner: ADBannerView!)
  optional func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: Error!)
  optional func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool
  optional func bannerViewActionDidFinish(banner: ADBannerView!)
}
extension ADBannerView {
}
class ADClient : Object {
  class func shared() -> ADClient!
  func determineAppInstallationAttributionWithCompletionHandler(completionHandler: ((Bool) -> Void)!)
  func lookupAdConversionDetails(completionHandler: ((Date!, Date!) -> Void)!)
  func requestAttributionDetailsWith(completionHandler: (([Object : AnyObject]!, Error!) -> Void)!)
  func addToSegments(segmentIdentifiers: [AnyObject]!, replaceExisting: Bool)
  init()
}
let ADClientErrorDomain: String
enum ADClientError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case LimitAdTracking
}
class ADInterstitialAd : Object {
  weak var delegate: @sil_weak ADInterstitialAdDelegate!
  var isLoaded: Bool { get }
  var isActionInProgress: Bool { get }
  func cancelAction()
  func presentIn(containerView: UIView!) -> Bool
  init()
}
protocol ADInterstitialAdDelegate : ObjectProtocol {
  func interstitialAdDidUnload(interstitialAd: ADInterstitialAd!)
  func interstitialAd(interstitialAd: ADInterstitialAd!, didFailWithError error: Error!)
  optional func interstitialAdWillLoad(interstitialAd: ADInterstitialAd!)
  optional func interstitialAdDidLoad(interstitialAd: ADInterstitialAd!)
  optional func interstitialAdActionShouldBegin(interstitialAd: ADInterstitialAd!, willLeaveApplication willLeave: Bool) -> Bool
  optional func interstitialAdActionDidFinish(interstitialAd: ADInterstitialAd!)
}
extension AVPlayerViewController {
  class func preparePrerollAds()
  func playPrerollAdWithCompletionHandler(completionHandler: ((Error!) -> Void)!)
  func cancelPreroll()
}
extension MPMoviePlayerController {
  class func preparePrerollAds()
  func playPrerollAdWithCompletionHandler(completionHandler: ((Error!) -> Void)!)
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
  var isPresentingFullScreenAd: Bool { get }
  var isDisplayingBannerAd: Bool { get }
  func requestInterstitialAdPresentation() -> Bool
  var shouldPresentInterstitialAd: Bool { get }
}
