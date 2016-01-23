
class SLComposeServiceViewController : NSViewController, NSTextViewDelegate {
  func presentationAnimationDidFinish()
  var textView: NSTextView! { get }
  var contentText: String! { get }
  var placeholder: String!
  func didSelectPost()
  func didSelectCancel()
  func cancel()
  func isContentValid() -> Bool
  func validateContent()
  var charactersRemaining: Number!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  func textView(textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  func textView(textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: Rect, event: NSEvent, at charIndex: Int)
  func textView(view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  func textView(view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: String) -> Bool
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [Value], toCharacterRanges newSelectedCharRanges: [Value]) -> [Value]
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [Value], replacementStrings: [String]?) -> Bool
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  func textViewDidChangeSelection(notification: Notification)
  func textViewDidChangeTypingAttributes(notification: Notification)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  func textView(textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, at charIndex: Int) -> NSMenu?
  func textView(view: NSTextView, willCheckTextIn range: NSRange, options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<TextCheckingTypes>) -> [String : AnyObject]
  func textView(view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject] = [:], results: [TextCheckingResult], orthography: Orthography, wordCount: Int) -> [TextCheckingResult]
  func textView(textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> URL?
  func textView(textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  func undoManagerFor(view: NSTextView) -> UndoManager?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: Notification)
  func textDidEndEditing(notification: Notification)
  func textDidChange(notification: Notification)
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
  func addMultipartData(data: Data!, withName name: String!, type: String!)
  func preparedURLRequest() -> URLRequest!
  func performWithHandler(handler: SLRequestHandler!)
  init()
}
let SLServiceTypeTwitter: String
let SLServiceTypeFacebook: String
let SLServiceTypeSinaWeibo: String
let SLServiceTypeTencentWeibo: String
let SLServiceTypeLinkedIn: String
