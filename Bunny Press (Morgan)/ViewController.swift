//
//  ViewController.swift
//  Bunny Press (Morgan)
//
//  Created by NYCDOE on 3/28/18.
//  Copyright © 2018 CM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theStatus: UILabel!
    @IBOutlet weak var bunImageView: UIImageView!
    @IBOutlet weak var theTitle: UILabel!
    //sorry I've been watching a lot of Vines?
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //will change to default settings.
        theStatus.text = "Need pets plz."
    }

    //not using this one
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onBunPress(_ sender: Any) {
        counter += 1;
        if counter == 1 {
            print("You have pt the bun \(counter) time.")
        }
        else {
        print("You have pet the bun \(counter) times.")
        }
        if counter >= 10 {
            bunImageView.image = #imageLiteral(resourceName: "bunnyangry")
            theStatus.text = "TOO MANY PETS."
        }
    }
    
}

