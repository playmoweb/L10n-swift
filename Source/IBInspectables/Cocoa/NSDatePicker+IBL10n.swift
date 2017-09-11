//
//  NSDatePicker+IBL10n.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 11.09.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import Cocoa

extension NSDatePicker: IBL10n {

    @IBInspectable
    var l10nUseCurrentLocale: Bool {
        get { self.messageForSetOnlyProperty("l10nPlaceholderString", "NSDatePicker") }
        set {
            if newValue {
                self.locale = L10n.shared.locale
            }
        }
    }
}
