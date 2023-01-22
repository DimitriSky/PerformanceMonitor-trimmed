//
//  PerformanceView.swift
//  PerformanceMonitor
//
//  Created by roy.cao on 2019/8/26.
//  Copyright © 2019 roy. All rights reserved.
//

import Foundation
import UIKit

public class PerformanceView: UIWindow {

    init() {
        super.init(frame: UIScreen.main.bounds)

        windowLevel = .normal + 1
        if let scene = UIApplication.shared.connectedScenes.first,
           let windowScene_ = scene as? UIWindowScene {
            windowScene = windowScene_
        }
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        rootViewController = PerformanceViewController()
    }

    func configureTitle(_ title: String) {
        (rootViewController as! PerformanceViewController).configureTitle(title)
    }

    func configureFPS(_ fps: Double) {
        (rootViewController as! PerformanceViewController).configureFPS(fps)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if rootViewController?.presentedViewController != nil {
            return super.point(inside: point, with: event)
        }

        let button = (rootViewController as! PerformanceViewController).infoLabel
        let buttonPoint = convert(point, to: button)

        return button.point(inside: buttonPoint, with: event)
    }
}

