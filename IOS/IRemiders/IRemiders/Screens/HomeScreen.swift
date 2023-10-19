//
//  HomeScreen.swift
//  IRemiders
//
//  Created by Seymen Nadir Elmas on 6.10.2023.
//

import SwiftUI

struct HomeScreen: View {
    @State var text :Array<String> = []
    @State var test = false
    @State var textItemTemp = ""
    var body: some View {
        NavigationView{
            Group{
                if text.count <= 1{
                    Text("No Items")
                }
                else {
                    List((1...text.count-1) ,id : \.self){ i in
                        Text(text[i])
                            .contextMenu{
                                Button(action: {
                                    text.remove(at: i)
                                }, label: {
                                    Label("Delete",systemImage: "delete.left")
                                })
                            }
                    }
                }
            }
            .navigationTitle("Notes")
            .toolbar{
                Button {
                    test.toggle()
                    textItemTemp = ""
                } label: {
                    Image(systemName: "plus")
                }

            }
            .onChange(of: text){ _ in
                save()
                load()
            }
            .onAppear(){
                save()
                load()
            }
            .refreshable {
                save()
                load()
            }
        }
        .sheet(isPresented:$test){
            NavigationView{
                List{
                    TextField("Item", text:$textItemTemp)
                }
                .navigationTitle("Add a Item")
                .toolbar{
                    Button("Add"){
                        text.append(textItemTemp)
                        test.toggle()
                    }
                }
            }
        }
    }
    func save() -> Void {
        let temp = text.joined(separator: "/(split)/")
        let key = UserDefaults.standard
        key.set(temp, forKey: "text")
    }
    func load() -> Void {
        let key = UserDefaults.standard
        let temp = key.string(forKey: "text") ?? ""
        let temparray = temp.components(separatedBy:"/(split)/" )
        text = temparray
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(test: true)
    }
}
