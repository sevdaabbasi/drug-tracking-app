//
//  TableViewController.swift
//  DrugTrackingApp
//
//  Created by Sevda Abbasi on 26.04.2025.
//

import UIKit
import CoreData

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet var tableView: UITableView!
   // @NSManaged var name: String
    
   
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func fetcMedicines(){
        do{
            medicines = try context.fetch(Medicine.fetchRequest())
            tableView.reloadData()
        }catch{
            print("Veriler çekilmedi: \(error.localizedDescription)")
        }
    }
    var medicines: [Medicine] = []
    
   /* struct Medicine{
        let name: String
    }
    
    var medicines: [Medicine] = [Medicine(name: "Aferin"), Medicine(name: "Parol")]
    //let medicineList = ["Aferin", "Parol", "Dolorex"]
    
   */
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = "İlaç Listesi"
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicines.count
       // return medicineList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        let medicine = "aaa"
        return cell
        
        
        
        
        
        /*
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = medicineList[indexPath.row]
        return cell*/
    }
    
}
