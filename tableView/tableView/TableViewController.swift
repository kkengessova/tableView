//
//  TableViewController.swift
//  tableView
//
//  Created by Kamila Kenesova on 04.02.2024.
//

import UIKit

class TableViewController: UITableViewController {

    //let array = [ 1, 2, 3, 4, 5]
  //  var arraySeriesNames = ["Бумажный дом", "Берлин", "Шерлок", "Игра в кальмара", "911"]
  //  var arraySeriesCountry = ["Испания", "Испания", "США", "Южная Корея", "США"]
  //  var arrayImage = ["бумажный дом", "берлин", "шерлок", "игра в кальмара", "911"]
   
    var arraySeries = [Series(seriesNames: "Бумажный дом", seriesCountry: "Испания", imagename: "бумажный дом"),
                       Series(seriesNames: "Берлин", seriesCountry: "Испания", imagename: "берлин"),
                       Series(seriesNames: "Шерлок", seriesCountry: "США", imagename: "шерлок"),
                       Series(seriesNames: "Игра в кальмара", seriesCountry: "Южная Корея", imagename: "игра в кальмара"),
                       Series(seriesNames: "911", seriesCountry: "США", imagename: "911")
                       
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addSeries(_ sender: Any) {
    //    arraySeriesNames.append("new seriesName")
    //arraySeriesCountry.append("new seriesCountry")
     //   arrayImage.append("?")
        
        arraySeries.append(Series(seriesNames: "", seriesCountry: "", imagename: "?"))
        tableView.reloadData()

    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arraySeries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text =  arraySeries[indexPath.row].seriesNames //"\(arraySeriesNames[indexPath.row])"
        
        let labelCountry = cell.viewWithTag(1001) as! UILabel
        labelCountry.text =  arraySeries[indexPath.row].seriesCountry
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image =  UIImage(named: arraySeries[indexPath.row].imagename)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as!ViewController
        
    //    detailVc.seriesNames = arraySeries[indexPath.row].seriesNames
    //    detailVc.seriesCountry = arraySeries[indexPath.row].seriesCountry
    //    detailVc.imageName = arraySeries[indexPath.row].imagename

        detailVc.series = arraySeries[indexPath.row]
        
        navigationController?.show(detailVc, sender: self)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
        //    arraySeriesNames.remove(at: indexPath.row)
         //   arraySeriesCountry.remove(at: indexPath.row)
         //   arrayImage.remove(at: indexPath.row)
          
            arraySeries.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)

        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
