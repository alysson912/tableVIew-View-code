//
//  MenuVIew.swift
//  tablewView-ViewCode
//
//  Created by ALYSSON DODO on 19/12/22.
//

import UIKit

class MenuView: UIView {

    lazy var menuTitleLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Menu"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    lazy var tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .white
        tableView.register(MenuOptionsTableViewCell.self, forCellReuseIdentifier: MenuOptionsTableViewCell.identifier) // register cell
        return tableView
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addsubView()
    }
    
    public func configTableViewProtocols(delegate : UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    func addsubView(){
        setupBackgroundColor()
        self.addSubview(self.menuTitleLabel)
        self.addSubview(self.tableView)
        self.setupConstraints()
        
    }
    func setupBackgroundColor(){
        backgroundColor = .red
    }
  
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.menuTitleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 0),
            self.menuTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.tableView.topAnchor.constraint(equalTo: self.menuTitleLabel.bottomAnchor, constant: 25),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
