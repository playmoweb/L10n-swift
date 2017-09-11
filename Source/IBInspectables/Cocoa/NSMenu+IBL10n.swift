//
//  NSMenu+IBL10n.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 11.09.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import Cocoa

extension NSMenu: IBL10n {

    @IBInspectable
    var l10nTitle: String {
        get { self.messageForSetOnlyProperty("l10nTitle", "NSMenu") }
        set { self.title = L10n.shared.string(for: newValue) }
    }
}
