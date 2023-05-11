//
//  MyOrderViewController.swift
//  MyCTStore
//
//  Created by parth visavadiya on 10/04/23.
//

import UIKit
import SDWebImage

class MyOrderViewController: UIViewController {

    @IBOutlet weak var orderTavelView: UITableView!
    let viewModel: OrderViewModel = OrderViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    private func setup(){
        fetchDetalis()
        nibRegister()
    }
    
    private func nibRegister(){
        orderTavelView.register(UINib(nibName: "OrderTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderTableViewCell")
    }
    
    private func fetchDetalis() {
        viewModel.fachOrderRespons { result in
            switch result {
            case .success:
                print("Reload TableView")
                self.orderTavelView.reloadData()
            case .failure(let error):
                print("Show this \(error.localizedDescription) in alert view")
            }
        }
    }
}


extension MyOrderViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRow()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: OrderTableViewCell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell") as! OrderTableViewCell
        cell.vendorName.text = "\(viewModel.arrOrderDetalis[indexPath.row].getVendorName())"
        cell.orderId.text = "\(viewModel.arrOrderDetalis[indexPath.row].getOrderId())"
        cell.dateTime.text = "\(viewModel.arrOrderDetalis[indexPath.row].getDateTime())"
     //   cell.totalPrince.text = "\(viewModel.arrOrderDetalis[indexPath.row].getTotalPrince())"
        cell.stats.text = "\(viewModel.arrOrderDetalis[indexPath.row].getStats())"
        cell.vendorImg.sd_setImage(with: URL(string: viewModel.arrOrderDetalis[indexPath.row].getVendorImage()), placeholderImage: UIImage(systemName: "fireplace"))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
}
