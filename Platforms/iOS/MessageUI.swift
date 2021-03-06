
struct MFMailComposeResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MFMailComposeResultCancelled: MFMailComposeResult { get }
var MFMailComposeResultSaved: MFMailComposeResult { get }
var MFMailComposeResultSent: MFMailComposeResult { get }
var MFMailComposeResultFailed: MFMailComposeResult { get }
let MFMailComposeErrorDomain: String
struct MFMailComposeErrorCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MFMailComposeErrorCodeSaveFailed: MFMailComposeErrorCode { get }
var MFMailComposeErrorCodeSendFailed: MFMailComposeErrorCode { get }
class MFMailComposeViewController : UINavigationController {
  class func canSendMail() -> Bool
  unowned(unsafe) var mailComposeDelegate: @sil_unmanaged MFMailComposeViewControllerDelegate?
  func setSubject(subject: String)
  func setToRecipients(toRecipients: [String]?)
  func setCcRecipients(ccRecipients: [String]?)
  func setBccRecipients(bccRecipients: [String]?)
  func setMessageBody(body: String, isHTML: Bool)
  func addAttachmentData(attachment: Data, mimeType: String, fileName filename: String)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol MFMailComposeViewControllerDelegate : ObjectProtocol {
  optional func mailComposeController(controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?)
}
struct MessageComposeResult : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MessageComposeResultCancelled: MessageComposeResult { get }
var MessageComposeResultSent: MessageComposeResult { get }
var MessageComposeResultFailed: MessageComposeResult { get }
let MFMessageComposeViewControllerAttachmentURL: String
let MFMessageComposeViewControllerAttachmentAlternateFilename: String
let MFMessageComposeViewControllerTextMessageAvailabilityDidChangeNotification: String
let MFMessageComposeViewControllerTextMessageAvailabilityKey: String
class MFMessageComposeViewController : UINavigationController {
  class func canSendText() -> Bool
  class func canSendSubject() -> Bool
  class func canSendAttachments() -> Bool
  class func isSupportedAttachmentUTI(uti: String) -> Bool
  unowned(unsafe) var messageComposeDelegate: @sil_unmanaged MFMessageComposeViewControllerDelegate?
  func disableUserAttachments()
  var recipients: [String]?
  var body: String?
  var subject: String?
  var attachments: [[Object : AnyObject]]? { get }
  func addAttachmentURL(attachmentURL: URL, withAlternateFilename alternateFilename: String?) -> Bool
  func addAttachmentData(attachmentData: Data, typeIdentifier uti: String, filename: String) -> Bool
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol MFMessageComposeViewControllerDelegate : ObjectProtocol {
  func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult)
}
