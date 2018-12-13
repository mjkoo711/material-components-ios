// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

class ChipTextFieldExampleViewController: UIViewController {

  let textField = MDCChipTextField()

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.white

    setupExample()
  }

  func setupExample() {
    let inputController = MDCTextInputControllerOutlined(textInput: textField)
    inputController.placeholderText = "Name"

    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = .white
    textField.text = "Hit Enter Here"

    // when on, enter responds to auto-correction which is confusing when we're trying to create "chips"
    textField.autocorrectionType = UITextAutocorrectionType.no
    view.addSubview(textField)

    // position the textfield somewhere in the screen
    if #available(iOSApplicationExtension 11.0, *) {
      let guide = view.safeAreaLayoutGuide
      textField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20.0).isActive = true
      textField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20.0).isActive = true
      textField.topAnchor.constraint(equalTo: guide.topAnchor, constant: 40.0).isActive = true
    } else if #available(iOSApplicationExtension 9.0, *) {
      textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
      textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
      textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 40.0).isActive = true
    } else {
      // Fallback on earlier versions
      print("This example is supported on iOS version 9 or later.")
    }
  }
}

extension ChipTextFieldExampleViewController {

  class func catalogMetadata() -> [String: Any] {
    return [
      "breadcrumbs": ["Action Sheet", "A Chip Text Field"],
      "primaryDemo": false,
      "presentable": false,
    ]
  }
}
