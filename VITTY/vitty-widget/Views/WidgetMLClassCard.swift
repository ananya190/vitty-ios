//
//  WidgetMLClassCard.swift
//  vitty-widgetExtension
//
//  Created by Ananya George on 2/27/22.
//

import SwiftUI

struct WidgetMLClassCard: View {
    var classInfo: Classes
    var onlineMode: Bool = false
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack(alignment:.leading) {
                        Text(classInfo.courseCode ?? "Course Code")
                            .font(Font.custom("Poppins-SemiBold",size:12))
                            .foregroundColor(Color.white)
                            .font(Font.custom("Poppins-Regular",size:10))
                        Text(classInfo.courseName ?? "Course Name")
                            .lineLimit(1)
                            .font(Font.custom("Poppins-SemiBold",size:12))
                            .foregroundColor(Color.white)
                        HStack(spacing: 0) {
                            Text(classInfo.startTime ?? Date(), style: .time)
                            Text(" - ")
                            Text(classInfo.endTime ?? Date(), style: .time)
                            
                        }
                        .font(Font.custom("Poppins-Regular",size:10))
                        if !onlineMode {
                        Text("\(classInfo.slot ?? "Slot")")
                                .font(Font.custom("Poppins-Regular",size:10))
                        }
                        
                    }
                    Spacer()
                    VStack {
                        // TODO: remote config
                        if onlineMode {
                            Text("\(classInfo.slot ?? "Slot")")
                                .font(Font.custom("Poppins-Regular",size:11))
                            Text("\(classInfo.location ?? "Location")")
                                .font(Font.custom("Poppins-Regular",size:11))
                        } else {
                            Link(destination: getNavigationLink(from: classInfo.location ?? "SJT"),
                                 label: {
                                HStack {
                                    VStack {
                                        Text("\(classInfo.location ?? "Location")")
                                        //                                        .font(Font.custom("Poppins-Regular",size:11))
                                    }
                                    .font(Font.custom("Poppins-SemiBold",size:11))
                                    Image(systemName: "mappin.and.ellipse")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 11)
                                }
                                .foregroundColor(Color.white)
                                .padding(7)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).foregroundColor(Color.vprimary))
                            }
                            )
                        }
                    }
                    .padding(.horizontal,5)
                }
            }
        }
        .foregroundColor(Color.vprimary)
        .padding(5)
    }
    
    func getNavigationLink(from location: String) -> URL {
        var block = ""
        for char in location {
            if char.isLetter { block.append(char) }
        }
        let mapBlock: String = StringConstants.blocksMap[block] ?? "Silver+Building+%2F+Silver+Jubilee+Towers"
        let dirs = "\(mapBlock),+\(StringConstants.VITMap)"
        let url = "\(StringConstants.browserURL)\(dirs)&travelmode=walking"
        return URL(string: url) ?? URL(string: "https://www.google.com/maps")!
        
    }
}

//struct WidgetMLClassCard_Previews: PreviewProvider {
//    static var previews: some View {
//        WidgetMLClassCard()
//    }
//}
