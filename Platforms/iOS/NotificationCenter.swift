
class NCWidgetController : NSObject {
  class func widgetController() -> Self
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String)
  init()
}
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
protocol NCWidgetProviding : NSObjectProtocol {
  optional func widgetPerformUpdateWithCompletionHandler(completionHandler: (NCUpdateResult) -> Void)
  optional func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets
}
extension UIVibrancyEffect {
  class func notificationCenterVibrancyEffect() -> UIVibrancyEffect
}
