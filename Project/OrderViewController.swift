//
//  OrderViewController.swift
//  Project
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var etcLabel: UILabel!
    @IBOutlet var addText: UITextField!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddressView" {
            let destVC = segue.destination as! AddressViewController
            let addressString: String? = addText.text
            
            destVC.address = addressString
        }
    }
    //주문내역 및 기타 요구사항
    var info: String?
    var etc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contentString = info {
            infoLabel.text = contentString
        }
        
        if let contentString = etc {
            etcLabel.text = contentString
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
