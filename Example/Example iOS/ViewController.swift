//
//  ViewController.swift
//  Example
//
//  Created by Adrian Bobrowski on 30.04.2017.
//  Copyright © 2017 Coding lifestyle. All rights reserved.
//

import UIKit
import L10n

class ViewController: UIViewController {

    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var languageSegmentedContrlo: UISegmentedControl!

    @IBOutlet weak var helloWorldLabel: UILabel!

    @IBOutlet weak var appleStepper: UIStepper!
    @IBOutlet weak var numberOfApplesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.l10n()
    }

    func l10n() {
        self.helloWorldLabel.text = "HelloWorld".l10n()
        self.languageLabel.text = "language".l10n()

        self.languageSegmentedContrlo.setTitle("language.english".l10n(), forSegmentAt: 0)
        self.languageSegmentedContrlo.setTitle("language.polish".l10n(), forSegmentAt: 1)
        self.languageSegmentedContrlo.setTitle("language.spanish".l10n(), forSegmentAt: 2)
        self.languageSegmentedContrlo.setTitle("language.japanese".l10n(), forSegmentAt: 3)

        self.numberOfApplesLabel.text = "numberOfApples".l10n(Int(self.appleStepper.value))
    }

    @IBAction func onLanguageChanged(_ sender: UISegmentedControl) {
        L10n.shared.language = ["en", "pl", "es", "ja"][sender.selectedSegmentIndex]
        self.l10n()
    }

    @IBAction func onNumberOfCountChnaged(_ sender: UIStepper) {
        self.numberOfApplesLabel.text = "numberOfApples".l10n(Int(sender.value))
    }

}
