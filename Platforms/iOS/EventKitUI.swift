
enum EKCalendarChooserSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Single
  case Multiple
}
enum EKCalendarChooserDisplayStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AllCalendars
  case WritableCalendarsOnly
}
class EKCalendarChooser : UIViewController {
  init(selectionStyle: EKCalendarChooserSelectionStyle, displayStyle: EKCalendarChooserDisplayStyle, eventStore: EKEventStore)
  init(selectionStyle style: EKCalendarChooserSelectionStyle, displayStyle: EKCalendarChooserDisplayStyle, entityType: EKEntityType, eventStore: EKEventStore)
  var selectionStyle: EKCalendarChooserSelectionStyle { get }
  weak var delegate: @sil_weak EKCalendarChooserDelegate?
  var showsDoneButton: Bool
  var showsCancelButton: Bool
  var selectedCalendars: Set<EKCalendar>
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol EKCalendarChooserDelegate : ObjectProtocol {
  optional func calendarChooserSelectionDidChange(calendarChooser: EKCalendarChooser)
  optional func calendarChooserDidFinish(calendarChooser: EKCalendarChooser)
  optional func calendarChooserDidCancel(calendarChooser: EKCalendarChooser)
}
enum EKEventEditViewAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Canceled
  case Saved
  case Deleted
  static var Cancelled: EKEventEditViewAction { get }
}
class EKEventEditViewController : UINavigationController {
  weak var editViewDelegate: @sil_weak EKEventEditViewDelegate?
  var eventStore: EKEventStore
  var event: EKEvent?
  func cancelEditing()
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol EKEventEditViewDelegate : ObjectProtocol {
  func eventEditViewController(controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction)
  optional func eventEditViewControllerDefaultCalendarForNewEvents(controller: EKEventEditViewController) -> EKCalendar
}
enum EKEventViewAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Responded
  case Deleted
}
class EKEventViewController : UIViewController {
  weak var delegate: @sil_weak EKEventViewDelegate?
  var event: EKEvent
  var allowsEditing: Bool
  var allowsCalendarPreview: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol EKEventViewDelegate : ObjectProtocol {
  func eventViewController(controller: EKEventViewController, didCompleteWith action: EKEventViewAction)
}
