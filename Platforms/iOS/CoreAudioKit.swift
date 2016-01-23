
class AUViewController : UIViewController, ExtensionRequestHandling {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension AUAudioUnit {
  func requestViewControllerWithCompletionHandler(completionHandler: (UIViewController?) -> Void)
}
class CABTMIDICentralViewController : UITableViewController {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
class CABTMIDILocalPeripheralViewController : UIViewController {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
class CAInterAppAudioSwitcherView : UIView {
  var isShowingAppNames: Bool
  func setOutputAudioUnit(au: AudioUnit)
  func contentWidth() -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
class CAInterAppAudioTransportView : UIView {
  var isEnabled: Bool
  var isPlaying: Bool { get }
  var isRecording: Bool { get }
  var isConnected: Bool { get }
  var labelColor: UIColor
  var currentTimeLabelFont: UIFont
  var rewindButtonColor: UIColor
  var playButtonColor: UIColor
  var pauseButtonColor: UIColor
  var recordButtonColor: UIColor
  func setOutputAudioUnit(au: AudioUnit)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
