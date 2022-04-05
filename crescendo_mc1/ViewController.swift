//
//  ViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 05/04/22.
//

import UIKit

class ViewController: UIViewController {
    //Data "TOKECANG" Song
    var songTitle = "Tokecang"
    var songAuthor = "R.C. Hardjosubroto"
    var songArea = "Jawa Barat"
    var originalLyrics = "Tokecang tokecang bala gendir tosblong \n\nAngeun kacang angeun kacang sapependil kosong \n\nAya listrik di masigit meuni caang katingalna \n\nAya istri jangkung alit karangan dina pipina \n\nTokecang tokecang bala gendir tosblong \n\nAngeun kacang angeun kacang sapependil kosong."
    
    var indonesianLyrics = "Tokecang tokecang mencuri kenndil bolong \nSayur kacang sayur kacang seperiuk kosong \nAda listrik di masigit begitu terang terlihat \nAda perempuan tinggi langsing ada tahi lalat di pipinya \nTokecang tokecang bala gendir tosblong \nSayur kacang sayur kacang seperiuk kosong."
    
    var backImage: UIImage = UIImage(named: "child-eat.jpeg")!
    
    //IBOutlet
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var lyricsView: UITextView!
    @IBOutlet weak var indoLyricsVier: UITextView!
    
    @IBOutlet weak var musicDuration: UISlider!
    
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicAuthor: UILabel!
    @IBOutlet weak var musicArea: UILabel!
    @IBOutlet weak var currTime: UILabel!
    @IBOutlet weak var timeLeft: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    
    
    //Data Control
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup background image
        backgroundImage.image = backImage
        
        //Setup Image cover
        coverImage.image = backImage
        
        //Setup Original Lyrics
        lyricsView.text = originalLyrics
        // Do any additional setup after loading the view.
    }


}

