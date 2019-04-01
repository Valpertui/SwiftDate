//
//  lang_en.swift
//  SwiftDate
//
//  Created by Daniele Margutti on 13/06/2018.
//  Copyright © 2018 SwiftDate. All rights reserved.
//

import Foundation

// swiftlint:disable type_name
public class lang_en: RelativeFormatterLang {
	public static let identifier: String = "en"

	public required init() {}

	public func quantifyKey(forValue value: Double) -> RelativeFormatter.PluralForm? {
		return (value == 1 ? .one : .other)
	}

  public static let filename: String = "lang_en"

  lazy public var jsonDictionary: [String: [String: Any]]? = {
    return jsonDictionaryFromJsonFile(named: lang_en.filename) as? [String: [String: Any]]
  }()

	public lazy var flavours: [String: Any] = {
		return [
			RelativeFormatter.Flavour.long.rawValue: _long,
			RelativeFormatter.Flavour.longConvenient.rawValue: _longConvenient,
			RelativeFormatter.Flavour.longTime.rawValue: _longTime,
			RelativeFormatter.Flavour.narrow.rawValue: _narrow,
			RelativeFormatter.Flavour.shortConvenient.rawValue: _shortConvenient,
			RelativeFormatter.Flavour.shortTime.rawValue: _shortTime,
			RelativeFormatter.Flavour.short.rawValue: _short,
			RelativeFormatter.Flavour.tiny.rawValue: _tiny
      ].compactMapValues { $0 }
	}()

  private var _tiny: [String: Any]? {
    return jsonDictionary?["_tiny"]
  }

  private var _short: [String: Any]? {
    return jsonDictionary?["_short"]
	}

	private var _shortTime: [String: Any]? {
    return jsonDictionary?["_shortTime"]
  }

  private var _shortConvenient: [String: Any]? {
    return jsonDictionary?["_shortConvenient"]
	}

	private var _narrow: [String: Any]? {
    return jsonDictionary?["_narrow"]
  }

  private var _longTime: [String: Any]? {
    return jsonDictionary?["_longTime"]
	}

	private var _longConvenient: [String: Any]? {
    return jsonDictionary?["_longConvenient"]
	}

	private var _long: [String: Any]? {
    return jsonDictionary?["_long"]
	}
}
