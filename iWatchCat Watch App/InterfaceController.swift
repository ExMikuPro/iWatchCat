//
//  InterfaceController.swift
//  iWatchCat Watch App
//
//  Created by Hatsune Miku on 2023/12/9.
//

import WatchKit

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var button: WKInterfaceButton!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        // 设置按钮标题
        button.setTitle("Your App Title")
    }

    @objc func buttonTapped() {
        // 在这里执行按钮点击时要执行的函数
        print("Button tapped!")
    }
}
