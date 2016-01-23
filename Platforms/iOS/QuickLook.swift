
class QLPreviewController : UIViewController {
  class func canPreviewItem(item: QLPreviewItem) -> Bool
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem? { get }
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol QLPreviewControllerDataSource {
  func numberOfPreviewItemsIn(controller: QLPreviewController) -> Int
  func previewController(controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem
}
protocol QLPreviewControllerDelegate : ObjectProtocol {
  optional func previewControllerWillDismiss(controller: QLPreviewController)
  optional func previewControllerDidDismiss(controller: QLPreviewController)
  optional func previewController(controller: QLPreviewController, shouldOpen url: URL, forPreviewItem item: QLPreviewItem) -> Bool
  optional func previewController(controller: QLPreviewController, frameFor item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect
  optional func previewController(controller: QLPreviewController, transitionImageFor item: QLPreviewItem, contentRect: UnsafeMutablePointer<CGRect>) -> UIImage
}
protocol QLPreviewItem : ObjectProtocol {
  var previewItemURL: URL { get }
  optional var previewItemTitle: String? { get }
}
extension URL : QLPreviewItem {
  var previewItemURL: URL { get }
  var previewItemTitle: String? { get }
}
