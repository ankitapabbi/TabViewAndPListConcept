//
//  FirstViewController.swift
//  TabViewAndPListConcept
//
//  Created by Ankita Pabbi on 2019-07-08.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblColors: UITableView!
    
    var colorsArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblColors.delegate = self
        self.tblColors.dataSource = self
        
        readColorsFromPListFile()
        // Do any additional setup after loading the view.
    }

    func readColorsFromPListFile() {
        let pList = Bundle.main.path(forResource: "StudentInfo", ofType: "plist")
        print(pList)
        //let dict = NSMutableDictionary(contentsOfFile: pList!)
        if let dict = NSDictionary(contentsOfFile: pList!)
        {
            // Reading the colors
            if let colors = dict["Colors"] as? [String]
            {
                self.colorsArray += colors
                self.tblColors.reloadData()
            }
        }
        

}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = self.colorsArray[indexPath.row]
        return cell
    }
    
}

