//
//  lang_es.swift
//  SwiftDate
//
//  Created by Daniele Margutti on 13/06/2018.
//  Copyright © 2018 SwiftDate. All rights reserved.
//

import Foundation

// swiftlint:disable type_name
public class lang_es: RelativeFormatterLang {

	/// Locales.spanish
	public static let identifier: String = "es"

  public static let filename: String = "lang_es"

  lazy public var jsonDictionary: [String: [String: Any]]? = {
    return jsonDictionaryFromJsonFile(named: lang_es.filename) as? [String: [String: Any]]
  }()

	public required init() {}

	public func quantifyKey(forValue value: Double) -> RelativeFormatter.PluralForm? {
		return (value == 1 ? .one : .other)
	}

	public lazy var flavours: [String: Any] = {
		return [
			RelativeFormatter.Flavour.long.rawValue: _long,
			RelativeFormatter.Flavour.narrow.rawValue: _narrow,
			RelativeFormatter.Flavour.short.rawValue: _short
      ].compactMapValues { $0 }
	}()

	private var _short: [String: Any]? {
		return jsonDictionary?["_short"]
	}

	private var _narrow: [String: Any]? {
		return jsonDictionary?["_narrow"]
	}

	private var _long: [String: Any]? {
    return jsonDictionary?["_long"]
  }
}
