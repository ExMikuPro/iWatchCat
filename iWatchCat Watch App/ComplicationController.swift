//
//  ComplicationController.swift
//  iWatchCat Watch App
//
//  Created by Hatsune Miku on 2023/12/8.
//

import ClockKit

class ComplicationController: NSObject, CLKComplicationDataSource {
    func currentTimelineEntry(
        for complication: CLKComplication
    ) async -> CLKComplicationTimelineEntry? {
        guard complication.family == .circularSmall else {
          return nil
        }
        let template = CLKComplicationTemplateGraphicCircularStackText(
          line1TextProvider: .init(format: "line1"),
          line2TextProvider: .init(format: "line2"))
        return .init(date: Date(), complicationTemplate: template)
    }
    
    // 在复杂功能列表里创建选项
    func complicationDescriptors() async -> [CLKComplicationDescriptor] {
        return [
            .init(identifier: "layer.practice.iWatchCat",
                  displayName: "iWatchCat",
                  supportedFamilies: [.graphicCircular])
        ]
    }
    
    // 设置复杂功能选择列表图标
    func localizableSampleTemplate(
        for complication: CLKComplication
    ) async -> CLKComplicationTemplate? {
        // 使用名为ClockKitLogo的图片用作图标
        if let fullColorImage = UIImage(named: "ClockKitLogo") {
            let imageProvider = CLKFullColorImageProvider(fullColorImage: fullColorImage) // 用一张图片全部填满整个图标区域
            return CLKComplicationTemplateGraphicCircularImage(imageProvider: imageProvider)
        }
        return nil
    }
}
