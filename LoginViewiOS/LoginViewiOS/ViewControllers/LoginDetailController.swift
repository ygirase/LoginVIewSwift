//
//  LoginDetailController.swift
//  LoginViewiOS
//
//  Created by RAILS-MAC-PC on 3/3/17.
//  Copyright © 2017 RAILS-MAC-PC. All rights reserved.
//

import UIKit

class LoginDetailController: UIViewController {

    var loginUserDetails = [String: Any]()
    
    @IBOutlet weak var ProfilePicture: UIImageView!
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPhoneNumber: UILabel!
    @IBOutlet weak var labelDateOfBirth: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupLoginUserDetails()
    }

    func setupLoginUserDetails () {
        
        self.ProfilePicture.image = self.loginUserDetails["profilepic"] as! UIImage?
        self.labelUserName.text = String(format:"Name: %@", (self.loginUserDetails["username"] as! String?)!)
        self.labelEmail.text =  String(format:"Email: %@",(self.loginUserDetails["email"] as! String?)!)
        self.labelPhoneNumber.text = String(format:"PhoneNumber: %@",(self.loginUserDetails["phonenumber"] as! String?)!)
        self.labelDateOfBirth.text = String(format:"DateOfBirth: %@",(self.loginUserDetails["dateofbirth"] as! String?)!)
        self.labelGender.text = String(format:"Gender: %@",(self.loginUserDetails["gender"] as! String?)!)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
