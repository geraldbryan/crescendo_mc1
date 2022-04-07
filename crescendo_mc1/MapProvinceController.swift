//
//  MapProvinceController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 07/04/22.
//

import UIKit

class MapProvinceController: UIViewController {
    
    func ChangeArea() {
        areaName.setTitle(islandName[currIsland], for: .normal)
        areaImage.image = islandImage[currIsland]
     }
    
    var islandName = ["Jawa","Sumatera","Kalimantan","Sulawesi","Papua"]
    
    var provinceName = ["Jawa Barat", "Jawa Tengah", "Jawa Timur", "DKI Jakarta", "DI Yogyakarta", "Banten"]
    
    var islandImage = [UIImage(named: "happy.jpeg"),UIImage(named: "10000-hours.jpeg"), UIImage(named: "happy.jpeg"),UIImage(named: "child-eat.jpeg"),UIImage(named: "happy.jpeg")]
    
    var currIsland: Int = 0
    
    var currProvince: Int = 0
    
    var currTao: Int = 0
    
    @IBOutlet weak var areaName: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var areaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        areaName.setTitle(islandName[currIsland], for: .normal)
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if currIsland ==  islandName.count-1 {
            currIsland = 0
        } else {
            currIsland += 1
        }
        ChangeArea()
    }
    
    @IBAction func prevButton(_ sender: Any) {
        if currIsland == 0 {
            currIsland = islandName.count-1
        } else {
            currIsland -= 1
        }
        ChangeArea()
        
    }
    
    @IBAction func areaName(_ sender: Any) {
        if islandName[currIsland] == "Jawa" {
            areaName.setTitle("Jawa Barat", for: .normal)
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
