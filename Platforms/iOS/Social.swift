
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
  var charactersRemaining: NSNumber!
  func configurationItems() -> [AnyObject]!
  func reloadConfigurationItems()
  func pushConfigurationViewController(viewController: UIViewController!)
  func popConfigurationViewController()
  func loadPreviewView() -> UIView!
  var autoCompletionViewController: UIViewController!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  func textViewShouldBeginEditing(textView: UITextView) -> Bool
  func textViewShouldEndEditing(textView: UITextView) -> Bool
  func textViewDidBeginEditing(textView: UITextView)
  func textViewDidEndEditing(textView: UITextView)
  func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  func textViewDidChange(textView: UITextView)
  func textViewDidChangeSelection(textView: UITextView)
  func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool
  func textView(textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
  func scrollViewDidScroll(scrollView: UIScrollView)
  func scrollViewDidZoom(scrollView: UIScrollView)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
typealias SLComposeSheetConfigurationItemTapHandler = () -> Void
class SLComposeSheetConfigurationItem : NSObject {
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
  func addImage(image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func addURL(url: NSURL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
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
typealias SLRequestHandler = (NSData!, NSHTTPURLResponse!, NSError!) -> Void
class SLRequest : NSObject {
   init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, URL url: NSURL!, parameters: [NSObject : AnyObject]!)
  var requestMethod: SLRequestMethod { get }
  var URL: NSURL! { get }
  var parameters: [NSObject : AnyObject]! { get }
  func addMultipartData(data: NSData!, withName name: String!, type: String!, filename: String!)
  func preparedURLRequest() -> NSURLRequest!
  func performRequestWithHandler(handler: SLRequestHandler!)
  init()
}
let SLServiceTypeTwitter: String
let SLServiceTypeFacebook: String
let SLServiceTypeSinaWeibo: String
let SLServiceTypeTencentWeibo: String
