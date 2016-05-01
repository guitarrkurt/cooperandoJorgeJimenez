//
//  DescripcionViewController.swift
//  Coperando
//
//  Created by guitarrkurt on 01/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class DescripcionViewController: UIViewController {
    
//MARK: - Outlets
    @IBOutlet weak var labelDescripcion: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!

//MARK: - Propertys
    var txtLabDescr = String()
    var nameImage = String()
    var txtLabTit = String()

//MARK: - Constructor
    override func viewDidLoad() {
        super.viewDidLoad()

        imagen.image = UIImage(named: nameImage)
        labelTitulo.text = txtLabTit
        labelDescripcion.text = txtLabDescr
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
