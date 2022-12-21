//
//  MenuViewController.swift
//  tablewView-ViewCode
//
//  Created by ALYSSON DODO on 19/12/22.
//

import UIKit

class MenuViewController: UIViewController {

    var menuView : MenuView?
    var data:[MenuModel] = [
        
        MenuModel(icon: "Image-1", name: "Exibir dados", forwardIcon: "forwardIcon")
        
        
   ]
    
    override func loadView() {
        self.menuView = MenuView()
        self.view = menuView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // assinando protocolo
        self.menuView?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension  MenuViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MenuOptionsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: MenuOptionsTableViewCell.identifier, for: indexPath) as? MenuOptionsTableViewCell
        cell?.setUpCell(data: self.data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
