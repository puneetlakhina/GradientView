//
//  DemoViewController.swift
//  GradientView
//
//  Created by Sam Soffes on 7/19/14.
//  Copyright (c) 2014 Sam Soffes. All rights reserved.
//

import UIKit
import GradientView

final class DemoViewController: UIViewController {
	
	@IBOutlet var gradientView: GradientView!
                            
	override func viewDidLoad() {
		super.viewDidLoad()

		// Set the colors
		gradientView.colors = [
			UIColor(red: 0.287, green: 0.432, blue: 0.573, alpha: 1),
			UIColor(red: 0.700, green: 0.710, blue: 0.706, alpha: 1),
			UIColor(red: 0.892, green: 0.831, blue: 0.739, alpha: 1),
			UIColor(red: 0.163, green: 0.152, blue: 0.183, alpha: 1),
			UIColor(red: 0.232, green: 0.175, blue: 0.118, alpha: 1)
		]
		
		// You can configure the locations as well
		gradientView.locations = [0, 0.3, 0.5, 0.8, 1]

		// You can disable automatic dimming
//		gradientView.automaticallyDims = false
	}
	
	@IBAction func showAlert(sender: UIButton) {
		let alert = UIAlertController(title: "Dimming", message: "By default, GradientView will automatically dim.", preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "Awesome", style: .default, handler: nil))
		present(alert, animated: true)
	}
}
