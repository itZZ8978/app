//
//  ContentView.swift
//  component
//
//  Created by 잇쬬 on 5/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var search: String = ""
    @State private var isActive = false
    @State private var IsActive = false
    let title: String
    let action: () -> Void
    var body: some View {
        NavigationStack {
            VStack {
                Button {
                    action()
                } label: {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 36, height: 36)
                }
                .padding(.leading, 270)
                Text("Google")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.blue)
                    .padding(.top, 50)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("검색", text: $search)
                        .textFieldStyle(PlainTextFieldStyle())
                    Button {
                        action()
                    } label: {
                        Image(systemName: "mic")
                    }
                }
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("대구광역시")
                            .font(.headline)
                            .foregroundColor(.black)
                        HStack(spacing: 6) {
                            Text("맑음")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Image(systemName: "sun.max")
                                .foregroundColor(.yellow)
                            Text("0%")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    VStack(spacing: 4) {
                        Text("24°")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.black)
                        Image(systemName: "sun.max.fill")
                            .font(.title2)
                            .foregroundColor(.orange)
                    }
                }.padding(.top, 40)
                
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    Text("뉴스")
                        .font(.headline)
                    Text("• 대구, 맑은 날씨 계속")
                    Text("• 오늘의 주요 이슈: 집 가고 싶다")
                    Text("• 경제 뉴스: 주가 상승세 지속")
                    Text("• 러시아 - 우크라이나 전쟁 협상 결렬")
                    Text("• '전역까지 한 달' BTS, 말년 떼려니 설렘")
                    Text("• '재혼' 이상민, 이미 혼인신고 완료")
                }
                .padding(20)
                .background(Color(.systemGray6))
                Spacer()
            }
            .padding()
            .padding()
            HStack {
                Spacer()
                VStack {
                    Button {
                        action()
                    } label: {
                        VStack {
                            Image(systemName: "house.fill")
                            Text("홈")
                        }
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "bell.fill")
                    Button("알림") {
                        isActive = true
                    }
                    .navigationDestination(isPresented: $isActive) {
                        Alarm(title: "클릭") {
                            print("아직 개발 중")
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
                        Buteun(title: "클릭") {
                            print("아직 개발 중")
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
    ContentView(title: "클릭") {
        print("아직 개발 중")
    }
}
