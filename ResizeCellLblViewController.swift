//
//  ResizeCellLblViewController.swift
//  DemoResizingCell
//
//  Created by Surbhi on 21/12/17.
//  Copyright © 2017 Demo. All rights reserved.
//

import UIKit

class ResizeCellLblViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}

extension ResizeCellLblViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.item == 0{
            return 70
        }
        if indexPath.item == 10{
            return 70
        }

        return 95
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDataCell", for: indexPath) as! cellDataCell
        
        if indexPath.item == 0{
            cell.topLblConstriant.constant = -15
            cell.lbl1.isHidden = true
        }
        else if indexPath.item == 10{
            cell.topLblConstriant.constant = -15
            cell.lbl1.isHidden = true
        }else{
            cell.topLblConstriant.constant = 10
            cell.lbl1.isHidden = false

        }
        
        return cell
    }
    
    
}

class cellDataCell:UITableViewCell{
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var topLblConstriant: NSLayoutConstraint!

}



