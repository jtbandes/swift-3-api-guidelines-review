
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
protocol CNKeyDescriptor : NSObjectProtocol, NSSecureCoding, NSCopying {
}
extension NSString : CNKeyDescriptor {
}
class CNContact : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
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
  @NSCopying var imageData: NSData? { get }
  @NSCopying var thumbnailImageData: NSData? { get }
  var imageDataAvailable: Bool { get }
  var phoneNumbers: [CNLabeledValue] { get }
  var emailAddresses: [CNLabeledValue] { get }
  var postalAddresses: [CNLabeledValue] { get }
  var urlAddresses: [CNLabeledValue] { get }
  var contactRelations: [CNLabeledValue] { get }
  var socialProfiles: [CNLabeledValue] { get }
  var instantMessageAddresses: [CNLabeledValue] { get }
  @NSCopying var birthday: NSDateComponents? { get }
  @NSCopying var nonGregorianBirthday: NSDateComponents? { get }
  var dates: [CNLabeledValue] { get }
  func isKeyAvailable(key: String) -> Bool
  func areKeysAvailable(keyDescriptors: [CNKeyDescriptor]) -> Bool
  class func localizedStringForKey(key: String) -> String
  class func comparatorForNameSortOrder(sortOrder: CNContactSortOrder) -> NSComparator
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor
  func isUnifiedWithContactWithIdentifier(contactIdentifier: String) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
let CNContactImageDataAvailableKey: String
let CNContactTypeKey: String
let CNContactPhoneNumbersKey: String
let CNContactEmailAddressesKey: String
let CNContactPostalAddressesKey: String
let CNContactDatesKey: String
let CNContactUrlAddressesKey: String
let CNContactRelationsKey: String
let CNContactSocialProfilesKey: String
let CNContactInstantMessageAddressesKey: String
class CNContactFetchRequest : NSObject {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: NSPredicate?
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
class CNContactFormatter : NSFormatter {
  class func descriptorForRequiredKeysForStyle(style: CNContactFormatterStyle) -> CNKeyDescriptor
  class func stringFromContact(contact: CNContact, style: CNContactFormatterStyle) -> String?
  class func attributedStringFromContact(contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [NSObject : AnyObject]?) -> NSAttributedString?
  class func nameOrderForContact(contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiterForContact(contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func stringFromContact(contact: CNContact) -> String?
  func attributedStringFromContact(contact: CNContact, defaultAttributes attributes: [NSObject : AnyObject]?) -> NSAttributedString?
  init()
  init?(coder aDecoder: NSCoder)
}
let CNContactPropertyAttribute: String
class CNContactProperty : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contact: CNContact { get }
  var key: String { get }
  var value: AnyObject? { get }
  var identifier: String? { get }
  var label: String? { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class CNContactRelation : NSObject, NSCopying, NSSecureCoding {
  init(name: String)
  var name: String { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
class CNContactStore : NSObject {
  class func authorizationStatusForEntityType(entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccessForEntityType(entityType: CNEntityType, completionHandler: (Bool, NSError?) -> Void)
  func unifiedContactsMatchingPredicate(predicate: NSPredicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContactWithIdentifier(identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWithFetchRequest(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groupsMatchingPredicate(predicate: NSPredicate?) throws -> [CNGroup]
  func containersMatchingPredicate(predicate: NSPredicate?) throws -> [CNContainer]
  func defaultContainerIdentifier() -> String
  init()
}
let CNContactStoreDidChangeNotification: String
class CNContactVCardSerialization : NSObject {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(contacts: [AnyObject]) throws -> NSData
  class func contactsWithData(data: NSData) throws -> [AnyObject]
  init()
}
extension CNContact {
  class func predicateForContactsMatchingName(name: String) -> NSPredicate
  class func predicateForContactsWithIdentifiers(identifiers: [String]) -> NSPredicate
  class func predicateForContactsInGroupWithIdentifier(groupIdentifier: String) -> NSPredicate
  class func predicateForContactsInContainerWithIdentifier(containerIdentifier: String) -> NSPredicate
}
class CNContactsUserDefaults : NSObject {
  class func sharedDefaults() -> Self
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
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let CNContainerIdentifierKey: String
let CNContainerNameKey: String
let CNContainerTypeKey: String
extension CNContainer {
  class func predicateForContainersWithIdentifiers(identifiers: [String]) -> NSPredicate
  class func predicateForContainerOfContactWithIdentifier(contactIdentifier: String) -> NSPredicate
  class func predicateForContainerOfGroupWithIdentifier(groupIdentifier: String) -> NSPredicate
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
class CNGroup : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let CNGroupIdentifierKey: String
let CNGroupNameKey: String
extension CNGroup {
  class func predicateForGroupsWithIdentifiers(identifiers: [String]) -> NSPredicate
  class func predicateForGroupsInContainerWithIdentifier(containerIdentifier: String) -> NSPredicate
}
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }
  init(label: String?, value: protocol<NSCopying, NSSecureCoding>)
  func labeledValueBySettingLabel(label: String?) -> Self
  func labeledValueBySettingValue(value: protocol<NSCopying, NSSecureCoding>) -> Self
  func labeledValueBySettingLabel(label: String?, value: protocol<NSCopying, NSSecureCoding>) -> Self
  class func localizedStringForLabel(label: String) -> String
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  @NSCopying var imageData: NSData?
  var phoneNumbers: [CNLabeledValue]
  var emailAddresses: [CNLabeledValue]
  var postalAddresses: [CNLabeledValue]
  var urlAddresses: [CNLabeledValue]
  var contactRelations: [CNLabeledValue]
  var socialProfiles: [CNLabeledValue]
  var instantMessageAddresses: [CNLabeledValue]
  @NSCopying var birthday: NSDateComponents?
  @NSCopying var nonGregorianBirthday: NSDateComponents?
  var dates: [CNLabeledValue]
  init()
  init?(coder aDecoder: NSCoder)
}
class CNMutableGroup : CNGroup {
  var name: String
  init()
  init?(coder aDecoder: NSCoder)
}
class CNMutablePostalAddress : CNPostalAddress {
  var street: String
  var city: String
  var state: String
  var postalCode: String
  var country: String
  var ISOCountryCode: String
  init()
  init?(coder aDecoder: NSCoder)
}
class CNPhoneNumber : NSObject, NSCopying, NSSecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let CNLabelPhoneNumberiPhone: String
let CNLabelPhoneNumberMobile: String
let CNLabelPhoneNumberMain: String
let CNLabelPhoneNumberHomeFax: String
let CNLabelPhoneNumberWorkFax: String
let CNLabelPhoneNumberOtherFax: String
let CNLabelPhoneNumberPager: String
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var ISOCountryCode: String { get }
  class func localizedStringForKey(key: String) -> String
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
class CNPostalAddressFormatter : NSFormatter {
  class func stringFromPostalAddress(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle) -> String
  class func attributedStringFromPostalAddress(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [NSObject : AnyObject]) -> NSAttributedString
  var style: CNPostalAddressFormatterStyle
  func stringFromPostalAddress(postalAddress: CNPostalAddress) -> String
  func attributedStringFromPostalAddress(postalAddress: CNPostalAddress, withDefaultAttributes attributes: [NSObject : AnyObject]) -> NSAttributedString
  init()
  init?(coder aDecoder: NSCoder)
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String
class CNSocialProfile : NSObject, NSCopying, NSSecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
