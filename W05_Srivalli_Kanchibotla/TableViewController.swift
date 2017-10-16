//
//  TableViewController.swift
//  W05_Srivalli_Kanchibotla
//
//  Created by KANCHIBOTLA SRIVALLI  on 9/17/16.
//  Copyright © 2016 KANCHIBOTLA SRIVALLI . All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   
    var sectionHeaders = ["Pick Ups", "Drop Offs"]
    var count = 0
    
    var pickupDatasource: [(name :String, location: String)] = []
    var dropDatasource: [(name :String, location: String)] = []
    let noOfRowsInSection = [pickUp.count,drop.count]
    var sections = [pickUp,drop]
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsMultipleSelection = true
        
        if let view = view as? UITableView {
            // Move the top of content down 20 units.
            view.contentInset.top = 20
            // Also move top of scroll bar.
            view.scrollIndicatorInsets.top = 20
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        for i in 0..<pickUp.count {
            pickupDatasource.append((pickUp[i].roadName.appending(" "+String(pickUp[i].carNumber)),pickUp[i].location))
        }
        for j in 0..<drop.count{
            dropDatasource.append((drop[j].roadName.appending(" "+String(drop[j].carNumber)),drop[j].location))

        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionHeaders.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            count = pickupDatasource.count
        }
        if section == 1{
            count = dropDatasource.count
        }
        return count
    }
    

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        
        
        
     
        let backgroundView = UIView()
        backgroundView.backgroundColor = #colorLiteral(red: 0.5219543576, green: 0.7994346619, blue: 0.346042335, alpha: 1)
        cell.selectedBackgroundView = backgroundView
        
        // Configure the cell...
        if(indexPath.section == 0){
            
            
            
            let cellData: (name: String, location: String) = pickupDatasource[indexPath.row]
            cell.textLabel?.text = cellData.name
            cell.detailTextLabel?.text = cellData.location
          
            
                    }
        if(indexPath.section == 1){
            
            let cellData: (name: String, location: String) = dropDatasource[indexPath.row]
            cell.textLabel?.text = cellData.name
            cell.detailTextLabel?.text = cellData.location
        }
       
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeaders[section]
    }
    override func becomeFirstResponder() -> Bool {
        return true
    }

   
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if motion == .motionShake{
           // self.sectionHeaders = ["hello","hi"]
            
            
                while tableView.indexPathsForSelectedRows != nil {
                    if let i=tableView.indexPathForSelectedRow{
                
                if (i.section == 0) {
                    
                    pickupDatasource.remove(at: i.row)
                    tableView.deleteRows(at: [i], with: .fade)
                    
                }
                if (i.section == 1) {
                    
                    
                    dropDatasource.remove(at: i.row)
                    tableView.deleteRows(at: [i], with: .fade)
                }
                    
        
                }
                }
            
        
            self.tableView.reloadData()
         
    }
    }
  
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do n    ot want the specified item to be editable.
     return true
     }
     */
    
    
     // Override to support editing the table view.
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
