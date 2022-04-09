//
//  ListofSongViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 08/04/22.
//

import UIKit

class ListofSongViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var provinceName: UITextField!
    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var songAuthor: UILabel!
    @IBOutlet weak var previewSong: UIButton!
    @IBOutlet weak var mainSong: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        provinceName.text = "Jawa Barat"
        
        songTitle.text = "Tokecang"
        
        songAuthor.text = "R.C. Hardjosubroto"
        
        songImage.image = UIImage(named: "happy.jpeg")!
        
        headerImage.image = UIImage(named: "happy.jpeg")!
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
