//
//  DetailedViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Luis Calle on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalDescription: UITextView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalOriginLabel: UILabel!
    @IBOutlet weak var animalClassificationLabel: UILabel!
    
    var animal: ZooAnimal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let animal = animal else {
            return
        }
        animalImage.image = UIImage(named: String(animal.imageNumber))
        animalDescription.text = animal.info
        animalNameLabel.text = animal.name
        animalOriginLabel.text = animal.origin
        animalClassificationLabel.text = animal.classification
        // Do any additional setup after loading the view.
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
