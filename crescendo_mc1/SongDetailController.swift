//
//  SongDetailController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 06/04/22.
//

import UIKit

class SongDetailController: UIViewController {
    
    //Variables
    var coverImage: UIImage = UIImage(named: "child-eat.jpeg")!
    var songTitle = "Tokecang"
    var songWriter = "R. C. Hardjosubroto"
    var songPlace = "Jawa Barat"
    
    //Outlets
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicWriter: UILabel!
    @IBOutlet weak var musicPlace: UILabel!
    @IBOutlet weak var musicCoverImage: UIImageView!
    @IBOutlet weak var readStory: UIButton!
    @IBOutlet weak var listenSong: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define music title
        musicTitle.text = songTitle
        musicWriter.text = songWriter
        musicPlace.text = songPlace
        musicCoverImage.image = coverImage

        // Do any additional setup after loading the view.
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
