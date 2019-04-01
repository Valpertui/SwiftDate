import Foundation

// swiftlint:disable type_name
public class lang_fr: RelativeFormatterLang {

	/// French
	public static let identifier: String = "fr"

  public static let filename: String = "lang_fr"

  lazy public var jsonDictionary: [String: [String: Any]]? = {
    return jsonDictionaryFromJsonFile(named: lang_fr.filename) as? [String: [String: Any]]
  }()

	public required init() {}

	public func quantifyKey(forValue value: Double) -> RelativeFormatter.PluralForm? {
		return (value >= 0 && value < 2 ? .one : .other)
	}

	public var flavours: [String: Any] {
		return [
			RelativeFormatter.Flavour.long.rawValue: _long,
			RelativeFormatter.Flavour.narrow.rawValue: _narrow,
			RelativeFormatter.Flavour.short.rawValue: _short
      ].compactMapValues { $0 }
	}

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
