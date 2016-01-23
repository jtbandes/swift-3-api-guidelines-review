
let ABAddressBookErrorDomain: CFString!
var kABOperationNotPermittedByStoreError: Int { get }
var kABOperationNotPermittedByUserError: Int { get }
typealias ABAddressBook = CFTypeRef
typealias ABAddressBookRef = ABAddressBook
enum ABAuthorizationStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
func ABAddressBookGetAuthorizationStatus() -> ABAuthorizationStatus
func ABAddressBookCreateWithOptions(options: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ABAddressBook>!
func ABAddressBookCreate() -> Unmanaged<ABAddressBook>!
typealias ABAddressBookRequestAccessCompletionHandler = (Bool, CFError!) -> Void
func ABAddressBookRequestAccessWithCompletion(addressBook: ABAddressBook!, _ completion: ABAddressBookRequestAccessCompletionHandler!)
func ABAddressBookSave(addressBook: ABAddressBook!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABAddressBookHasUnsavedChanges(addressBook: ABAddressBook!) -> Bool
func ABAddressBookAddRecord(addressBook: ABAddressBook!, _ record: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABAddressBookRemoveRecord(addressBook: ABAddressBook!, _ record: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABAddressBookCopyLocalizedLabel(label: CFString!) -> Unmanaged<CFString>!
typealias ABExternalChangeCallback = @convention(c) (ABAddressBook!, CFDictionary!, UnsafeMutablePointer<Void>) -> Void
func ABAddressBookRegisterExternalChangeCallback(addressBook: ABAddressBook!, _ callback: ABExternalChangeCallback!, _ context: UnsafeMutablePointer<Void>)
func ABAddressBookUnregisterExternalChangeCallback(addressBook: ABAddressBook!, _ callback: ABExternalChangeCallback!, _ context: UnsafeMutablePointer<Void>)
func ABAddressBookRevert(addressBook: ABAddressBook!)
let kABGroupNameProperty: Int32
func ABGroupCreate() -> Unmanaged<ABRecord>!
func ABGroupCreateInSource(source: ABRecord!) -> Unmanaged<ABRecord>!
func ABGroupCopySource(group: ABRecord!) -> Unmanaged<ABRecord>!
func ABGroupCopyArrayOfAllMembers(group: ABRecord!) -> Unmanaged<CFArray>!
func ABGroupCopyArrayOfAllMembersWithSortOrdering(group: ABRecord!, _ sortOrdering: ABPersonSortOrdering) -> Unmanaged<CFArray>!
func ABGroupAddMember(group: ABRecord!, _ person: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABGroupRemoveMember(group: ABRecord!, _ member: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABAddressBookGetGroupWithRecordID(addressBook: ABAddressBook!, _ recordID: ABRecordID) -> Unmanaged<ABRecord>!
func ABAddressBookGetGroupCount(addressBook: ABAddressBook!) -> CFIndex
func ABAddressBookCopyArrayOfAllGroups(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
func ABAddressBookCopyArrayOfAllGroupsInSource(addressBook: ABAddressBook!, _ source: ABRecord!) -> Unmanaged<CFArray>!
typealias ABMultiValue = CFTypeRef
typealias ABMultiValueRef = ABMultiValue
typealias ABMultiValueIdentifier = Int32
var kABMultiValueInvalidIdentifier: Int32 { get }
func ABMultiValueGetPropertyType(multiValue: ABMultiValue!) -> ABPropertyType
func ABMultiValueGetCount(multiValue: ABMultiValue!) -> CFIndex
func ABMultiValueCopyValueAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<AnyObject>!
func ABMultiValueCopyArrayOfAllValues(multiValue: ABMultiValue!) -> Unmanaged<CFArray>!
func ABMultiValueCopyLabelAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
func ABMultiValueGetIndexForIdentifier(multiValue: ABMultiValue!, _ identifier: ABMultiValueIdentifier) -> CFIndex
func ABMultiValueGetIdentifierAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> ABMultiValueIdentifier
func ABMultiValueGetFirstIndexOfValue(multiValue: ABMultiValue!, _ value: AnyObject!) -> CFIndex
typealias ABMutableMultiValueRef = ABMutableMultiValue
typealias ABMutableMultiValue = CFTypeRef
func ABMultiValueCreateMutable(type: ABPropertyType) -> Unmanaged<ABMutableMultiValue>!
func ABMultiValueCreateMutableCopy(multiValue: ABMultiValue!) -> Unmanaged<ABMutableMultiValue>!
func ABMultiValueAddValueAndLabel(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ outIdentifier: UnsafeMutablePointer<ABMultiValueIdentifier>) -> Bool
func ABMultiValueInsertValueAndLabelAtIndex(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ index: CFIndex, _ outIdentifier: UnsafeMutablePointer<ABMultiValueIdentifier>) -> Bool
func ABMultiValueRemoveValueAndLabelAtIndex(multiValue: ABMutableMultiValue!, _ index: CFIndex) -> Bool
func ABMultiValueReplaceValueAtIndex(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ index: CFIndex) -> Bool
func ABMultiValueReplaceLabelAtIndex(multiValue: ABMutableMultiValue!, _ label: CFString!, _ index: CFIndex) -> Bool
func ABPersonCreate() -> Unmanaged<ABRecord>!
func ABPersonCreateInSource(source: ABRecord!) -> Unmanaged<ABRecord>!
func ABPersonCopySource(person: ABRecord!) -> Unmanaged<ABRecord>!
func ABPersonCopyArrayOfAllLinkedPeople(person: ABRecord!) -> Unmanaged<CFArray>!
func ABPersonGetTypeOfProperty(property: ABPropertyID) -> ABPropertyType
func ABPersonCopyLocalizedPropertyName(property: ABPropertyID) -> Unmanaged<CFString>!
typealias ABPersonSortOrdering = UInt32
var kABPersonSortByFirstName: Int { get }
var kABPersonSortByLastName: Int { get }
func ABPersonGetSortOrdering() -> ABPersonSortOrdering
typealias ABPersonCompositeNameFormat = UInt32
var kABPersonCompositeNameFormatFirstNameFirst: Int { get }
var kABPersonCompositeNameFormatLastNameFirst: Int { get }
func ABPersonGetCompositeNameFormat() -> ABPersonCompositeNameFormat
func ABPersonGetCompositeNameFormatForRecord(record: ABRecord!) -> ABPersonCompositeNameFormat
func ABPersonCopyCompositeNameDelimiterForRecord(record: ABRecord!) -> Unmanaged<CFString>!
struct ABPersonImageFormat : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABPersonImageFormatThumbnail: ABPersonImageFormat { get }
var kABPersonImageFormatOriginalSize: ABPersonImageFormat { get }
func ABPersonSetImageData(person: ABRecord!, _ imageData: CFData!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABPersonCopyImageData(person: ABRecord!) -> Unmanaged<CFData>!
func ABPersonCopyImageDataWithFormat(person: ABRecord!, _ format: ABPersonImageFormat) -> Unmanaged<CFData>!
func ABPersonHasImageData(person: ABRecord!) -> Bool
func ABPersonRemoveImageData(person: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABPersonComparePeopleByName(person1: ABRecord!, _ person2: ABRecord!, _ ordering: ABPersonSortOrdering) -> CFComparisonResult
func ABAddressBookGetPersonCount(addressBook: ABAddressBook!) -> CFIndex
func ABAddressBookGetPersonWithRecordID(addressBook: ABAddressBook!, _ recordID: ABRecordID) -> Unmanaged<ABRecord>!
func ABAddressBookCopyArrayOfAllPeople(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
func ABAddressBookCopyArrayOfAllPeopleInSource(addressBook: ABAddressBook!, _ source: ABRecord!) -> Unmanaged<CFArray>!
func ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(addressBook: ABAddressBook!, _ source: ABRecord!, _ sortOrdering: ABPersonSortOrdering) -> Unmanaged<CFArray>!
func ABAddressBookCopyPeopleWithName(addressBook: ABAddressBook!, _ name: CFString!) -> Unmanaged<CFArray>!
func ABPersonCreatePeopleInSourceWithVCardRepresentation(source: ABRecord!, _ vCardData: CFData!) -> Unmanaged<CFArray>!
func ABPersonCreateVCardRepresentationWithPeople(people: CFArray!) -> Unmanaged<CFData>!
let kABWorkLabel: CFString!
let kABHomeLabel: CFString!
let kABOtherLabel: CFString!
let kABPersonFirstNameProperty: ABPropertyID
let kABPersonLastNameProperty: ABPropertyID
let kABPersonMiddleNameProperty: ABPropertyID
let kABPersonPrefixProperty: ABPropertyID
let kABPersonSuffixProperty: ABPropertyID
let kABPersonNicknameProperty: ABPropertyID
let kABPersonFirstNamePhoneticProperty: ABPropertyID
let kABPersonLastNamePhoneticProperty: ABPropertyID
let kABPersonMiddleNamePhoneticProperty: ABPropertyID
let kABPersonOrganizationProperty: ABPropertyID
let kABPersonDepartmentProperty: ABPropertyID
let kABPersonJobTitleProperty: ABPropertyID
let kABPersonEmailProperty: ABPropertyID
let kABPersonBirthdayProperty: ABPropertyID
let kABPersonNoteProperty: ABPropertyID
let kABPersonCreationDateProperty: ABPropertyID
let kABPersonModificationDateProperty: ABPropertyID
let kABPersonAddressProperty: ABPropertyID
let kABPersonAddressStreetKey: CFString!
let kABPersonAddressCityKey: CFString!
let kABPersonAddressStateKey: CFString!
let kABPersonAddressZIPKey: CFString!
let kABPersonAddressCountryKey: CFString!
let kABPersonAddressCountryCodeKey: CFString!
let kABPersonDateProperty: ABPropertyID
let kABPersonAnniversaryLabel: CFString!
let kABPersonKindProperty: ABPropertyID
let kABPersonKindPerson: CFNumber!
let kABPersonKindOrganization: CFNumber!
let kABPersonPhoneProperty: ABPropertyID
let kABPersonPhoneMobileLabel: CFString!
let kABPersonPhoneIPhoneLabel: CFString!
let kABPersonPhoneMainLabel: CFString!
let kABPersonPhoneHomeFAXLabel: CFString!
let kABPersonPhoneWorkFAXLabel: CFString!
let kABPersonPhoneOtherFAXLabel: CFString!
let kABPersonPhonePagerLabel: CFString!
let kABPersonInstantMessageProperty: ABPropertyID
let kABPersonInstantMessageServiceKey: CFString!
let kABPersonInstantMessageServiceYahoo: CFString!
let kABPersonInstantMessageServiceJabber: CFString!
let kABPersonInstantMessageServiceMSN: CFString!
let kABPersonInstantMessageServiceICQ: CFString!
let kABPersonInstantMessageServiceAIM: CFString!
let kABPersonInstantMessageServiceQQ: CFString!
let kABPersonInstantMessageServiceGoogleTalk: CFString!
let kABPersonInstantMessageServiceSkype: CFString!
let kABPersonInstantMessageServiceFacebook: CFString!
let kABPersonInstantMessageServiceGaduGadu: CFString!
let kABPersonInstantMessageUsernameKey: CFString!
let kABPersonURLProperty: ABPropertyID
let kABPersonHomePageLabel: CFString!
let kABPersonRelatedNamesProperty: ABPropertyID
let kABPersonFatherLabel: CFString!
let kABPersonMotherLabel: CFString!
let kABPersonParentLabel: CFString!
let kABPersonBrotherLabel: CFString!
let kABPersonSisterLabel: CFString!
let kABPersonChildLabel: CFString!
let kABPersonFriendLabel: CFString!
let kABPersonSpouseLabel: CFString!
let kABPersonPartnerLabel: CFString!
let kABPersonAssistantLabel: CFString!
let kABPersonManagerLabel: CFString!
let kABPersonSocialProfileProperty: ABPropertyID
let kABPersonSocialProfileURLKey: CFString!
let kABPersonSocialProfileServiceKey: CFString!
let kABPersonSocialProfileUsernameKey: CFString!
let kABPersonSocialProfileUserIdentifierKey: CFString!
let kABPersonSocialProfileServiceTwitter: CFString!
let kABPersonSocialProfileServiceSinaWeibo: CFString!
let kABPersonSocialProfileServiceGameCenter: CFString!
let kABPersonSocialProfileServiceFacebook: CFString!
let kABPersonSocialProfileServiceMyspace: CFString!
let kABPersonSocialProfileServiceLinkedIn: CFString!
let kABPersonSocialProfileServiceFlickr: CFString!
let kABPersonAlternateBirthdayProperty: ABPropertyID
let kABPersonAlternateBirthdayCalendarIdentifierKey: CFString!
let kABPersonAlternateBirthdayEraKey: CFString!
let kABPersonAlternateBirthdayYearKey: CFString!
let kABPersonAlternateBirthdayMonthKey: CFString!
let kABPersonAlternateBirthdayIsLeapMonthKey: CFString!
let kABPersonAlternateBirthdayDayKey: CFString!
typealias ABRecord = CFTypeRef
typealias ABRecordRef = ABRecord
typealias ABRecordID = Int32
typealias ABPropertyID = Int32
typealias ABRecordType = UInt32
var kABPersonType: Int { get }
var kABGroupType: Int { get }
var kABSourceType: Int { get }
var kABMultiValueMask: Int32 { get }
var kABRecordInvalidID: Int32 { get }
var kABPropertyInvalidID: Int32 { get }
typealias ABPropertyType = UInt32
var kABInvalidPropertyType: Int { get }
var kABStringPropertyType: Int { get }
var kABIntegerPropertyType: Int { get }
var kABRealPropertyType: Int { get }
var kABDateTimePropertyType: Int { get }
var kABDictionaryPropertyType: Int { get }
var kABMultiStringPropertyType: Int { get }
var kABMultiIntegerPropertyType: Int { get }
var kABMultiRealPropertyType: Int { get }
var kABMultiDateTimePropertyType: Int { get }
var kABMultiDictionaryPropertyType: Int { get }
func ABRecordGetRecordID(record: ABRecord!) -> ABRecordID
func ABRecordGetRecordType(record: ABRecord!) -> ABRecordType
func ABRecordCopyValue(record: ABRecord!, _ property: ABPropertyID) -> Unmanaged<AnyObject>!
func ABRecordSetValue(record: ABRecord!, _ property: ABPropertyID, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABRecordRemoveValue(record: ABRecord!, _ property: ABPropertyID, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func ABRecordCopyCompositeName(record: ABRecord!) -> Unmanaged<CFString>!
var kABSourceTypeSearchableMask: Int32 { get }
var kABSourceTypeLocal: Int { get }
var kABSourceTypeExchange: Int { get }
var kABSourceTypeExchangeGAL: Int { get }
var kABSourceTypeMobileMe: Int { get }
var kABSourceTypeLDAP: Int { get }
var kABSourceTypeCardDAV: Int { get }
var kABSourceTypeCardDAVSearch: Int { get }
typealias ABSourceType = Int32
let kABSourceNameProperty: ABPropertyID
let kABSourceTypeProperty: ABPropertyID
func ABAddressBookCopyDefaultSource(addressBook: ABAddressBook!) -> Unmanaged<ABRecord>!
func ABAddressBookGetSourceWithRecordID(addressBook: ABAddressBook!, _ sourceID: ABRecordID) -> Unmanaged<ABRecord>!
func ABAddressBookCopyArrayOfAllSources(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
