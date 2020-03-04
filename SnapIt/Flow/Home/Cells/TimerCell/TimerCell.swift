//
//  TimerCell.swift
//  ERP
//
//  Created by Vitaliy Priydun on 18.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class TimerCell: UITableViewCell, ReusableCell {
    
    var presenter: TimerCellOutput? { didSet { presenter?.viewDidSetPresenter() } }

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
    
    // MARK: - Actions
    
    @IBAction private func stopAction(_ sender: Any) {
        presenter?.viewTriggeredStopEvent()
    }
    
    @IBAction private func startAction(_ sender: Any) {
        presenter?.viewTriggeredStartPauseEvent()
    }
    
    @IBAction private func trackAction(_ sender: Any) {
        presenter?.viewTriggeredTrackEvent()
    }
    
    // MARK: - Private
    
    private func setupTexts() {
        titleLabel.text = Localization.Home.timer
        playButton.setTitle(Localization.Buttons.start, for: .normal)
        endButton.setTitle(Localization.Buttons.endAndSave, for: .normal)
    }
}

// MARK: - TimerCellInterface

extension TimerCell: TimerCellInterface {
    
    func setStopButton(visible: Bool) {
        stopButton.isHidden = !visible
    }
    
    func setPauseButton(state: Bool) {
        playButton.setTitle(state ? Localization.Buttons.start : Localization.Buttons.pause, for: .normal)
    }
    
    func setTrackButton(visible: Bool) {
        endButtonView.isHidden = !visible
    }
    
    func setTimer(text: String) {
        timeLabel.text = text
    }
}
