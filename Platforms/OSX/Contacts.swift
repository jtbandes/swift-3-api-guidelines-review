
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Person
  case Organization
}
enum CNContactSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case UserDefault
  case GivenName
  case FamilyName
}
protocol CNKeyDescriptor : ObjectProtocol, SecureCoding, Copying {
}
extension NSString : CNKeyDescriptor {
}
class CNContact : Object, Copying, MutableCopying, SecureCoding {
  var identifier: String { get }
  var contactType: CNContactType { get }
  var namePrefix: String { get }
  var givenName: String { get }
  var middleName: String { get }
  var familyName: String { get }
  var previousFamilyName: String { get }
  var nameSuffix: String { get }
  var nickname: String { get }
  var phoneticGivenName: String { get }
  var phoneticMiddleName: String { get }
  var phoneticFamilyName: String { get }
  var organizationName: String { get }
  var departmentName: String { get }
  var jobTitle: String { get }
  var note: String { get }
  @NSCopying var imageData: Data? { get }
  @NSCopying var thumbnailImageData: Data? { get }
  var phoneNumbers: [CNLabeledValue] { get }
  var emailAddresses: [CNLabeledValue] { get }
  var postalAddresses: [CNLabeledValue] { get }
  var urlAddresses: [CNLabeledValue] { get }
  var contactRelations: [CNLabeledValue] { get }
  var socialProfiles: [CNLabeledValue] { get }
  var instantMessageAddresses: [CNLabeledValue] { get }
  @NSCopying var birthday: DateComponents? { get }
  @NSCopying var nonGregorianBirthday: DateComponents? { get }
  var dates: [CNLabeledValue] { get }
  func isKeyAvailable(key: String) -> Bool
  func areKeysAvailable(keyDescriptors: [CNKeyDescriptor]) -> Bool
  class func localizedStringForKey(key: String) -> String
  class func comparatorForNameSortOrder(sortOrder: CNContactSortOrder) -> Comparator
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor
  func isUnifiedWithContactWithIdentifier(contactIdentifier: String) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNContactPropertyNotFetchedExceptionName: String
let CNContactIdentifierKey: String
let CNContactNamePrefixKey: String
let CNContactGivenNameKey: String
let CNContactMiddleNameKey: String
let CNContactFamilyNameKey: String
let CNContactPreviousFamilyNameKey: String
let CNContactNameSuffixKey: String
let CNContactNicknameKey: String
let CNContactPhoneticGivenNameKey: String
let CNContactPhoneticMiddleNameKey: String
let CNContactPhoneticFamilyNameKey: String
let CNContactOrganizationNameKey: String
let CNContactDepartmentNameKey: String
let CNContactJobTitleKey: String
let CNContactBirthdayKey: String
let CNContactNonGregorianBirthdayKey: String
let CNContactNoteKey: String
let CNContactImageDataKey: String
let CNContactThumbnailImageDataKey: String
let CNContactTypeKey: String
let CNContactPhoneNumbersKey: String
let CNContactEmailAddressesKey: String
let CNContactPostalAddressesKey: String
let CNContactDatesKey: String
let CNContactUrlAddressesKey: String
let CNContactRelationsKey: String
let CNContactSocialProfilesKey: String
let CNContactInstantMessageAddressesKey: String
class CNContactFetchRequest : Object {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: Predicate?
  var keysToFetch: [CNKeyDescriptor]
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
  convenience init()
}
enum CNContactFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullName
  case PhoneticFullName
}
enum CNContactDisplayNameOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserDefault
  case GivenNameFirst
  case FamilyNameFirst
}
class CNContactFormatter : Formatter {
  class func descriptorForRequiredKeysFor(style: CNContactFormatterStyle) -> CNKeyDescriptor
  class func stringFrom(contact: CNContact, style: CNContactFormatterStyle) -> String?
  class func attributedStringFrom(contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [Object : AnyObject]? = [:]) -> AttributedString?
  class func nameOrderFor(contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiterFor(contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func stringFrom(contact: CNContact) -> String?
  func attributedStringFrom(contact: CNContact, defaultAttributes attributes: [Object : AnyObject]? = [:]) -> AttributedString?
  init()
  init?(coder aDecoder: Coder)
}
let CNContactPropertyAttribute: String
class CNContactProperty : Object, Copying, SecureCoding {
  @NSCopying var contact: CNContact { get }
  var key: String { get }
  var value: AnyObject? { get }
  var identifier: String? { get }
  var label: String? { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class CNContactRelation : Object, Copying, SecureCoding {
  init(name: String)
  var name: String { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNLabelContactRelationFather: String
let CNLabelContactRelationMother: String
let CNLabelContactRelationParent: String
let CNLabelContactRelationBrother: String
let CNLabelContactRelationSister: String
let CNLabelContactRelationChild: String
let CNLabelContactRelationFriend: String
let CNLabelContactRelationSpouse: String
let CNLabelContactRelationPartner: String
let CNLabelContactRelationAssistant: String
let CNLabelContactRelationManager: String
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contacts
}
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
class CNContactStore : Object {
  class func authorizationStatusFor(entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccessFor(entityType: CNEntityType, completionHandler: (Bool, Error?) -> Void)
  func unifiedContactsMatching(predicate: Predicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContactWithIdentifier(identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func unifiedMeContactWithKeysToFetch(keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWith(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groupsMatching(predicate: Predicate?) throws -> [CNGroup]
  func containersMatching(predicate: Predicate?) throws -> [CNContainer]
  func execute(saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
  init()
}
let CNContactStoreDidChangeNotification: String
class CNContactVCardSerialization : Object {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(contacts: [AnyObject]) throws -> Data
  class func contactsWith(data: Data) throws -> [AnyObject]
  init()
}
extension CNContact {
  class func predicateForContactsMatchingName(name: String) -> Predicate
  class func predicateForContactsWithIdentifiers(identifiers: [String]) -> Predicate
  class func predicateForContactsInGroupWithIdentifier(groupIdentifier: String) -> Predicate
  class func predicateForContactsInContainerWithIdentifier(containerIdentifier: String) -> Predicate
}
class CNContactsUserDefaults : Object {
  class func shared() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
  init()
}
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unassigned
  case Local
  case Exchange
  case CardDAV
}
class CNContainer : Object, Copying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNContainerIdentifierKey: String
let CNContainerNameKey: String
let CNContainerTypeKey: String
extension CNContainer {
  class func predicateForContainersWithIdentifiers(identifiers: [String]) -> Predicate
  class func predicateForContainerOfContactWithIdentifier(contactIdentifier: String) -> Predicate
  class func predicateForContainerOfGroupWithIdentifier(groupIdentifier: String) -> Predicate
}
let CNErrorDomain: String
enum CNErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CommunicationError
  case DataAccessError
  case AuthorizationDenied
  case RecordDoesNotExist
  case InsertedRecordAlreadyExists
  case ContainmentCycle
  case ContainmentScope
  case ParentRecordDoesNotExist
  case ValidationMultipleErrors
  case ValidationTypeMismatch
  case ValidationConfigurationError
  case PredicateInvalid
  case PolicyViolation
}
extension CNErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let CNErrorUserInfoAffectedRecordsKey: String
let CNErrorUserInfoAffectedRecordIdentifiersKey: String
let CNErrorUserInfoValidationErrorsKey: String
let CNErrorUserInfoKeyPathsKey: String
class CNGroup : Object, Copying, MutableCopying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNGroupIdentifierKey: String
let CNGroupNameKey: String
extension CNGroup {
  class func predicateForGroupsWithIdentifiers(identifiers: [String]) -> Predicate
  class func predicateForSubgroupsInGroupWithIdentifier(parentGroupIdentifier: String) -> Predicate
  class func predicateForGroupsInContainerWithIdentifier(containerIdentifier: String) -> Predicate
}
class CNInstantMessageAddress : Object, Copying, SecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNInstantMessageAddressUsernameKey: String
let CNInstantMessageAddressServiceKey: String
let CNInstantMessageServiceAIM: String
let CNInstantMessageServiceFacebook: String
let CNInstantMessageServiceGaduGadu: String
let CNInstantMessageServiceGoogleTalk: String
let CNInstantMessageServiceICQ: String
let CNInstantMessageServiceJabber: String
let CNInstantMessageServiceMSN: String
let CNInstantMessageServiceQQ: String
let CNInstantMessageServiceSkype: String
let CNInstantMessageServiceYahoo: String
class CNLabeledValue : Object, Copying, SecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<Copying, SecureCoding> { get }
  init(label: String?, value: protocol<Copying, SecureCoding>)
  func bySettingLabel(label: String?) -> Self
  func bySettingValue(value: protocol<Copying, SecureCoding>) -> Self
  func bySettingLabel(label: String?, value: protocol<Copying, SecureCoding>) -> Self
  class func localizedStringForLabel(label: String) -> String
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNLabelHome: String
let CNLabelWork: String
let CNLabelOther: String
let CNLabelEmailiCloud: String
let CNLabelURLAddressHomePage: String
let CNLabelDateAnniversary: String
class CNMutableContact : CNContact {
  var contactType: CNContactType
  var namePrefix: String
  var givenName: String
  var middleName: String
  var familyName: String
  var previousFamilyName: String
  var nameSuffix: String
  var nickname: String
  var phoneticGivenName: String
  var phoneticMiddleName: String
  var phoneticFamilyName: String
  var organizationName: String
  var departmentName: String
  var jobTitle: String
  var note: String
  @NSCopying var imageData: Data?
  var phoneNumbers: [CNLabeledValue]
  var emailAddresses: [CNLabeledValue]
  var postalAddresses: [CNLabeledValue]
  var urlAddresses: [CNLabeledValue]
  var contactRelations: [CNLabeledValue]
  var socialProfiles: [CNLabeledValue]
  var instantMessageAddresses: [CNLabeledValue]
  @NSCopying var birthday: DateComponents?
  @NSCopying var nonGregorianBirthday: DateComponents?
  var dates: [CNLabeledValue]
  init()
  init?(coder aDecoder: Coder)
}
class CNMutableGroup : CNGroup {
  var name: String
  init()
  init?(coder aDecoder: Coder)
}
class CNMutablePostalAddress : CNPostalAddress {
  var street: String
  var city: String
  var state: String
  var postalCode: String
  var country: String
  var isoCountryCode: String
  init()
  init?(coder aDecoder: Coder)
}
class CNPhoneNumber : Object, Copying, SecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNLabelPhoneNumberiPhone: String
let CNLabelPhoneNumberMobile: String
let CNLabelPhoneNumberMain: String
let CNLabelPhoneNumberHomeFax: String
let CNLabelPhoneNumberWorkFax: String
let CNLabelPhoneNumberOtherFax: String
let CNLabelPhoneNumberPager: String
class CNPostalAddress : Object, Copying, MutableCopying, SecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedStringForKey(key: String) -> String
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNPostalAddressStreetKey: String
let CNPostalAddressCityKey: String
let CNPostalAddressStateKey: String
let CNPostalAddressPostalCodeKey: String
let CNPostalAddressCountryKey: String
let CNPostalAddressISOCountryCodeKey: String
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case MailingAddress
}
class CNPostalAddressFormatter : Formatter {
  class func stringFrom(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle) -> String
  class func attributedStringFrom(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [Object : AnyObject] = [:]) -> AttributedString
  var style: CNPostalAddressFormatterStyle
  func stringFrom(postalAddress: CNPostalAddress) -> String
  func attributedStringFrom(postalAddress: CNPostalAddress, withDefaultAttributes attributes: [Object : AnyObject] = [:]) -> AttributedString
  init()
  init?(coder aDecoder: Coder)
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String
class CNSaveRequest : Object {
  func add(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func updateContact(contact: CNMutableContact)
  func delete(contact: CNMutableContact)
  func add(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func updateGroup(group: CNMutableGroup)
  func delete(group: CNMutableGroup)
  func addSubgroup(subgroup: CNGroup, to group: CNGroup)
  func removeSubgroup(subgroup: CNGroup, from group: CNGroup)
  func addMember(contact: CNContact, to group: CNGroup)
  func removeMember(contact: CNContact, from group: CNGroup)
  init()
}
class CNSocialProfile : Object, Copying, SecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNSocialProfileURLStringKey: String
let CNSocialProfileUsernameKey: String
let CNSocialProfileUserIdentifierKey: String
let CNSocialProfileServiceKey: String
let CNSocialProfileServiceFacebook: String
let CNSocialProfileServiceFlickr: String
let CNSocialProfileServiceLinkedIn: String
let CNSocialProfileServiceMySpace: String
let CNSocialProfileServiceSinaWeibo: String
let CNSocialProfileServiceTencentWeibo: String
let CNSocialProfileServiceTwitter: String
let CNSocialProfileServiceYelp: String
let CNSocialProfileServiceGameCenter: String
