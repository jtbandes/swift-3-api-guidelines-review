
class CNContactPickerViewController : UIViewController {
  var displayedPropertyKeys: [String]?
  weak var delegate: @sil_weak CNContactPickerDelegate?
  @NSCopying var predicateForEnablingContact: Predicate?
  @NSCopying var predicateForSelectionOfContact: Predicate?
  @NSCopying var predicateForSelectionOfProperty: Predicate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol CNContactPickerDelegate : ObjectProtocol {
  optional func contactPickerDidCancel(picker: CNContactPickerViewController)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contact: CNContact)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contacts: [CNContact])
  optional func contactPicker(picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty])
}
class CNContactViewController : UIViewController {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  convenience init(forContact contact: CNContact)
  convenience init(forUnknownContact contact: CNContact)
  convenience init(forNewContact contact: CNContact?)
  var contact: CNContact { get }
  var displayedPropertyKeys: [AnyObject]?
  weak var delegate: @sil_weak CNContactViewControllerDelegate?
  var contactStore: CNContactStore?
  var parentGroup: CNGroup?
  var parentContainer: CNContainer?
  var alternateName: String?
  var message: String?
  var allowsEditing: Bool
  var allowsActions: Bool
  var shouldShowLinkedContacts: Bool
  func highlightPropertyWithKey(key: String, identifier: String?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol CNContactViewControllerDelegate : ObjectProtocol {
  optional func contactViewController(viewController: CNContactViewController, shouldPerformDefaultActionFor property: CNContactProperty) -> Bool
  optional func contactViewController(viewController: CNContactViewController, didCompleteWith contact: CNContact?)
}
extension UIApplicationShortcutIcon {
  convenience init(contact: CNContact)
}
