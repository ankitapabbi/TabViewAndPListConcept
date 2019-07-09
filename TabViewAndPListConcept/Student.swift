//
//  Student.swift
//  TabViewAndPListConcept
//
//  Created by Ankita Pabbi on 2019-07-08.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
struct Student
{
    var studentId : String = ""
    var studentName : String = ""
    var city : String = ""
    static var userDict : [String:Student] = [:]
    init(studentId : String,studentName : String,city : String)
    {
        self.studentId = studentId
        self.studentName = studentName
        self.city = city
    }
    
    static func addStudent(studentObj : Student)
    {
        userDict.updateValue(studentObj, forKey: studentObj.studentId)
    }
    
}
