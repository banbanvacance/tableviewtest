//
//  ViewController.swift
//  FliCalc
//
//  Created by 板東慶一郎 on 2016/12/31.
//  Copyright © 2016年 板東慶一郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var row:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        flexibleTable.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    @IBAction func increaseRow(_ sender: AnyObject) {
        row = row + 1
        flexibleTable.reloadData() //
    }
    @IBOutlet weak var flexibleTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return row
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) 
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

