//
//  ViewController.swift
//  charity360
//
//  Created by user1 on 29/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yourEventsSegmentView: UIView!
    @IBOutlet weak var account: UISegmentedControl!
    @IBOutlet weak var loginSegmentView: UIView!
    @IBOutlet weak var registerSegmentView: UIView!
    //@IBOutlet weak var paymentField: UITextField!
    @IBOutlet weak var viewAllButton: UIButton!
    
    //let methods = ["GPay", "PayTM", "PhonePe", "BHIM"]
    
    //var methodPickerView = UIPickerView()
    
    
    @IBOutlet weak var paymentMethod: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setPopupButton()
        //paymentField?.textAlignment = .center
        
       // paymentField?.inputView = methodPickerView
       // methodPickerView.delegate = self
        //methodPickerView.dataSource = self

        //methodPickerView.tag = 1
    }
    
    
    @IBAction func loginRegister(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(loginSegmentView)
        case 1:
            self.view.bringSubviewToFront(registerSegmentView)
        default:
            break
        }
    }
    
    /*@IBAction func viewAllButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ViewAll", sender: self)
    }*/
    
    func setPopupButton() {
        let optionClosure = {(action : UIAction) in
            print(action.title)}
        
        paymentMethod?.menu = UIMenu(children : [
            UIAction(title: "Choose your Payment Method", state: .on, handler: optionClosure),
            UIAction(title: "Paytm", handler: optionClosure),
            UIAction(title: "Google Pay", handler: optionClosure),
            UIAction(title: "PhonePe", handler: optionClosure),
            UIAction(title: "Credit/Debit Card", handler: optionClosure),
            UIAction(title: "Net Banking", handler: optionClosure)])
        
        paymentMethod?.showsMenuAsPrimaryAction = true
        paymentMethod?.changesSelectionAsPrimaryAction = true
    }
}

//extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        switch pickerView.tag {
//        case 1:
//            return methods.count
//        default:
//            return 1
//        }
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        switch pickerView.tag {
//        case 1:
//          //
//            return methods[row]
//        default:
//            return "Data not found"
//        }
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        //paymentField.text = pickerView.textInputContextIdentifier
//        switch pickerView.tag {
//        case 1:
//            paymentField.text = methods[row]
//            paymentField.resignFirstResponder()
//        default:
//            return
//        }
//    }
//}

@IBDesignable
class DesignableView: UIView {
}

@IBDesignable
class DesignableButton: UIButton {
}

@IBDesignable
class DesignableLabel: UILabel {
}

@IBDesignable
class DesignableTextView: UITextView{
    
}

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
// START THE CODE

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
}

