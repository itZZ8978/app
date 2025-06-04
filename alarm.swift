//
//  alarm.swift
//  component
//
//  Created by 잇쬬 on 5/18/25.
//

import SwiftUI

struct Bcv: View {
    let sin: String
    let label: String
    let action: () -> Void
    var body: some View {
        VStack {
            Image(systemName: sin)
                .font(.title2)
            Button(action: action) {
                Text(label)
            }
        }
    }
}

struct Alarm: View {
    @State private var esActive = false
    @State private var isActive = false
    let title: String
    let action: () -> Void
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("받은 알림 없음")
                    .font(.title)
                    .navigationBarTitle("알림")
                Spacer()
                HStack {
                    Spacer()
                    Bcv(sin: "house.fill", label: "홈") {
                        esActive = true
                    }
                    .navigationDestination(isPresented: $esActive) {
                        ContentView(title: "클릭") {
                            print("아직 개발 중")
                        }
                    }
                    Spacer()
                    Bcv(sin: "bell.fill", label: "알림") {
                        action()
                    }
                    Spacer()
                    Bcv(sin: "ellipsis.circle.fill", label: "더보기") {
                        isActive = true
                    }
                    .navigationDestination(isPresented: $isActive) {
                        Buteun(title: "클릭") {
                            print("아직 개발 중")
                        }
                    }
                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
            }
        }
    }
}

#Preview {
    Alarm(title: "클릭") {
        print("아직 개발 중")
    }
}
