//
//  DetailVC.swift
//  Think-it-testApp
//
//  Created by Firas CHOUACHI on 11/19/20.
//  Copyright © 2020 Firas CHOUACHI. All rights reserved.
//

import UIKit
import CoreData

class DetailVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var welcomLabel: UILabel!
  
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        getCurrentDate()
        
        dateLabel.textColor = UIColor(red: 142/255, green: 146/255, blue: 149/255, alpha: 1)
        welcomLabel.textColor = UIColor(red: 13/255, green: 18/255, blue: 21/255, alpha: 1)
        
        welcomLabel.text = "Welcome, \(String(describing: UserDefaults.standard.object(forKey: "Name")!))"
        
        
      
        
      
        
        
    }
    // getting the current date
    func getCurrentDate() {
        
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        let str = formatter.string(from: currentDate )
        dateLabel.text = str
        
        
        
    }
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return   DataServie.instance.getRooms().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell") as?
            RoomCellTableViewCell {
            
            cell.updateCell(room: DataServie.instance.getRooms()[indexPath.row])
            
            
            return cell
        }else {
            return RoomCellTableViewCell()
            
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
