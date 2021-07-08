//
//  SampleImplTableViewController.swift
//  cocoda-impls
//
//  Created by KAGE on 2019/05/03.
//  Copyright © 2019 kagemiku. All rights reserved.
//

import UIKit

class SampleImplTableViewController: UIViewController {

    private let sampleImpls: [SampleImpl] = [
        SampleImpl(title: "Introduction - EC Product", vc: ECProductViewController.self)
    ]

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(SampleImplTableViewCell.self, forCellReuseIdentifier: SampleImplTableViewCell.identifier)
            tableView.dataSource = self
            tableView.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension SampleImplTableViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleImpls.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SampleImplTableViewCell.identifier, for: indexPath) as! SampleImplTableViewCell
        cell.configure(with: sampleImpls[indexPath.row])

        return cell
    }

}

extension SampleImplTableViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sampleImpl = sampleImpls[indexPath.row]
        let vc = sampleImpl.vc.init()
        navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
