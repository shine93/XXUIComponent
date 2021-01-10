//
//  ViewController.swift
//  XXUIComponent
//
//  Created by 魏梦雪 on 2020/8/28.
//  Copyright © 2020 魏梦雪. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let functionArray = ["Alerts"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return functionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XXCellID", for: indexPath)
        cell.textLabel?.text = functionArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc: UIViewController
        switch indexPath.row {
        case 0:
            vc = XXAlertViewController()
        default:
            vc = UIViewController()
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
