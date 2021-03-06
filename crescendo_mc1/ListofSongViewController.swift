//
//  ListofSongViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 08/04/22.
//

import UIKit
import AVFoundation

class ListofSongViewController: UIViewController {
    
    var tokecangSong = AVAudioPlayer()
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var provinceName: UITextField!
    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var songAuthor: UILabel!
    @IBOutlet weak var previewSong: UIButton!
    @IBOutlet weak var mainSong: UIButton!
    @IBOutlet weak var comingSoon: UIImageView!
    
    @IBOutlet weak var bgTextImage: UIImageView!
    
    @IBOutlet weak var bgUpcomingImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "tokecang_preview", ofType: ".mp3")!
        
        let url = URL(fileURLWithPath: path)
        
        do {
            tokecangSong = try AVAudioPlayer(contentsOf: url)
            
            tokecangSong.prepareToPlay()
            }
        catch let error as NSError {
            print(error.description)
        }

        // Do any additional setup after loading the view.
        comingSoon.image = UIImage(named: "coming-soon.png")
        
        provinceName.text = "Jawa Barat"
        
        songTitle.text = "Tokecang"
        
        songAuthor.text = "R.C. Hardjosubroto"
        
        songImage.image = UIImage(named: "tokecang_cover.png")!
        
        headerImage.image = UIImage(named: "listsong_banner.png")!
        
        bgTextImage.image = UIImage(named: "bg_songlist.png")!
        
        bgUpcomingImage.image = UIImage(named: "bg_upcoming.png")
        
    }
    
    @IBAction func pressPreview(_ sender: Any){
        tokecangSong.play()
        tokecangSong.volume = 0.5
        
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
