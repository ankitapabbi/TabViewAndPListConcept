//
//  ThirdViewController.swift
//  TabViewAndPListConcept
//
//  Created by Ankita Pabbi on 2019-07-08.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        readStudentInfoPListFile()
        // Do any additional setup after loading the view.
    }
    
    func readStudentInfoPListFile() {
        let pList = Bundle.main.path(forResource: "StudentInfo", ofType: "plist")
        print(pList)
        //let dict = NSMutableDictionary(contentsOfFile: pList!)
        if let dict = NSDictionary(contentsOfFile: pList!)
        {
            // Reading the colors
            if let colors = dict["Colors"] as? [String]
            {
                print(colors)
                for color in colors{
                     print(color)
                }
               
            }
            // Reading Student Array
            if let students = dict["Students"] as? [[String:Any]] {
                print(students)
                for student in students {
                    print(student["studentId"] as! Int)
                     print(student["studentName"] as! String)
                     print(student["city"] as! String)
                }
            }
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
