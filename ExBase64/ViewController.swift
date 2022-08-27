//
//  ViewController.swift
//  ExBase64
//
//  Created by 김종권 on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Data -> base64 String
    let data = Data()
    let base64String = data.base64EncodedString()
    
    // String -> base64 Data
    let someString = "someString"
    let base64Data = someString.base64Data
    print(base64Data)

    // String -> base64String
    let base64String2 = someString.asBase64
    print(base64String2?.asBase64)

    print(base64Data?.base64EncodedString() == base64String2?.asBase64) // true
  }
}

// MARK: Encoding & Decoding
extension String {
  var base64Data: Data? {
    let utf8Data = self.data(using: .utf8)
    return utf8Data?.base64EncodedData()
  }
  var asBase64: String? {
    let utf8Data = self.data(using: .utf8)
    return utf8Data?.base64EncodedString()
  }
}
