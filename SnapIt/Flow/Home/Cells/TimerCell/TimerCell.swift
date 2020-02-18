//
//  TimerCell.swift
//  ERP
//
//  Created by Vitaliy Priydun on 18.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class TimerCell: UITableViewCell, ReusableCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var playButton: UIButton!
    @IBOutlet private weak var stopButton: UIButton!
    @IBOutlet private weak var separatorView: UIView!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var endButtonView: UIView!
    @IBOutlet private weak var endButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupTexts()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        separatorView.backgroundColor = GradientFactory.makeMainGradient(for: separatorView)
        playButton.backgroundColor = GradientFactory.makeMainGradient(for: playButton)
        endButton.backgroundColor = GradientFactory.makeMainGradient(for: endButton)
    }
    
    // MARK: - Private
    
    private func setupTexts() {
        titleLabel.text = Localization.Home.timer
        playButton.setTitle(Localization.Buttons.start, for: .normal)
        endButton.setTitle(Localization.Buttons.endAndSave, for: .normal)
    }
}
