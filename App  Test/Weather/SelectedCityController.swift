//
//  SelectedCityController.swift
//  Weather
//
//  Created by LongDengYu on 2021/3/25.
//

import UIKit
protocol SelectedCityDelegate {
    func didChangeCity(text: String)
}
class SelectedCityController: UIViewController {
    var currentCity: String = ""
    var delegate: SelectedCityDelegate?
    @IBOutlet weak var currentCityLabel: UILabel!
    @IBOutlet weak var TextFieldCity: UITextField!
    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func WeatherButton(_ sender: Any) {
        delegate?.didChangeCity(text: TextFieldCity.text!)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        currentCityLabel.text = currentCity
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  
    */

}
