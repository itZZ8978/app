//
//  alarm.swift
//  component
//
//  Created by 잇쬬 on 5/18/25.
//

import SwiftUI

struct Alarm: View {
    @State private var esActive = false
    @State private var IsActive = false
    var body: some View {
        NavigationStack {
            Spacer()
            Text("받은 알림 없음")
                .font(.title)
                .navigationBarTitle("알림")
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "house.fill")
                    Button("홈") {
                        esActive = true
                    }
                    .navigationDestination(isPresented: $esActive) {
                        ContentView()
                    }
                }
                Spacer()
                VStack {
                    Button(action: {
                        print("알림 탭으로 이동")
                    }) {
                        VStack {
                            Image(systemName: "bell.fill")
                            Text("알림")
                        }
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "ellipsis.circle.fill")
                    Button("더보기") {
                        IsActive = true
                    }
                    .navigationDestination(isPresented: $IsActive) {
                        Buteun()
                    }
                }
                Spacer()
            }
            .padding()
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    Alarm()
}
