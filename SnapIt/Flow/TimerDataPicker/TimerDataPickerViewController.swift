//
//  TimerDataPickerViewController.swift
//  ERP
//
//  Created by Vitaliy Priydun on 21.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class TimerDataPickerViewController: UIViewController {

    var presenter: TimerDataPickerOutput?

    @IBOutlet private weak var contentView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var orderLabel: UILabel!
    @IBOutlet private weak var productLabel: UILabel!
    @IBOutlet private weak var taskTypeLabel: UILabel!
    @IBOutlet private weak var workTypeLabel: UILabel!
    @IBOutlet private weak var workTypeSegmentedControl: UISegmentedControl!
    @IBOutlet private weak var orderTextField: UITextField!
    @IBOutlet private weak var productTextField: UITextField!
    @IBOutlet private weak var taskType: UITextField!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeAppearence()
        setupTexts()
        presenter?.viewDidLoad()
        contentView.alpha = .zero
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contentView.animatePopUp()
    }
    
    // MARK: - Actions
    @IBAction private func closeAction(_ sender: Any) {
        presenter?.close()
    }
    
    // MARK: - Private

    private func setupTexts() {
        
    }
    
    private func customizeAppearence() {
        if #available(iOS 13.0, *) {
            workTypeSegmentedControl.selectedSegmentTintColor = GradientFactory.makeMainGradient(for: workTypeSegmentedControl)
            workTypeSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
            workTypeSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        }
    }
}

// MARK: - TimerDataPickerInterface 

extension TimerDataPickerViewController: TimerDataPickerInterface {
    
}
