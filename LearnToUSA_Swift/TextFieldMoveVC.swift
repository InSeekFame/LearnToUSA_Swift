//
//  TextFieldMoveVC.swift
//  LearnToUSA_Swift
//
//  Created by luoxingrong on 2020/6/29.
//  Copyright © 2020 luoxingrong. All rights reserved.
//

import UIKit

class TextFieldMoveVC: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "多个TextField间切换而键盘不上下切换"
        
        textField.delegate = self
        textField2.delegate = self
    }

    // Keyboard shows
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -300, up: true)
    }
    
    // Keyboard hidden
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -300, up: false)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func moveTextField(textField: UITextField, moveDistance: Int, up: Bool){
        let moveDuration = 0.3
//        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        let movement: CGFloat = CGFloat(up ? moveDistance : 0)
        UIView.beginAnimations("animateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = CGRect(x: 0, y: movement, width: view.frame.width, height: view.frame.height)
        UIView.commitAnimations()
    }

}
