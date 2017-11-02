//
//  ZooViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Luis Calle on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ZooViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var animalTableView: UITableView!
    var zooData = [ZooAnimal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        animalTableView.delegate = self
        animalTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        self.zooData = ZooAnimal.zooAnimals
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zooData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal = zooData[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Animal Cell", for: indexPath)
        cell.textLabel?.text = animal.name
        cell.detailTextLabel?.text = animal.info
        cell.imageView?.image = UIImage(named: String(animal.imageNumber))
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
