//
//  ViewController.swift
//  hw3_asynchronous
//
//  Created by 曾問 on 2021/3/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stationID: UILabel!
    @IBOutlet var stationName: UILabel!
    @IBOutlet var stationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStationData(id: "", name: "", address: "")
        self.getRemoteDataFromUrl()
    }
    
    func setStationData(id: String, name: String, address: String){
        stationID.text = id
        stationName.text = name
        stationAddress.text = address
    }
    
    func getRemoteDataFromUrl(){
        let sourceUrl = URL(string: "https://stations-98a59.firebaseio.com/practice.json")
        let configuration = URLSessionConfiguration.default
        configuration.waitsForConnectivity = true
        let session = URLSession(configuration: configuration)
        
        DispatchQueue.global(qos: .userInitiated).async {
            let task = session.dataTask(with: sourceUrl!){
                (data, response, error) in
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    return
                }
                guard let data = data else{
                    print(error.debugDescription)
                    return
                }
                if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String?{
                    do {
                        if let json = try JSONSerialization.jsonObject(with: Data(result.utf8), options: []) as? [String: Any] {
                            DispatchQueue.main.async {
                                guard let id = json["stationID"] as? String else{
                                    return
                                }
                                guard let name = json["stationName"] as? String else{
                                    return
                                }
                                guard let address = json["stationAddress"] as? String else{
                                    return
                                }
                                self.setStationData(id: id, name: name, address: address)
                            }
                            
                        }
                    } catch let error as NSError {
                        print("Json parse error : \(error.localizedDescription)")
                    }
                    
                }
            }
            task.resume()
        }
    }
}

