//
//  NSSegmentedControl+IBL10n.swift
//  L10n_swift
//
//  Created by Adrian Bobrowski on 11.09.2017.
//  Copyright © 2017 Adrian Bobrowski (Decybel07), adrian071993@gmail.com. All rights reserved.
//

import Cocoa

extension NSSegmentedControl: IBL10n {

    @IBInspectable
    var l10nUseSegmentLabelAsKey: Bool {
        get { self.messageForSetOnlyProperty("l10nUseSegmentTitleAsKey", "UISegmentedControl") }
        set {
            if newValue {
                (0 ..< self.segmentCount).forEach {
                    if let label = self.label(forSegment: $0) {
                        self.setLabel(label, forSegment: $0)
                    }
                }
            }
        }
    }

    @IBInspectable
    var l10nUseSegmentLMenuTitleAsKey: Bool {
        get { self.messageForSetOnlyProperty("l10nUseSegmentTitleAsKey", "UISegmentedControl") }
        set {
            if newValue {
                (0 ..< self.segmentCount).forEach {
                    if let menu = self.menu(forSegment: $0) {
                        menu.title = L10n.shared.string(for: menu.title)
                        self.setMenu(menu, forSegment: $0)
                    }
                }
            }
        }
    }
}
