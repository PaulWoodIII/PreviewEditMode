//
//  EditingView.swift
//  PreviewEditMode
//
//  Created by Paul Wood on 7/7/19.
//  Copyright © 2019 Paul Wood. All rights reserved.
//

import SwiftUI

struct EditingView : View {
  
  @State var dataValue: String = "Initial Value"
  @Environment(\.editMode) var editMode
  
    var body: some View {
      VStack(alignment: .leading) {
        if self.editMode?.value == .inactive {
          Text(dataValue)
        } else {
          TextField(($dataValue))
        }
      }.padding()
        .navigationBarTitle("Lets edit some State")
        .navigationBarItems(trailing: EditButton())
  }
}

#if DEBUG
struct EditingView_Previews : PreviewProvider {
    static var previews: some View {
      VStack {
        NavigationView{
          EditingView()
        }
        
        // I would prefer to use an environment variable
        // here is the best thought I had at syntax
        //
        //   `.environment(\.editMode, .inactive)`
        //
        // Type 'Binding<EditMode>?' has no member 'inactive'
        // which makes total sense to me since it is a binding
        // not a direct access to an enum
        
        // So to get around the issue I have an extra edit button
        EditButton()
      }
    }
}
#endif
