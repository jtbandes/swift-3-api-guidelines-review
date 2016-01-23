
class EKAlarm : EKObject, NSCopying {
   init(absoluteDate date: NSDate)
   init(relativeOffset offset: NSTimeInterval)
  var relativeOffset: NSTimeInterval
  @NSCopying var absoluteDate: NSDate?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class EKCalendar : EKObject {
   init(eventStore: EKEventStore)
   init(forEntityType entityType: EKEntityType, eventStore: EKEventStore)
  var source: EKSource
  var calendarIdentifier: String { get }
  var title: String
  var type: EKCalendarType { get }
  var allowsContentModifications: Bool { get }
  var subscribed: Bool { get }
  var immutable: Bool { get }
  var CGColor: CGColor
  var supportedEventAvailabilities: EKCalendarEventAvailabilityMask { get }
  var allowedEntityTypes: EKEntityMask { get }
  init()
}
class EKCalendarItem : EKObject {
  var UUID: String { get }
  var calendar: EKCalendar
  var calendarItemIdentifier: String { get }
  var calendarItemExternalIdentifier: String { get }
  var title: String
  var location: String?
  var notes: String?
  @NSCopying var URL: NSURL?
  var lastModifiedDate: NSDate? { get }
  var creationDate: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone?
  var hasAlarms: Bool { get }
  var hasRecurrenceRules: Bool { get }
  var hasAttendees: Bool { get }
  var hasNotes: Bool { get }
  var attendees: [EKParticipant]? { get }
  var alarms: [EKAlarm]?
  func addAlarm(alarm: EKAlarm)
  func removeAlarm(alarm: EKAlarm)
  var recurrenceRules: [EKRecurrenceRule]?
  func addRecurrenceRule(rule: EKRecurrenceRule)
  func removeRecurrenceRule(rule: EKRecurrenceRule)
  init()
}
let EKErrorDomain: String
enum EKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EventNotMutable
  case NoCalendar
  case NoStartDate
  case NoEndDate
  case DatesInverted
  case InternalFailure
  case CalendarReadOnly
  case DurationGreaterThanRecurrence
  case AlarmGreaterThanRecurrence
  case StartDateTooFarInFuture
  case StartDateCollidesWithOtherOccurrence
  case ObjectBelongsToDifferentStore
  case InvitesCannotBeMoved
  case InvalidSpan
  case CalendarHasNoSource
  case CalendarSourceCannotBeModified
  case CalendarIsImmutable
  case SourceDoesNotAllowCalendarAddDelete
  case RecurringReminderRequiresDueDate
  case StructuredLocationsNotSupported
  case ReminderLocationsNotSupported
  case AlarmProximityNotSupported
  case CalendarDoesNotAllowEvents
  case CalendarDoesNotAllowReminders
  case SourceDoesNotAllowReminders
  case SourceDoesNotAllowEvents
  case PriorityIsInvalid
  case InvalidEntityType
  case ProcedureAlarmsNotMutable
  case EventStoreNotAuthorized
  case OSNotSupported
  case Last
}
extension EKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
enum EKEventAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSupported
  case Busy
  case Free
  case Tentative
  case Unavailable
}
enum EKEventStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Confirmed
  case Tentative
  case Canceled
}
class EKEvent : EKCalendarItem {
   init(eventStore: EKEventStore)
  var eventIdentifier: String { get }
  var allDay: Bool
  @NSCopying var startDate: NSDate
  @NSCopying var endDate: NSDate
  @NSCopying var structuredLocation: EKStructuredLocation?
  func compareStartDateWithEvent(other: EKEvent) -> NSComparisonResult
  var organizer: EKParticipant? { get }
  var availability: EKEventAvailability
  var status: EKEventStatus { get }
  var isDetached: Bool { get }
  var occurrenceDate: NSDate { get }
  func refresh() -> Bool
  var birthdayContactIdentifier: String? { get }
  var birthdayPersonID: Int { get }
  init()
}
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void
class EKEventStore : NSObject {
  class func authorizationStatusForEntityType(entityType: EKEntityType) -> EKAuthorizationStatus
  init()
  func requestAccessToEntityType(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  var sources: [EKSource] { get }
  func sourceWithIdentifier(identifier: String) -> EKSource
  var calendars: [EKCalendar] { get }
  func calendarsForEntityType(entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  func defaultCalendarForNewReminders() -> EKCalendar
  func calendarWithIdentifier(identifier: String) -> EKCalendar?
  func calendarItemWithIdentifier(identifier: String) -> EKCalendarItem
  func calendarItemsWithExternalIdentifier(externalIdentifier: String) -> [EKCalendarItem]
  func eventWithIdentifier(identifier: String) -> EKEvent?
  func eventsMatchingPredicate(predicate: NSPredicate) -> [EKEvent]
  func enumerateEventsMatchingPredicate(predicate: NSPredicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStartDate(startDate: NSDate, endDate: NSDate, calendars: [EKCalendar]?) -> NSPredicate
  func fetchRemindersMatchingPredicate(predicate: NSPredicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  func predicateForRemindersInCalendars(calendars: [EKCalendar]?) -> NSPredicate
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate
  func reset()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, NSError?) -> Void
let EKEventStoreChangedNotification: String
class EKObject : NSObject {
  var hasChanges: Bool { get }
  var new: Bool { get }
  func reset()
  func rollback()
  func refresh() -> Bool
  init()
}
class EKParticipant : EKObject, NSCopying {
  var URL: NSURL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  var currentUser: Bool { get }
  var contactPredicate: NSPredicate { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class EKRecurrenceDayOfWeek : NSObject, NSCopying {
  convenience init(_ dayOfTheWeek: EKWeekday)
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber: Int)
  init(dayOfTheWeek: EKWeekday, weekNumber: Int)
  var dayOfTheWeek: EKWeekday { get }
  var weekNumber: Int { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class EKRecurrenceEnd : NSObject, NSCopying {
  convenience init(endDate: NSDate)
  convenience init(occurrenceCount: Int)
  var endDate: NSDate? { get }
  var occurrenceCount: Int { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class EKRecurrenceRule : EKObject, NSCopying {
  init(recurrenceWithFrequency type: EKRecurrenceFrequency, interval: Int, end: EKRecurrenceEnd?)
  init(recurrenceWithFrequency type: EKRecurrenceFrequency, interval: Int, daysOfTheWeek days: [EKRecurrenceDayOfWeek]?, daysOfTheMonth monthDays: [NSNumber]?, monthsOfTheYear months: [NSNumber]?, weeksOfTheYear: [NSNumber]?, daysOfTheYear: [NSNumber]?, setPositions: [NSNumber]?, end: EKRecurrenceEnd?)
  var calendarIdentifier: String { get }
  @NSCopying var recurrenceEnd: EKRecurrenceEnd?
  var frequency: EKRecurrenceFrequency { get }
  var interval: Int { get }
  var firstDayOfTheWeek: Int { get }
  var daysOfTheWeek: [EKRecurrenceDayOfWeek]? { get }
  var daysOfTheMonth: [NSNumber]? { get }
  var daysOfTheYear: [NSNumber]? { get }
  var weeksOfTheYear: [NSNumber]? { get }
  var monthsOfTheYear: [NSNumber]? { get }
  var setPositions: [NSNumber]? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class EKReminder : EKCalendarItem {
   init(eventStore: EKEventStore)
  @NSCopying var startDateComponents: NSDateComponents?
  @NSCopying var dueDateComponents: NSDateComponents?
  var completed: Bool
  @NSCopying var completionDate: NSDate?
  var priority: Int
  init()
}
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }
  var calendars: Set<EKCalendar> { get }
  func calendarsForEntityType(entityType: EKEntityType) -> Set<EKCalendar>
  init()
}
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
enum EKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
enum EKWeekday : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Sunday
  case Monday
  case Tuesday
  case Wednesday
  case Thursday
  case Friday
  case Saturday
  static var EKSunday: EKWeekday { get }
  static var EKMonday: EKWeekday { get }
  static var EKTuesday: EKWeekday { get }
  static var EKWednesday: EKWeekday { get }
  static var EKThursday: EKWeekday { get }
  static var EKFriday: EKWeekday { get }
  static var EKSaturday: EKWeekday { get }
}
enum EKRecurrenceFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Daily
  case Weekly
  case Monthly
  case Yearly
}
enum EKParticipantType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Person
  case Room
  case Resource
  case Group
}
enum EKParticipantRole : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Required
  case Optional
  case Chair
  case NonParticipant
}
enum EKParticipantScheduleStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Pending
  case Sent
  case Delivered
  case RecipientNotRecognized
  case NoPrivileges
  case DeliveryFailed
  case CannotDeliver
  case RecipientNotAllowed
}
enum EKParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Pending
  case Accepted
  case Declined
  case Tentative
  case Delegated
  case Completed
  case InProcess
}
enum EKCalendarType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Local
  case CalDAV
  case Exchange
  case Subscription
  case Birthday
}
struct EKCalendarEventAvailabilityMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: EKCalendarEventAvailabilityMask { get }
  static var Busy: EKCalendarEventAvailabilityMask { get }
  static var Free: EKCalendarEventAvailabilityMask { get }
  static var Tentative: EKCalendarEventAvailabilityMask { get }
  static var Unavailable: EKCalendarEventAvailabilityMask { get }
}
enum EKSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Local
  case Exchange
  case CalDAV
  case MobileMe
  case Subscribed
  case Birthdays
}
enum EKEntityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Event
  case Reminder
}
struct EKEntityMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Event: EKEntityMask { get }
  static var Reminder: EKEntityMask { get }
}
enum EKAlarmProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Enter
  case Leave
}
enum EKAlarmType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Display
  case Audio
  case Procedure
  case Email
}
enum EKReminderPriority : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case High
  case Medium
  case Low
}
