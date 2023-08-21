//
//  HomeCell.swift
//  MVVM-NamesToFaces-HackingWithSwift
//
//  Created by Mert Deniz Akbaş on 17.08.2023.
//

import UIKit

final class HomeCell: UICollectionViewCell {
    @IBOutlet private weak var imageView : UIImageView!
    @IBOutlet private weak var nameLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func updateLabel(label: String, path: String) {
        nameLabel.text = label
        
        if FileManager.default.fileExists(atPath: path) {
            imageView.image = UIImage(contentsOfFile: path)
        } else {
            print("Error")
        }
    }
}


