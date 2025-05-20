//
//  buteun.swift
//  component
//
//  Created by 잇쬬 on 5/18/25.
//

import SwiftUI

struct Buteun: View {
    @State private var esActive = false
    @State private var isActive = false
    var body: some View {
        NavigationStack {
            Spacer()
            Text("더보기 기능 없음")
                .font(.title)
                .navigationBarTitle("더보기")
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
                    Image(systemName: "bell.fill")
                    Button("알림") {
                        isActive = true
                    }
                    .navigationDestination(isPresented: $isActive) {
                        Alarm()
                    }
                }
                Spacer()
                VStack {
                    Button(action: {
                        print("더보기 탭으로 이동")
                    }) {
                        VStack {
                            Image(systemName: "ellipsis.circle.fill")
                            Text("더보기")
                        }
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
    Buteun()
}
