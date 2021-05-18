//
//  DictionaryTableViewCell.swift
//  Words Mine
//
//  Created by Warit Karnbunjob on 19/5/2564 BE.
//

import UIKit

class DictionaryTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        subTitleLabel.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley"
        
        //Set GradientColor
        setGradientBackground()
        
        //Set Border cardView
        cardView.layer.cornerRadius = 12
        cardView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK : - Set gradient backgroud
    func setGradientBackground() {
        let colorTop =  UIColor(red: 218.0/255.0, green: 99.0/255.0, blue: 11/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.cardView.bounds
                
        self.cardView.layer.insertSublayer(gradientLayer, at:0)
    }
    
}
