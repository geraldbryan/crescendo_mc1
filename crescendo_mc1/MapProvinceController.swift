//
//  MapProvinceController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 07/04/22.
//

import UIKit

class MapProvinceController: UIViewController {
    
    func ChangeArea() {
        areaName.text = provinceName[currProvince]
        areaImage.image = islandImage[currProvince]
     }
    
    var provinceName = ["Jawa Barat", "Jawa Tengah", "Jawa Timur", "DKI Jakarta", "DI Yogyakarta", "Banten"]
    
    var islandImage = [UIImage(named: "happy.jpeg"),UIImage(named: "10000-hours.jpeg"), UIImage(named: "happy.jpeg"),UIImage(named: "child-eat.jpeg"),UIImage(named: "happy.jpeg"),UIImage(named: "child-eat.jpeg")]
    
    var currProvince: Int = 0
    
    @IBOutlet weak var selectButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var areaImage: UIImageView!
    @IBOutlet weak var areaName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        areaName.text = provinceName[currProvince]
        areaImage.image = islandImage[currProvince]
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if currProvince ==  provinceName.count-1 {
            currProvince = 0
        } else {
            currProvince += 1
        }
        ChangeArea()
    }
    
    @IBAction func prevButton(_ sender: Any) {
        if currProvince == 0 {
            currProvince = provinceName.count-1
        } else {
            currProvince -= 1
        }
        ChangeArea()
        
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
