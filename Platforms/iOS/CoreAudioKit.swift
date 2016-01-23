
class AUViewController : UIViewController, NSExtensionRequestHandling {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(completionHandler: (UIViewController?) -> Void)
}
class CABTMIDICentralViewController : UITableViewController {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class CABTMIDILocalPeripheralViewController : UIViewController {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class CAInterAppAudioSwitcherView : UIView {
  var showingAppNames: Bool
  func setOutputAudioUnit(au: AudioUnit)
  func contentWidth() -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
class CAInterAppAudioTransportView : UIView {
  var enabled: Bool
  var playing: Bool { get }
  var recording: Bool { get }
  var connected: Bool { get }
  var labelColor: UIColor
  var currentTimeLabelFont: UIFont
  var rewindButtonColor: UIColor
  var playButtonColor: UIColor
  var pauseButtonColor: UIColor
  var recordButtonColor: UIColor
  func setOutputAudioUnit(au: AudioUnit)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
