//
//  ViewController.swift
//  Dictionery
//
//  Created by Apple on 02/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userTableView: UITableView!
    
    var userInformation : [[String:Any]] = [["name":"Ravish",
                                             "address":"Thane",
                                             "Phone":"99899393",
                                             "image":"1.png"],
                                            ["name":"Sai",
                                             "address":"Thane",
                                             "Phone":"2342525",
                                             "image":"2.png"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userInformation.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let tempDic = userInformation[indexPath.row]
        
        cell.nameLabel.text = (tempDic["name"] as! String)
        cell.addressLabel.text = (tempDic["address"] as! String)
        
        
        return cell
    }
    
}
