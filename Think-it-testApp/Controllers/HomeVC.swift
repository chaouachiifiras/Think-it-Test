//
//  HomeVC.swift
//  Think-it-testApp
//
//  Created by Firas CHOUACHI on 11/19/20.
//  Copyright © 2020 Firas CHOUACHI. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate



class HomeVC: UITableViewController,UITextFieldDelegate {
    
    

    @IBOutlet weak var homeImage: UIImageView!
    
    @IBOutlet weak var smartyLabel: UILabel!
    
    @IBOutlet weak var welcomeHomeLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var continueButton: UIButton!
    
    
   
    
    override func viewDidLoad() {
        nameTextField.delegate = self 
        super.viewDidLoad()
        homeImage.image = UIImage(named: "home")
        smartyLabel.text = "Smarty"
        smartyLabel.textColor = UIColor(red: 13/255, green: 18/255, blue: 21/255, alpha: 1)
        welcomeHomeLabel.text = "Welcome Home"
        welcomeHomeLabel.textColor = UIColor(red: 142/255, green: 146/255, blue: 149/255, alpha: 1)
        nameTextField.backgroundColor = UIColor.white
        nameTextField.layer.borderColor = UIColor.black.cgColor
        nameTextField.placeholder = "Your Name"
        
        nameTextField.layer.borderWidth = 1
        continueButton.layer.cornerRadius = 10
        continueButton.layer.backgroundColor = UIColor(red: 4/255, green: 123/255, blue: 239/255, alpha: 1).cgColor
        
        
       
     
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func continueButtPressed(_ sender: Any ){
        
        
        UserDefaults.standard.set(nameTextField.text, forKey: "Name")
      
       
            let vc = storyboard?.instantiateViewController(withIdentifier: "detailVC") as? DetailVC
        
           
            present(vc!,animated: true)
            
            
            
       
    }
    
   
   
    
}

