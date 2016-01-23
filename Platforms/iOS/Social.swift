
class SLComposeServiceViewController : UIViewController, UITextViewDelegate {
  func presentationAnimationDidFinish()
  var textView: UITextView! { get }
  var contentText: String! { get }
  var placeholder: String!
  func didSelectPost()
  func didSelectCancel()
  func cancel()
  func isContentValid() -> Bool
  func validateContent()
  var charactersRemaining: Number!
  func configurationItems() -> [AnyObject]!
  func reloadConfigurationItems()
  func pushConfigurationViewController(viewController: UIViewController!)
  func popConfigurationViewController()
  func loadPreviewView() -> UIView!
  var autoCompletionViewController: UIViewController!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  func textViewShouldBeginEditing(textView: UITextView) -> Bool
  func textViewShouldEndEditing(textView: UITextView) -> Bool
  func textViewDidBeginEditing(textView: UITextView)
  func textViewDidEndEditing(textView: UITextView)
  func textView(textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  func textViewDidChange(textView: UITextView)
  func textViewDidChangeSelection(textView: UITextView)
  func textView(textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool
  func textView(textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
typealias SLComposeSheetConfigurationItemTapHandler = () -> Void
class SLComposeSheetConfigurationItem : Object {
  init!()
  var title: String!
  var value: String!
  var valuePending: Bool
  var tapHandler: SLComposeSheetConfigurationItemTapHandler!
}
enum SLComposeViewControllerResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancelled
  case Done
}
typealias SLComposeViewControllerCompletionHandler = (SLComposeViewControllerResult) -> Void
class SLComposeViewController : UIViewController {
  class func isAvailableForServiceType(serviceType: String!) -> Bool
   init!(forServiceType serviceType: String!)
  var serviceType: String! { get }
  func setInitialText(text: String!) -> Bool
  func add(image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func add(url: URL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
enum SLRequestMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GET
  case POST
  case DELETE
  case PUT
}
typealias SLRequestHandler = (Data!, HTTPURLResponse!, Error!) -> Void
class SLRequest : Object {
   init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, url: URL!, parameters: [Object : AnyObject]!)
  var requestMethod: SLRequestMethod { get }
  var url: URL! { get }
  var parameters: [Object : AnyObject]! { get }
  func addMultipartData(data: Data!, withName name: String!, type: String!, filename: String!)
  func preparedURLRequest() -> URLRequest!
  func performWithHandler(handler: SLRequestHandler!)
  init()
}
let SLServiceTypeTwitter: String
let SLServiceTypeFacebook: String
let SLServiceTypeSinaWeibo: String
let SLServiceTypeTencentWeibo: String
