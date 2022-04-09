//
//  MapProvinceController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 07/04/22.
//

import UIKit

class MapIslandController: UIViewController {
    
    func ChangeArea() {
        areaName.text = islandName[currIsland]
        areaImage.image = islandImage[currIsland]
     }
    
    var islandName = ["Jawa","Kalimantan"]
    
    var islandImage = [UIImage(named: "happy.jpeg"),UIImage(named: "background-song.png"), UIImage(named: "happy.jpeg"),UIImage(named: "child-eat.jpeg"),UIImage(named: "happy.jpeg")]
    
    var currIsland: Int = 0
    
    var currProvince: Int = 0
    
    var currTao: Int = 0
    
    @IBOutlet weak var selectButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var areaImage: UIImageView!
    @IBOutlet weak var areaName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        areaName.text = islandName[currIsland]
        areaImage.image = islandImage[currIsland]
        

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
    
    @IBAction func selectButton(_ sender: Any) {
        if currIsland == 0 {
            performSegue(withIdentifier: "NextPage", sender: self)
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
