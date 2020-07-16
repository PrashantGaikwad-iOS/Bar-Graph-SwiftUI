//
//  BarView.swift
//  Bar Graph Demo
//
//  Created by Prashant Gaikwad on 13/07/20.
//

import SwiftUI

struct BarView: View {
    
    let report: Report
    
    var body: some View {
        
        let yValue = Swift.min(report.articles,500)
        
        return VStack {
            Text(String(format: "%.0f", report.articles))
                .foregroundColor(.secondary)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 80, height: CGFloat(yValue))
            
            Text(report.year)
                .foregroundColor(.primary)
        }
        
    }
}

