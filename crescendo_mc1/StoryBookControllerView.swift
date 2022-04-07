//
//  StoryBookControllerView.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 06/04/22.
//

import UIKit

class StoryBookControllerView: UIViewController {
    
    var storyMinutes = 5
    var storyTitle = "Diki yang Rakus"
    var storySong = "Tokecang"
    var coverImage: UIImage = UIImage(named: "child-eat.jpeg")!
    
    @IBOutlet weak var storyImageCover: UIImageView!
    @IBOutlet weak var storyFrontTitle: UILabel!
    @IBOutlet weak var storyFrontSong: UILabel!
    @IBOutlet weak var storyDuration: UILabel!
    @IBOutlet weak var songDetailButton: UIButton!
    @IBOutlet weak var startStory: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyFrontTitle.text = storyTitle
        storyFrontSong.text = "Cerita Mengenai Lagu Daerah \(storySong)"
        storyDuration.text = "\(storyMinutes) Menit"
        storyImageCover.image = coverImage

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
