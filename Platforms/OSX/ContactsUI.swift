
class CNContactPicker : Object {
  var displayedKeys: [String]
  weak var delegate: @sil_weak CNContactPickerDelegate?
  func showRelativeTo(positioningRect: Rect, of positioningView: NSView, preferredEdge: RectEdge)
  func close()
  init()
}
protocol CNContactPickerDelegate : ObjectProtocol {
  optional func contactPickerWillClose(picker: CNContactPicker)
  optional func contactPickerDidClose(picker: CNContactPicker)
}
class CNContactViewController : NSViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
