
class QLPreviewController : UIViewController {
  class func canPreviewItem(item: QLPreviewItem) -> Bool
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem? { get }
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol QLPreviewControllerDataSource {
  func numberOfPreviewItemsInPreviewController(controller: QLPreviewController) -> Int
  func previewController(controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem
}
protocol QLPreviewControllerDelegate : NSObjectProtocol {
  optional func previewControllerWillDismiss(controller: QLPreviewController)
  optional func previewControllerDidDismiss(controller: QLPreviewController)
  optional func previewController(controller: QLPreviewController, shouldOpenURL url: NSURL, forPreviewItem item: QLPreviewItem) -> Bool
  optional func previewController(controller: QLPreviewController, frameForPreviewItem item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect
  optional func previewController(controller: QLPreviewController, transitionImageForPreviewItem item: QLPreviewItem, contentRect: UnsafeMutablePointer<CGRect>) -> UIImage
}
protocol QLPreviewItem : NSObjectProtocol {
  var previewItemURL: NSURL { get }
  optional var previewItemTitle: String? { get }
}
extension NSURL : QLPreviewItem {
  var previewItemURL: NSURL { get }
  var previewItemTitle: String? { get }
}
