
class AVCaptureView : NSView {
  weak var delegate: @sil_weak AVCaptureViewDelegate?
  var controlsStyle: AVCaptureViewControlsStyle
  var videoGravity: String
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
enum AVCaptureViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Inline
  case Floating
  case InlineDeviceSelection
  static var Default: AVCaptureViewControlsStyle { get }
}
protocol AVCaptureViewDelegate : ObjectProtocol {
}
class AVPlayerView : NSView {
  var controlsStyle: AVPlayerViewControlsStyle
  var videoGravity: String
  var isReadyForDisplay: Bool { get }
  var videoBounds: Rect { get }
  var contentOverlayView: NSView? { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
enum AVPlayerViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Inline
  case Floating
  case Minimal
  static var Default: AVPlayerViewControlsStyle { get }
}
extension AVPlayerView {
  var showsFrameSteppingButtons: Bool
  var showsSharingServiceButton: Bool
  var actionPopUpButtonMenu: NSMenu?
  var showsFullScreenToggleButton: Bool
}
extension AVPlayerView {
  var canBeginTrimming: Bool { get }
  func beginTrimming(completionHandler handler: ((AVPlayerViewTrimResult) -> Void)? = nil)
}
enum AVPlayerViewTrimResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OKButton
  case CancelButton
}
extension AVPlayerView {
  func flashChapterNumber(chapterNumber: Int, chapterTitle: String)
}
