
class NCWidgetController : NSObject {
  class func widgetController() -> Self!
  class func defaultWidgetController() -> NCWidgetController!
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String!)
  init()
}
class NCWidgetListViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetListViewDelegate!
  var contents: [AnyObject]!
  var minimumVisibleRowCount: Int
  var hasDividerLines: Bool
  var editing: Bool
  var showsAddButtonWhenEditing: Bool
  func viewControllerAtRow(row: Int, makeIfNecessary makeIfNecesary: Bool) -> NSViewController!
  func rowForViewController(viewController: NSViewController!) -> Int
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol NCWidgetListViewDelegate : NSObjectProtocol {
  func widgetList(list: NCWidgetListViewController!, viewControllerForRow row: Int) -> NSViewController!
  optional func widgetListPerformAddAction(list: NCWidgetListViewController!)
  optional func widgetList(list: NCWidgetListViewController!, shouldReorderRow row: Int) -> Bool
  optional func widgetList(list: NCWidgetListViewController!, didReorderRow row: Int, toRow newIndex: Int)
  optional func widgetList(list: NCWidgetListViewController!, shouldRemoveRow row: Int) -> Bool
  optional func widgetList(list: NCWidgetListViewController!, didRemoveRow row: Int)
}
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
protocol NCWidgetProviding : NSExtensionRequestHandling {
  optional func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!)
  optional func widgetMarginInsetsForProposedMarginInsets(defaultMarginInset: NSEdgeInsets) -> NSEdgeInsets
  optional var widgetAllowsEditing: Bool { get }
  optional func widgetDidBeginEditing()
  optional func widgetDidEndEditing()
}
extension NSViewController {
  func presentViewControllerInWidget(viewController: NSViewController!)
}
class NCWidgetSearchViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetSearchViewDelegate!
  var searchResults: [AnyObject]!
  var searchDescription: String!
  var searchResultsPlaceholderString: String!
  var searchResultKeyPath: String!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol NCWidgetSearchViewDelegate : NSObjectProtocol {
  func widgetSearch(controller: NCWidgetSearchViewController!, searchForTerm searchTerm: String!, maxResults max: Int)
  func widgetSearchTermCleared(controller: NCWidgetSearchViewController!)
  func widgetSearch(controller: NCWidgetSearchViewController!, resultSelected object: AnyObject!)
}
