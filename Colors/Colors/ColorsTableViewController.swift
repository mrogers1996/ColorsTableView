//
//  ColorsTableViewController.swift
//  Colors
//
//  Created by Mandy Rogers on 3/13/18.
//  Copyright © 2018 Mandy Rogers. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var colorsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = colorsTable.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        cell?.textLabel?.text = colors[indexPath.row]

        switch colors[indexPath.row] {
        case "red":
            cell?.backgroundColor = UIColor.red
        case "orange":
            cell?.backgroundColor = UIColor.orange
        case "yellow":
            cell?.backgroundColor = UIColor.yellow
        case "green":
            cell?.backgroundColor = UIColor.green
        case "blue":
            cell?.backgroundColor = UIColor.blue
        case "purple":
            cell?.backgroundColor = UIColor.purple
        case "brown":
            cell?.backgroundColor = UIColor.brown
        default:
            cell?.backgroundColor = UIColor.white
        }
        
        return cell!
    }


}
