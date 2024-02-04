//
//  ViewController.swift
//  tableView
//
//  Created by Kamila Kenesova on 04.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
  //  var seriesNames = ""
  //  var seriesCountry = ""
  //  var imageName = ""
    
    var series = Series()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = series.seriesNames
        labelCountry.text = series.seriesCountry
        imageView.image = UIImage(named: series.imagename)
        
    
    }


}

