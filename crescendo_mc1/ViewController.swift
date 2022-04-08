//
//  ViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 05/04/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //Data "TOKECANG" Song
    var songTitle = "Tokecang"
    var songAuthor = "R.C. Hardjosubroto"
    var songComposer = "VJ Raja Olan"
    var songArea = "Jawa Barat"
    var originalLyrics = "Tokecang tokecang bala gendir tosblong \n\nAngeun kacang angeun kacang sapependil kosong \n\nAya listrik di masigit meuni caang katingalna \n\nAya istri jangkung alit karangan dina pipina \n\nTokecang tokecang bala gendir tosblong \n\nAngeun kacang angeun kacang sapependil kosong."
    
    var indonesianLyrics = "Tokecang tokecang mencuri kenndil bolong \nSayur kacang sayur kacang seperiuk kosong \nAda listrik di masigit begitu terang terlihat \nAda perempuan tinggi langsing ada tahi lalat di pipinya \nTokecang tokecang bala gendir tosblong \nSayur kacang sayur kacang seperiuk kosong."
    
    var backImage: UIImage = UIImage(named: "child-eat.jpeg")!
    
    var tokecangSong = AVAudioPlayer()
    
    var isPlaying = false
    
    //IBOutlet
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var lyricsView: UITextView!
    @IBOutlet weak var composerName: UILabel!
    
    @IBOutlet weak var musicDuration: UISlider!
    
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicAuthor: UILabel!
    @IBOutlet weak var musicArea: UILabel!
    @IBOutlet weak var currTime: UILabel!
    @IBOutlet weak var timeLeft: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    
    
    //Data Control
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tokecang Music
        let path = Bundle.main.path(forResource: "tokecang", ofType: ".mp3")!
        
        let url = URL(fileURLWithPath: path)
        
        do {
            tokecangSong = try AVAudioPlayer(contentsOf: url)
            
            tokecangSong.prepareToPlay()
            }
        catch let error as NSError {
            print(error.description)
        }
        
        //Setup background image
        //backgroundImage.image = backImage
        
        //Setup Image cover
        coverImage.image = backImage
        
        //Setup Original Lyrics
        lyricsView.text = originalLyrics
        
        composerName.text = songComposer
        
        musicAuthor.text = songAuthor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressButton(_ sender: Any) {
        
        if isPlaying == false {
            //setup player and play
            playButton.setImage(UIImage(systemName: "pause.circle.fill"), for: .normal)
            tokecangSong.play()
            isPlaying = true
        } else {
            // stop playing
            playButton.setImage(UIImage(systemName: "play.circle.fill"), for: .normal)
            tokecangSong.pause()
            isPlaying = false
        }
        
    }


}

