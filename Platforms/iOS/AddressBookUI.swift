
func ABCreateStringWithAddressDictionary(address: [NSObject : AnyObject], _ addCountryName: Bool) -> String
class ABNewPersonViewController : UIViewController {
  unowned(unsafe) var newPersonViewDelegate: @sil_unmanaged ABNewPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord?
  var parentGroup: ABRecord?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol ABNewPersonViewControllerDelegate : NSObjectProtocol {
  func newPersonViewController(newPersonView: ABNewPersonViewController, didCompleteWithNewPerson person: ABRecord?)
}
class ABPeoplePickerNavigationController : UINavigationController {
  unowned(unsafe) var peoplePickerDelegate: @sil_unmanaged ABPeoplePickerNavigationControllerDelegate?
  var displayedProperties: [NSNumber]?
  var addressBook: ABAddressBook?
  @NSCopying var predicateForEnablingPerson: NSPredicate?
  @NSCopying var predicateForSelectionOfPerson: NSPredicate?
  @NSCopying var predicateForSelectionOfProperty: NSPredicate?
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let ABPersonNamePrefixProperty: String
let ABPersonGivenNameProperty: String
let ABPersonMiddleNameProperty: String
let ABPersonFamilyNameProperty: String
let ABPersonNameSuffixProperty: String
let ABPersonPreviousFamilyNameProperty: String
let ABPersonNicknameProperty: String
let ABPersonPhoneticGivenNameProperty: String
let ABPersonPhoneticMiddleNameProperty: String
let ABPersonPhoneticFamilyNameProperty: String
let ABPersonOrganizationNameProperty: String
let ABPersonDepartmentNameProperty: String
let ABPersonJobTitleProperty: String
let ABPersonBirthdayProperty: String
let ABPersonNoteProperty: String
let ABPersonPhoneNumbersProperty: String
let ABPersonEmailAddressesProperty: String
let ABPersonUrlAddressesProperty: String
let ABPersonDatesProperty: String
let ABPersonInstantMessageAddressesProperty: String
let ABPersonRelatedNamesProperty: String
let ABPersonSocialProfilesProperty: String
let ABPersonPostalAddressesProperty: String
protocol ABPeoplePickerNavigationControllerDelegate : NSObjectProtocol {
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, didSelectPerson person: ABRecord)
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, didSelectPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier)
  optional func peoplePickerNavigationControllerDidCancel(peoplePicker: ABPeoplePickerNavigationController)
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, shouldContinueAfterSelectingPerson person: ABRecord) -> Bool
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, shouldContinueAfterSelectingPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
class ABPersonViewController : UIViewController, UIViewControllerRestoration {
  unowned(unsafe) var personViewDelegate: @sil_unmanaged ABPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord
  var displayedProperties: [NSNumber]?
  var allowsEditing: Bool
  var allowsActions: Bool
  var shouldShowLinkedPeople: Bool
  func setHighlightedItemForProperty(property: ABPropertyID, withIdentifier identifier: ABMultiValueIdentifier)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  class func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
}
protocol ABPersonViewControllerDelegate : NSObjectProtocol {
  func personViewController(personViewController: ABPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
class ABUnknownPersonViewController : UIViewController {
  unowned(unsafe) var unknownPersonViewDelegate: @sil_unmanaged ABUnknownPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord
  var alternateName: String?
  var message: String?
  var allowsActions: Bool
  var allowsAddingToAddressBook: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol ABUnknownPersonViewControllerDelegate : NSObjectProtocol {
  func unknownPersonViewController(unknownCardViewController: ABUnknownPersonViewController, didResolveToPerson person: ABRecord?)
  optional func unknownPersonViewController(personViewController: ABUnknownPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
