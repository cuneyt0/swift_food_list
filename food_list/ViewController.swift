//
//  ViewController.swift
//  food_list
//
//  Created by Cuneyt on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodTableView: UITableView!
    
    var foodList = [Food]()
    override func viewDidLoad() {
        foodTableView.dataSource=self
        foodTableView.delegate=self
        let y1 = Food(Id: 1, name: "Ayran", price: 3.0, imageName: "ayran")
        let y2 = Food(Id: 2, name: "Baklava", price: 20.0, imageName: "baklava")
        let y3 = Food(Id: 3, name: "Fanta", price: 5.0, imageName: "fanta")
        let y4 = Food(Id: 4, name: "Izgara Somon", price: 25.0, imageName: "izgarasomon")
        let y5 = Food(Id: 5, name: "Izgara Tavuk", price: 15.0, imageName: "izgaratavuk")
        let y6 = Food(Id: 6, name: "Kadayıf", price: 16.0, imageName: "kadayif")
        let y7 = Food(Id: 7, name: "Kahve", price: 6.0, imageName: "kahve")
        let y8 = Food(Id: 8, name: "Köfte", price: 15.0, imageName: "kofte")
        let y9 = Food(Id: 9, name: "Lazanya", price: 21.0, imageName: "lazanya")
        let y10 = Food(Id: 10, name: "Makarna", price: 13.0, imageName: "makarna")
        let y11 = Food(Id: 11, name: "Pizza", price: 18.0, imageName: "pizza")
        let y12 = Food(Id: 12, name: "Su", price: 1.0, imageName: "su")
        let y13 = Food(Id: 13, name: "Sütlaç", price: 10.0, imageName: "sutlac")
        let y14 = Food(Id: 14, name: "Tiramisu", price: 16.0, imageName: "tiramisu")
        //Verilerin Listeye Eklenmesi
        foodList.append(y1)
        foodList.append(y2)
        foodList.append(y3)
        foodList.append(y4)
        foodList.append(y5)
        foodList.append(y6)
        foodList.append(y7)
        foodList.append(y8)
        foodList.append(y9)
        foodList.append(y10)
        foodList.append(y11)
        foodList.append(y12)
        foodList.append(y13)
        foodList.append(y14)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource,FoodTableViewCellProtocol{
    func toGiveOrder(indexPath: IndexPath) {
        let response = foodList[indexPath.row]
        print("\(response.name!) sipariş verildi.Kazanç \(response.price!)")
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let response = foodList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodTableViewCell
        
        cell.foodName.text = response.name
        cell.foodPrice.text = "\(response.price!) TL"
        cell.foodImage.image = UIImage(named: response.imageName!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell    }
    
    
}

