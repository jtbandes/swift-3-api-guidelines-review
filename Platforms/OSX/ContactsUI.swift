
class CNContactPicker : NSObject {
  var displayedKeys: [String]
  weak var delegate: @sil_weak CNContactPickerDelegate?
  func showRelativeToRect(positioningRect: NSRect, ofView positioningView: NSView, preferredEdge: NSRectEdge)
  func close()
  init()
}
protocol CNContactPickerDelegate : NSObjectProtocol {
  optional func contactPickerWillClose(picker: CNContactPicker)
  optional func contactPickerDidClose(picker: CNContactPicker)
}
class CNContactViewController : NSViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
