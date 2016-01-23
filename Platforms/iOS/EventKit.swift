
class EKAlarm : EKObject, Copying {
   init(absoluteDate date: Date)
   init(relativeOffset offset: TimeInterval)
  var relativeOffset: TimeInterval
  @NSCopying var absoluteDate: Date?
  @NSCopying var structuredLocation: EKStructuredLocation?
  var proximity: EKAlarmProximity
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class EKCalendar : EKObject {
   init(forEntityType entityType: EKEntityType, eventStore: EKEventStore)
  var source: EKSource
  var calendarIdentifier: String { get }
  var title: String
  var type: EKCalendarType { get }
  var allowsContentModifications: Bool { get }
  var isSubscribed: Bool { get }
  var isImmutable: Bool { get }
  var cgColor: CGColor
  var supportedEventAvailabilities: EKCalendarEventAvailabilityMask { get }
  var allowedEntityTypes: EKEntityMask { get }
  init()
}
class EKCalendarItem : EKObject {
  var calendar: EKCalendar
  var calendarItemIdentifier: String { get }
  var calendarItemExternalIdentifier: String { get }
  var title: String
  var location: String?
  var notes: String?
  @NSCopying var url: URL?
  var lastModifiedDate: Date? { get }
  var creationDate: Date? { get }
  @NSCopying var timeZone: TimeZone?
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
  var isAllDay: Bool
  @NSCopying var startDate: Date
  @NSCopying var endDate: Date
  @NSCopying var structuredLocation: EKStructuredLocation?
  func compareStartDateWith(other: EKEvent) -> ComparisonResult
  var organizer: EKParticipant? { get }
  var availability: EKEventAvailability
  var status: EKEventStatus { get }
  var isDetached: Bool { get }
  var occurrenceDate: Date { get }
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
class EKEventStore : Object {
  class func authorizationStatusFor(entityType: EKEntityType) -> EKAuthorizationStatus
  init()
  func requestAccessTo(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)
  var eventStoreIdentifier: String { get }
  var sources: [EKSource] { get }
  func sourceWithIdentifier(identifier: String) -> EKSource
  func calendarsFor(entityType: EKEntityType) -> [EKCalendar]
  var defaultCalendarForNewEvents: EKCalendar { get }
  func defaultCalendarForNewReminders() -> EKCalendar
  func calendarWithIdentifier(identifier: String) -> EKCalendar?
  func saveCalendar(calendar: EKCalendar, commit: Bool) throws
  func removeCalendar(calendar: EKCalendar, commit: Bool) throws
  func calendarItemWithIdentifier(identifier: String) -> EKCalendarItem
  func calendarItemsWithExternalIdentifier(externalIdentifier: String) -> [EKCalendarItem]
  func save(event: EKEvent, span: EKSpan) throws
  func remove(event: EKEvent, span: EKSpan) throws
  func save(event: EKEvent, span: EKSpan, commit: Bool) throws
  func remove(event: EKEvent, span: EKSpan, commit: Bool) throws
  func eventWithIdentifier(identifier: String) -> EKEvent?
  func eventsMatching(predicate: Predicate) -> [EKEvent]
  func enumerateEventsMatching(predicate: Predicate, usingBlock block: EKEventSearchCallback)
  func predicateForEventsWithStart(startDate: Date, end endDate: Date, calendars: [EKCalendar]?) -> Predicate
  func save(reminder: EKReminder, commit: Bool) throws
  func remove(reminder: EKReminder, commit: Bool) throws
  func fetchRemindersMatching(predicate: Predicate, completion: ([EKReminder]?) -> Void) -> AnyObject
  func cancelFetchRequest(fetchIdentifier: AnyObject)
  func predicateForRemindersIn(calendars: [EKCalendar]?) -> Predicate
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: Date?, ending endDate: Date?, calendars: [EKCalendar]?) -> Predicate
  func commit() throws
  func reset()
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
let EKEventStoreChangedNotification: String
class EKObject : Object {
  var hasChanges: Bool { get }
  var isNew: Bool { get }
  func reset()
  func rollback()
  func refresh() -> Bool
  init()
}
class EKParticipant : EKObject, Copying {
  var url: URL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  var isCurrentUser: Bool { get }
  var contactPredicate: Predicate { get }
  func abRecordWith(addressBook: ABAddressBook) -> ABRecord?
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class EKRecurrenceDayOfWeek : Object, Copying {
  convenience init(_ dayOfTheWeek: EKWeekday)
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber: Int)
  init(dayOfTheWeek: EKWeekday, weekNumber: Int)
  var dayOfTheWeek: EKWeekday { get }
  var weekNumber: Int { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class EKRecurrenceEnd : Object, Copying {
  convenience init(end endDate: Date)
  convenience init(occurrenceCount: Int)
  var endDate: Date? { get }
  var occurrenceCount: Int { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class EKRecurrenceRule : EKObject, Copying {
  init(recurrenceWith type: EKRecurrenceFrequency, interval: Int, end: EKRecurrenceEnd?)
  init(recurrenceWith type: EKRecurrenceFrequency, interval: Int, daysOfTheWeek days: [EKRecurrenceDayOfWeek]?, daysOfTheMonth monthDays: [Number]?, monthsOfTheYear months: [Number]?, weeksOfTheYear: [Number]?, daysOfTheYear: [Number]?, setPositions: [Number]?, end: EKRecurrenceEnd?)
  var calendarIdentifier: String { get }
  @NSCopying var recurrenceEnd: EKRecurrenceEnd?
  var frequency: EKRecurrenceFrequency { get }
  var interval: Int { get }
  var firstDayOfTheWeek: Int { get }
  var daysOfTheWeek: [EKRecurrenceDayOfWeek]? { get }
  var daysOfTheMonth: [Number]? { get }
  var daysOfTheYear: [Number]? { get }
  var weeksOfTheYear: [Number]? { get }
  var monthsOfTheYear: [Number]? { get }
  var setPositions: [Number]? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
class EKReminder : EKCalendarItem {
   init(eventStore: EKEventStore)
  @NSCopying var startDateComponents: DateComponents?
  @NSCopying var dueDateComponents: DateComponents?
  var isCompleted: Bool
  @NSCopying var completionDate: Date?
  var priority: Int
  init()
}
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }
  func calendarsFor(entityType: EKEntityType) -> Set<EKCalendar>
  init()
}
class EKStructuredLocation : EKObject, Copying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
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
