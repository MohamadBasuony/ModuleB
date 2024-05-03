//
//  DetailsVC.swift
//  ModuleB
//
//  Created by Mohamad Basuony on 03/05/2024.
//

import UIKit

public class UniversityDetailsVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryCodeLbl: UILabel!
    @IBOutlet weak var webPageLbl: UILabel!
    
    var presenter : UniversityDetailsPresenter!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("UniversityDetailsVC")
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dimissBtn(_ sender: Any) {
        presenter.dismiss()
    }
    
    @IBAction func reloadBtn(_ sender: Any) {
        presenter.reloadUniversities()
    }
}

extension UniversityDetailsVC : UniversityDetailsDelegate {
    func setupUI() {
        nameLbl.text = presenter.university?.name ?? ""
        stateLbl.text = presenter.university?.stateProvince ?? ""
        countryLbl.text = presenter.university?.country ?? ""
        countryCodeLbl.text = presenter.university?.alphaTwoCode ?? ""
        webPageLbl.text = presenter.university?.webPage ?? ""
    }
}

extension Bundle {
    public static var ModuleB:Bundle {
        return Bundle(for: UniversityDetailsVC.self)
    }
}
