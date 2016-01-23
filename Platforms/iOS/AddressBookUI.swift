
func ABCreateStringWithAddressDictionary(address: [Object : AnyObject], _ addCountryName: Bool) -> String
class ABNewPersonViewController : UIViewController {
  unowned(unsafe) var newPersonViewDelegate: @sil_unmanaged ABNewPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord?
  var parentGroup: ABRecord?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol ABNewPersonViewControllerDelegate : ObjectProtocol {
  func newPersonViewController(newPersonView: ABNewPersonViewController, didCompleteWithNewPerson person: ABRecord?)
}
class ABPeoplePickerNavigationController : UINavigationController {
  unowned(unsafe) var peoplePickerDelegate: @sil_unmanaged ABPeoplePickerNavigationControllerDelegate?
  var displayedProperties: [Number]?
  var addressBook: ABAddressBook?
  @NSCopying var predicateForEnablingPerson: Predicate?
  @NSCopying var predicateForSelectionOfPerson: Predicate?
  @NSCopying var predicateForSelectionOfProperty: Predicate?
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
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
protocol ABPeoplePickerNavigationControllerDelegate : ObjectProtocol {
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
  var displayedProperties: [Number]?
  var allowsEditing: Bool
  var allowsActions: Bool
  var shouldShowLinkedPeople: Bool
  func setHighlightedItemForProperty(property: ABPropertyID, withIdentifier identifier: ABMultiValueIdentifier)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  class func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: Coder) -> UIViewController?
}
protocol ABPersonViewControllerDelegate : ObjectProtocol {
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
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol ABUnknownPersonViewControllerDelegate : ObjectProtocol {
  func unknownPersonViewController(unknownCardViewController: ABUnknownPersonViewController, didResolveToPerson person: ABRecord?)
  optional func unknownPersonViewController(personViewController: ABUnknownPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
