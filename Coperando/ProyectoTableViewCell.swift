//
//  ProyectoTableViewCell.swift
//  Coperando
//
//  Created by guitarrkurt on 01/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class ProyectoTableViewCell: UITableViewCell {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var labelDescripcion: UILabel!
    @IBOutlet weak var labelTitulo: UILabel!
    
    
    let colorView = UIView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        colorView.backgroundColor = UIColor(red: 255.0/255.0, green: 64.0/255.0, blue: 129.0/255.0, alpha: 1.0)
        self.selectedBackgroundView = colorView
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
