//
//  UIViewController+Extensions.swift
//  FireBase-Auth-Lab
//
//  Created by Juan Ceballos on 3/8/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit

extension UIViewController  {
    
    private static func resetWindow(with rootViewController: UIViewController)    {
        guard let scene = UIApplication.shared.connectedScenes.first,
            let sceneDelegate = scene.delegate as? SceneDelegate,
            let window = sceneDelegate.window
            else    {
                fatalError()
        }
        window.rootViewController = rootViewController
    }
    
    public static func showViewController(viewController: UIViewController) {
        let newVC = viewController
        resetWindow(with: newVC)
    }
}
