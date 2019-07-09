//
//  StudentTableViewCell.swift
//  TabViewAndPListConcept
//
//  Created by Ankita Pabbi on 2019-07-08.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

  
    
    @IBOutlet weak var lblStudentId: UILabel!
    
    @IBOutlet weak var lblStudentName: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var imageStudent: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
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
