//
//  Utilitu.swift
//  LoginViewiOS
//
//  Created by RAILS-MAC-PC on 3/2/17.
//  Copyright © 2017 RAILS-MAC-PC. All rights reserved.
//

import Foundation
import UIKit

class Utility: NSObject {
    
    
    class func validateEmail(email:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    class func trimString(value:String)-> String{
        
        return value.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
    }
    
    class func showAlertOnViewController(
        targetVC: UIViewController,
        title: String,
        message: String)
    {
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertControllerStyle.alert)
        let okButton = UIAlertAction(
            title:"OK",
            style: UIAlertActionStyle.default,
            handler:
            {
                (alert: UIAlertAction!)  in
        })
        alert.addAction(okButton)
        targetVC.present(alert, animated: true, completion: nil)
    }
    
}
