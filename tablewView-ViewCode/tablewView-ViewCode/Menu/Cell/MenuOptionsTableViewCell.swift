//
//  MenuOptionsTableViewCell.swift
//  tablewView-ViewCode
//
//  Created by ALYSSON DODO on 20/12/22.
//

import UIKit

class MenuOptionsTableViewCell: UITableViewCell {

    static  let identifier = "MenuOptionsTableViewCell"
    
    lazy var menuImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        image.layer.cornerRadius = 8
        image.layer.masksToBounds = true
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()
    
    lazy var forwardIconImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        image.layer.cornerRadius = 8
        image.layer.masksToBounds = true
        return image
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview(){
        self.contentView.addSubview(self.menuImageView)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.forwardIconImageView)
    }
    
    public func setUpCell( data : MenuModel){
        self.menuImageView.image = UIImage(named: data.icon)
        self.nameLabel.text = data.name
        self.forwardIconImageView.image = UIImage(named: data.forwardIcon)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            self.menuImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.menuImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.menuImageView.heightAnchor.constraint(equalToConstant: 80),
            self.menuImageView.widthAnchor.constraint(equalToConstant: 50),
            
            self.nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            //self.nameLabel.leadingAnchor.constraint(equalTo: self.menuImageView.trailingAnchor, constant: 20)
            self.forwardIconImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.forwardIconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.forwardIconImageView.heightAnchor.constraint(equalToConstant: 80),
            self.forwardIconImageView.widthAnchor.constraint(equalToConstant: 15),
        ])
    }
    
    
}
