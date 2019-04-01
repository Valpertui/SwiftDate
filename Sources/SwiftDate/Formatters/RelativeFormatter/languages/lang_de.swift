//
//  lang_de.swift
//  SwiftDate
//
//  Created by Daniele Margutti on 13/06/2018.
//  Copyright © 2018 SwiftDate. All rights reserved.
//

import Foundation

// swiftlint:disable type_name
public class lang_de: RelativeFormatterLang {

	/// Locales.german
	public static let identifier: String = "de"

  public static let filename: String = "lang_de"
  
	public required init() {}

	public func quantifyKey(forValue value: Double) -> RelativeFormatter.PluralForm? {
		switch value {
		case 1:		return .one
		default:	return .other
		}
	}

  lazy public var jsonDictionary: [String: [String: Any]]? = {
    return jsonDictionaryFromJsonFile(named: lang_de.filename) as? [String: [String: Any]]
  }()

	// module.exports=function(e){var i=String(e).split("."),n=Number(i{0})==e,r=n&&i{0}.slice(-1),s=n&&i{0}.slice(-2);return 1==r&&11!=s?"one":r>=2&&r<=4&&(s<12||s>14)?"few":n&&0==r||r>=5&&r<=9||s>=11&&s<=14?"many":"other"}
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
