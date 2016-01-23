
var kABMultiValueMask: Int32 { get }
struct _ABPropertyType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABErrorInProperty: _ABPropertyType { get }
var kABStringProperty: _ABPropertyType { get }
var kABIntegerProperty: _ABPropertyType { get }
var kABRealProperty: _ABPropertyType { get }
var kABDateProperty: _ABPropertyType { get }
var kABArrayProperty: _ABPropertyType { get }
var kABDictionaryProperty: _ABPropertyType { get }
var kABDataProperty: _ABPropertyType { get }
var kABDateComponentsProperty: _ABPropertyType { get }
var kABMultiStringProperty: _ABPropertyType { get }
var kABMultiIntegerProperty: _ABPropertyType { get }
var kABMultiRealProperty: _ABPropertyType { get }
var kABMultiDateProperty: _ABPropertyType { get }
var kABMultiArrayProperty: _ABPropertyType { get }
var kABMultiDictionaryProperty: _ABPropertyType { get }
var kABMultiDataProperty: _ABPropertyType { get }
var kABMultiDateComponentsProperty: _ABPropertyType { get }
typealias ABPropertyType = CFIndex
struct _ABSearchComparison : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABEqual: _ABSearchComparison { get }
var kABNotEqual: _ABSearchComparison { get }
var kABLessThan: _ABSearchComparison { get }
var kABLessThanOrEqual: _ABSearchComparison { get }
var kABGreaterThan: _ABSearchComparison { get }
var kABGreaterThanOrEqual: _ABSearchComparison { get }
var kABEqualCaseInsensitive: _ABSearchComparison { get }
var kABContainsSubString: _ABSearchComparison { get }
var kABContainsSubStringCaseInsensitive: _ABSearchComparison { get }
var kABPrefixMatch: _ABSearchComparison { get }
var kABPrefixMatchCaseInsensitive: _ABSearchComparison { get }
var kABBitsInBitFieldMatch: _ABSearchComparison { get }
var kABDoesNotContainSubString: _ABSearchComparison { get }
var kABDoesNotContainSubStringCaseInsensitive: _ABSearchComparison { get }
var kABNotEqualCaseInsensitive: _ABSearchComparison { get }
var kABSuffixMatch: _ABSearchComparison { get }
var kABSuffixMatchCaseInsensitive: _ABSearchComparison { get }
var kABWithinIntervalAroundToday: _ABSearchComparison { get }
var kABWithinIntervalAroundTodayYearless: _ABSearchComparison { get }
var kABNotWithinIntervalAroundToday: _ABSearchComparison { get }
var kABNotWithinIntervalAroundTodayYearless: _ABSearchComparison { get }
var kABWithinIntervalFromToday: _ABSearchComparison { get }
var kABWithinIntervalFromTodayYearless: _ABSearchComparison { get }
var kABNotWithinIntervalFromToday: _ABSearchComparison { get }
var kABNotWithinIntervalFromTodayYearless: _ABSearchComparison { get }
typealias ABSearchComparison = CFIndex
struct _ABSearchConjunction : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABSearchAnd: _ABSearchConjunction { get }
var kABSearchOr: _ABSearchConjunction { get }
typealias ABSearchConjunction = CFIndex
typealias ABRecordRef = UnsafeMutablePointer<Void>
typealias ABPersonRef = ABPerson
class ABPerson {
}
typealias ABGroupRef = ABGroup
class ABGroup {
}
typealias ABSearchElementRef = ABSearchElement
class ABSearchElement {
}
typealias ABAddressBookRef = ABAddressBook
class ABAddressBook {
}
typealias ABMultiValueRef = ABMultiValue
class ABMultiValue {
}
class ABMutableMultiValue {
}
typealias ABMutableMultiValueRef = ABMutableMultiValue
func ABGetSharedAddressBook() -> Unmanaged<ABAddressBook>!
func ABCopyArrayOfMatchingRecords(addressBook: ABAddressBook!, _ search: ABSearchElement!) -> Unmanaged<CFArray>!
func ABSave(addressBook: ABAddressBook!) -> Bool
func ABHasUnsavedChanges(addressBook: ABAddressBook!) -> Bool
func ABGetMe(addressBook: ABAddressBook!) -> Unmanaged<ABPerson>!
func ABSetMe(addressBook: ABAddressBook!, _ moi: ABPerson!)
func ABCopyRecordTypeFromUniqueId(addressBook: ABAddressBook!, _ uniqueId: CFString!) -> Unmanaged<CFString>!
func ABAddPropertiesAndTypes(addressBook: ABAddressBook!, _ recordType: CFString!, _ propertiesAndTypes: CFDictionary!) -> CFIndex
func ABRemoveProperties(addressBook: ABAddressBook!, _ recordType: CFString!, _ properties: CFArray!) -> CFIndex
func ABCopyArrayOfPropertiesForRecordType(addressBook: ABAddressBook!, _ recordType: CFString!) -> Unmanaged<CFArray>!
func ABTypeOfProperty(addressBook: ABAddressBook!, _ recordType: CFString!, _ property: CFString!) -> ABPropertyType
func ABCopyRecordForUniqueId(addressBook: ABAddressBook!, _ uniqueId: CFString!) -> ABRecordRef
func ABAddRecord(addressBook: ABAddressBook!, _ record: ABRecordRef) -> Bool
func ABRemoveRecord(addressBook: ABAddressBook!, _ record: ABRecordRef) -> Bool
func ABCopyArrayOfAllPeople(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
func ABCopyArrayOfAllGroups(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
func ABRecordCreateCopy(record: ABRecordRef) -> ABRecordRef
func ABRecordCopyRecordType(record: ABRecordRef) -> Unmanaged<CFString>!
func ABRecordCopyValue(record: ABRecordRef, _ property: CFString!) -> Unmanaged<AnyObject>!
func ABRecordSetValue(record: ABRecordRef, _ property: CFString!, _ value: AnyObject!) -> Bool
func ABRecordRemoveValue(record: ABRecordRef, _ property: CFString!) -> Bool
func ABRecordIsReadOnly(record: ABRecordRef) -> Bool
func ABRecordCopyUniqueId(record: ABRecordRef) -> Unmanaged<CFString>!
func ABPersonCreate() -> Unmanaged<ABPerson>!
func ABPersonCreateWithVCardRepresentation(vCard: CFData!) -> Unmanaged<ABPerson>!
func ABPersonCopyVCardRepresentation(person: ABPerson!) -> Unmanaged<CFData>!
func ABPersonCopyParentGroups(person: ABPerson!) -> Unmanaged<CFArray>!
func ABPersonCreateSearchElement(property: CFString!, _ label: CFString!, _ key: CFString!, _ value: AnyObject!, _ comparison: ABSearchComparison) -> Unmanaged<ABSearchElement>!
func ABGroupCreate() -> Unmanaged<ABGroup>!
func ABGroupCopyArrayOfAllMembers(group: ABGroup!) -> Unmanaged<CFArray>!
func ABGroupAddMember(group: ABGroup!, _ personToAdd: ABPerson!) -> Bool
func ABGroupRemoveMember(group: ABGroup!, _ personToRemove: ABPerson!) -> Bool
func ABGroupCopyArrayOfAllSubgroups(group: ABGroup!) -> Unmanaged<CFArray>!
func ABGroupAddGroup(group: ABGroup!, _ groupToAdd: ABGroup!) -> Bool
func ABGroupRemoveGroup(group: ABGroup!, _ groupToRemove: ABGroup!) -> Bool
func ABGroupCopyParentGroups(group: ABGroup!) -> Unmanaged<CFArray>!
func ABGroupSetDistributionIdentifier(group: ABGroup!, _ person: ABPerson!, _ property: CFString!, _ identifier: CFString!) -> Bool
func ABGroupCopyDistributionIdentifier(group: ABGroup!, _ person: ABPerson!, _ property: CFString!) -> Unmanaged<CFString>!
func ABGroupCreateSearchElement(property: CFString!, _ label: CFString!, _ key: CFString!, _ value: AnyObject!, _ comparison: ABSearchComparison) -> Unmanaged<ABSearchElement>!
func ABSearchElementCreateWithConjunction(conjunction: ABSearchConjunction, _ childrenSearchElement: CFArray!) -> Unmanaged<ABSearchElement>!
func ABSearchElementMatchesRecord(searchElement: ABSearchElement!, _ record: ABRecordRef) -> Bool
func ABMultiValueCreate() -> Unmanaged<ABMultiValue>!
func ABMultiValueCount(multiValue: ABMultiValue!) -> CFIndex
func ABMultiValueCopyValueAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<AnyObject>!
func ABMultiValueCopyLabelAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
func ABMultiValueCopyPrimaryIdentifier(multiValue: ABMultiValue!) -> Unmanaged<CFString>!
func ABMultiValueIndexForIdentifier(multiValue: ABMultiValue!, _ identifier: CFString!) -> CFIndex
func ABMultiValueCopyIdentifierAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
func ABMultiValuePropertyType(multiValue: ABMultiValue!) -> ABPropertyType
func ABMultiValueCreateCopy(multiValue: ABMultiValue!) -> Unmanaged<ABMultiValue>!
func ABMultiValueCreateMutable() -> Unmanaged<ABMutableMultiValue>!
func ABMultiValueAdd(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ outIdentifier: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Bool
func ABMultiValueInsert(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ index: CFIndex, _ outIdentifier: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Bool
func ABMultiValueRemove(multiValue: ABMutableMultiValue!, _ index: CFIndex) -> Bool
func ABMultiValueReplaceValue(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ index: CFIndex) -> Bool
func ABMultiValueReplaceLabel(multiValue: ABMutableMultiValue!, _ label: CFString!, _ index: CFIndex) -> Bool
func ABMultiValueSetPrimaryIdentifier(multiValue: ABMutableMultiValue!, _ identifier: CFString!) -> Bool
func ABMultiValueCreateMutableCopy(multiValue: ABMultiValue!) -> Unmanaged<ABMutableMultiValue>!
func ABCopyLocalizedPropertyOrLabel(labelOrProperty: CFString!) -> Unmanaged<CFString>!
func ABCreateFormattedAddressFromDictionary(addressBook: ABAddressBook!, _ address: CFDictionary!) -> Unmanaged<CFString>!
func ABCopyDefaultCountryCode(addressBook: ABAddressBook!) -> Unmanaged<CFString>!
func ABPersonSetImageData(person: ABPerson!, _ imageData: CFData!) -> Bool
func ABPersonCopyImageData(person: ABPerson!) -> Unmanaged<CFData>!
typealias ABImageClientCallback = @convention(c) (CFData!, CFIndex, UnsafeMutablePointer<Void>) -> Void
func ABBeginLoadingImageDataForClient(person: ABPerson!, _ callback: ABImageClientCallback!, _ refcon: UnsafeMutablePointer<Void>) -> CFIndex
func ABCancelLoadingImageDataForTag(tag: CFIndex)
var ABAddRecordsError: Int { get }
var ABRemoveRecordsError: Int { get }
var ABPropertyValueValidationError: Int { get }
var ABPropertyUnsupportedBySourceError: Int { get }
var ABPropertyReadOnlyError: Int { get }
let ABAddressBookErrorDomain: String
let ABMultiValueIdentifiersErrorKey: String
class ABAddressBook : Object {
  class func shared() -> ABAddressBook!
  func recordsMatching(search: ABSearchElement!) -> [AnyObject]!
  func save() -> Bool
  func saveAndReturnError() throws
  func hasUnsavedChanges() -> Bool
  func me() -> ABPerson!
  func setMe(moi: ABPerson!)
  func recordForUniqueId(uniqueId: String!) -> ABRecord!
  func add(record: ABRecord!, error: ()) throws
  func add(record: ABRecord!) -> Bool
  func remove(record: ABRecord!, error: ()) throws
  func remove(record: ABRecord!) -> Bool
  func people() -> [AnyObject]!
  func groups() -> [AnyObject]!
  func recordClassFromUniqueId(uniqueId: String!) -> String!
  func formattedAddressFrom(address: [Object : AnyObject]!) -> AttributedString!
  func defaultCountryCode() -> String!
  func defaultNameOrdering() -> Int
  init()
}
struct __ABBookflags {
  var hasUnsavedChanges: UInt32
  var readOnly: UInt32
  var importMe: UInt32
  var needConversion: UInt32
  var cleanedUp: UInt32
  var importTips: UInt32
  var restoreFromMetaData: UInt32
  var prefsNeedSync: UInt32
  var waitingForReset: UInt32
  var enforcesConstraints: UInt32
  var tracksAllSources: UInt32
  var _reserved: UInt32
  init()
  init(hasUnsavedChanges: UInt32, readOnly: UInt32, importMe: UInt32, needConversion: UInt32, cleanedUp: UInt32, importTips: UInt32, restoreFromMetaData: UInt32, prefsNeedSync: UInt32, waitingForReset: UInt32, enforcesConstraints: UInt32, tracksAllSources: UInt32, _reserved: UInt32)
}
let kABUIDProperty: String
let kABCreationDateProperty: String
let kABModificationDateProperty: String
let kABFirstNameProperty: String
let kABLastNameProperty: String
let kABFirstNamePhoneticProperty: String
let kABLastNamePhoneticProperty: String
let kABNicknameProperty: String
let kABMaidenNameProperty: String
let kABBirthdayProperty: String
let kABBirthdayComponentsProperty: String
let kABAlternateBirthdayComponentsProperty: String
let kABOrganizationProperty: String
let kABJobTitleProperty: String
let kABHomePageProperty: String
let kABURLsProperty: String
let kABHomePageLabel: String
let kABCalendarURIsProperty: String
let kABEmailProperty: String
let kABEmailWorkLabel: String
let kABEmailHomeLabel: String
let kABEmailMobileMeLabel: String
let kABAddressProperty: String
let kABAddressStreetKey: String
let kABAddressCityKey: String
let kABAddressStateKey: String
let kABAddressZIPKey: String
let kABAddressCountryKey: String
let kABAddressCountryCodeKey: String
let kABAddressHomeLabel: String
let kABAddressWorkLabel: String
let kABOtherDatesProperty: String
let kABOtherDateComponentsProperty: String
let kABAnniversaryLabel: String
let kABRelatedNamesProperty: String
let kABFatherLabel: String
let kABMotherLabel: String
let kABParentLabel: String
let kABBrotherLabel: String
let kABSisterLabel: String
let kABChildLabel: String
let kABFriendLabel: String
let kABSpouseLabel: String
let kABPartnerLabel: String
let kABAssistantLabel: String
let kABManagerLabel: String
let kABDepartmentProperty: String
let kABPersonFlags: String
var kABShowAsMask: Int32 { get }
var kABShowAsPerson: Int32 { get }
var kABShowAsCompany: Int32 { get }
var kABShowAsResource: Int32 { get }
var kABShowAsRoom: Int32 { get }
var kABNameOrderingMask: Int32 { get }
var kABDefaultNameOrdering: Int32 { get }
var kABFirstNameFirst: Int32 { get }
var kABLastNameFirst: Int32 { get }
let kABPhoneProperty: String
let kABPhoneWorkLabel: String
let kABPhoneHomeLabel: String
let kABPhoneiPhoneLabel: String
let kABPhoneMobileLabel: String
let kABPhoneMainLabel: String
let kABPhoneHomeFAXLabel: String
let kABPhoneWorkFAXLabel: String
let kABPhonePagerLabel: String
let kABInstantMessageProperty: String
let kABInstantMessageUsernameKey: String
let kABInstantMessageServiceKey: String
let kABInstantMessageServiceAIM: String
let kABInstantMessageServiceFacebook: String
let kABInstantMessageServiceGaduGadu: String
let kABInstantMessageServiceGoogleTalk: String
let kABInstantMessageServiceICQ: String
let kABInstantMessageServiceJabber: String
let kABInstantMessageServiceMSN: String
let kABInstantMessageServiceQQ: String
let kABInstantMessageServiceSkype: String
let kABInstantMessageServiceYahoo: String
let kABSocialProfileProperty: String
let kABSocialProfileURLKey: String
let kABSocialProfileUsernameKey: String
let kABSocialProfileUserIdentifierKey: String
let kABSocialProfileServiceKey: String
let kABSocialProfileServiceTwitter: String
let kABSocialProfileServiceFacebook: String
let kABSocialProfileServiceLinkedIn: String
let kABSocialProfileServiceFlickr: String
let kABSocialProfileServiceMySpace: String
let kABSocialProfileServiceSinaWeibo: String
let kABSocialProfileServiceTencentWeibo: String
let kABSocialProfileServiceYelp: String
let kABNoteProperty: String
let kABMiddleNameProperty: String
let kABMiddleNamePhoneticProperty: String
let kABTitleProperty: String
let kABSuffixProperty: String
let kABGroupNameProperty: String
let kABWorkLabel: String
let kABHomeLabel: String
let kABOtherLabel: String
let kABMobileMeLabel: String
let kABDatabaseChangedNotification: String
let kABDatabaseChangedExternallyNotification: String
let kABInsertedRecords: String
let kABUpdatedRecords: String
let kABDeletedRecords: String
func ABLocalizedPropertyOrLabel(propertyOrLabel: String!) -> String!
class ABGroup : ABRecord {
  func members() -> [AnyObject]!
  func addMember(person: ABPerson!) -> Bool
  func removeMember(person: ABPerson!) -> Bool
  func subgroups() -> [AnyObject]!
  func addSubgroup(group: ABGroup!) -> Bool
  func removeSubgroup(group: ABGroup!) -> Bool
  func parentGroups() -> [AnyObject]!
  func setDistributionIdentifier(identifier: String!, forProperty property: String!, person: ABPerson!) -> Bool
  func distributionIdentifierForProperty(property: String!, person: ABPerson!) -> String!
  init!()
  init!(addressBook: ABAddressBook!)
}
extension ABGroup {
  class func addPropertiesAndTypes(properties: [Object : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOfProperty(property: String!) -> ABPropertyType
}
extension ABGroup {
  class func searchElementForProperty(property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
protocol ABImageClient : ObjectProtocol {
  func consumeImageData(data: Data!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(data: Data!) -> Bool
  func imageData() -> Data!
  func beginLoadingImageDataFor(client: ABImageClient!) -> Int
  class func cancelLoadingImageDataForTag(tag: Int)
}
class ABMultiValue : Object, Copying, MutableCopying, FastEnumeration {
  func count() -> Int
  func valueAt(index: Int) -> AnyObject!
  func labelAt(index: Int) -> String!
  func identifierAt(index: Int) -> String!
  func indexForIdentifier(identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func valueForIdentifier(identifier: String!) -> AnyObject!
  func labelForIdentifier(identifier: String!) -> AnyObject!
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func add(value: AnyObject!, withLabel label: String!) -> String!
  func insert(value: AnyObject!, withLabel label: String!, at index: Int) -> String!
  func removeAndLabelAt(index: Int) -> Bool
  func replaceAt(index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabelAt(index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(identifier: String!) -> Bool
  init()
}
class ABPerson : ABRecord {
  func parentGroups() -> [AnyObject]!
  func linkedPeople() -> [AnyObject]!
  init!()
  init!(addressBook: ABAddressBook!)
}
extension ABPerson {
  class func addPropertiesAndTypes(properties: [Object : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOfProperty(property: String!) -> ABPropertyType
}
extension ABPerson {
  class func searchElementForProperty(property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
extension ABPerson {
  init!(vCardRepresentation vCardData: Data!)
  func vCardRepresentation() -> Data!
}
class ABRecord : Object {
  init!()
  init!(addressBook: ABAddressBook!)
  func valueForProperty(property: String!) -> AnyObject!
  func setValue(value: AnyObject!, forProperty property: String!, error: ()) throws
  func setValue(value: AnyObject!, forProperty property: String!) -> Bool
  func removeValueForProperty(property: String!) -> Bool
  func isReadOnly() -> Bool
}
extension ABRecord {
  var uniqueId: String! { get }
  var displayName: String! { get }
}
class ABSearchElement : Object {
   init!(forConjunction conjuction: ABSearchConjunction, children: [AnyObject]!)
  func matchesRecord(record: ABRecord!) -> Bool
  init()
}
