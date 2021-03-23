import UIKit
import AVFoundation
class ViewController: UIViewController{
    
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let index = sender.tag
        let url = Bundle.main.url(forResource: "note\(index)", withExtension: "wav")
        do{
            try player = AVAudioPlayer(contentsOf: url!)
            player.play()
        }catch{
            print(error)
        }
       
        
        
        
    }
    
  

}

