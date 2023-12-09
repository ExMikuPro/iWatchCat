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
    
    func complicationDescriptors() async -> [CLKComplicationDescriptor] {
        return [
            .init(identifier: "layer.practice.iWatchCat",
                  displayName: "iWatchCat",
                  supportedFamilies: [.graphicCircular])
        ]
    }
}
