//
//  NSTokenField+IBL10n.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 11.09.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import Cocoa

extension NSTokenField {

    @IBInspectable
    var l10nPlaceholderString: String {
        get { self.messageForSetOnlyProperty("l10nPlaceholderString", "NSTokenField") }
        set { self.placeholderString = L10n.shared.string(for: newValue) }
    }
}
