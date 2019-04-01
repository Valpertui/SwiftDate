//
//  JsonFiles.swift
//  SwiftDate-iOS
//
//  Created by Valentin Pertuisot on 01/04/2019.
//  Copyright © 2019 SwiftDate. All rights reserved.
//

import Foundation

public func dataFromJsonFile(named name: String) -> Data {

  let bundle = Bundle(for: RelativeFormatter.self)

  do {

    let data = try Data(contentsOf: URL(fileURLWithPath: bundle.path(forResource: name, ofType: "json")!))

    return data
  } catch {

    fatalError("Unable to get data from \(name)")
  }
}

public func jsonDictionaryFromJsonFile(named name: String) -> [String: Any] {

  let data = dataFromJsonFile(named: name)
  guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
    return [:]
  }
  return json
}
