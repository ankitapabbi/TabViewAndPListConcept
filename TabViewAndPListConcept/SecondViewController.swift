//
//  SecondViewController.swift
//  TabViewAndPListConcept
//
//  Created by Ankita Pabbi on 2019-07-08.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var tblStudent: UITableView!
    
    var students = [Student]()
    override func viewDidLoad() {
       
        self.tblStudent.delegate = self
        self.tblStudent.dataSource = self
        readStudentInfoPListFile()
         super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func readStudentInfoPListFile() {
        let pList = Bundle.main.path(forResource: "StudentInfo", ofType: "plist")
        print(pList)
        //let dict = NSMutableDictionary(contentsOfFile: pList!)
        if let dict = NSDictionary(contentsOfFile: pList!)
        {
        
            // Reading Student Array
            if let students = dict["Students"] as? [[String:Any]] {
                print(students)
                for student in students {
                    let studentId = String(student["studentId"] as! Int)
                    let studentName = student["studentName"] as! String
                    let city = student["city"] as! String
                    self.students.append(Student(studentId: studentId, studentName: studentName, city: city))
                    self.tblStudent.reloadData()
                }
            }
        }
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // studentCell
        let  cell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as! StudentTableViewCell
          let stud = self.students[indexPath.row]
    
        cell.lblStudentId.text = "Student ID : \(stud.studentId)"
        cell.lblStudentName.text = "Name : \(stud.studentName)"
        cell.lblCity.text = "City : \(stud.city)"
        
        return cell

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
}

