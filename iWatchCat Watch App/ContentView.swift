//
//  ContentView.swift
//  iWatchCat Watch App
//
//  Created by Hatsune Miku on 2023/12/8.
//

import SwiftUI

struct ContentView: View {
    let items = ["黑色喵呜", "白色喵呜", "花色喵呜"]
    
    var body: some View {
        List{
            Section(header: Text("修改显示图片")
                .foregroundColor(.pink)
            ){
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .foregroundColor(.blue)
                }
            }
        }
    }
    func didSelectItem(_ item: String) {
        // 在这里执行点击手势触发的函数
        print("Selected item: \(item)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
