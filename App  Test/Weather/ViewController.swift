//
//  ViewController.swift
//  Weather
//
//  Created by LongDengYu on 2021/3/23.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON
class ViewController: UIViewController,CLLocationManagerDelegate,SelectedCityDelegate {
    
    let API_KEY: String = "dc1c0b55672fd150cd11c1c757f6bf1d"
    var weather = Weather()
    //实例化当前CLLocationManager
    var locationManager = CLLocationManager()
   
    @IBOutlet weak var TempView: UILabel!
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var CityView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self//地址的委托人为当前的ViewController
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters//设置位置精度
        locationManager.requestLocation()//真正获取用户地址once
    }
    func didChangeCity(text: String) {
        let paras = ["city": text]
        getWeather(paras: paras)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        locationManager.requestWhenInUseAuthorization()//请求 获取当前位置
        
    }
    //获取当前经纬度  又ViewController调用
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lat = locations[0].coordinate.latitude
        let lon = locations[0].coordinate.longitude
        let paras = ["lat": "\(lat)", "lon": "\(lon)", "APIKEY": API_KEY]
        getWeather(paras: paras)
    }
    
    func getWeather(paras: [String: String]){
        AF.request("https://api.openweathermap.org/data/2.5/weather", parameters: paras).responseJSON{responds in
            if let json = responds.value{
                let dictJSON = JSON(json)
                //对weather变量赋值
                self.creatWeather(dictJSON: dictJSON)
                //改变View
                self.updateUI()
            }
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "SelectedCity"{
            let vc = segue.destination as! SelectedCityController
            vc.currentCity = weather.city
            vc.delegate = self
        }
    }
    func creatWeather(dictJSON: JSON){
        weather.city = dictJSON["name"].stringValue
        weather.temp = Int(round(dictJSON["main","temp"].doubleValue - 273.15))
        weather.conditionId = dictJSON["weather",0,"id"].intValue
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        print("获取位置失败")
    }
    func updateUI(){
        self.CityView.text = self.weather.city
        self.TempView.text = String(self.weather.temp) + "˚"
        self.UIImageView.image = UIImage(named: self.weather.icon)
    }
}
// API key dc1c0b55672fd150cd11c1c757f6bf1d

