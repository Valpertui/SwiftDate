//
//  lang_es.swift
//  SwiftDate
//
//  Created by Daniele Margutti on 13/06/2018.
//  Copyright © 2018 SwiftDate. All rights reserved.
//

import Foundation

// swiftlint:disable type_name
public class lang_esUS: RelativeFormatterLang {

	/// Locales.spanishUnitedStates
	public static let identifier: String = "es_US"

	public required init() {}

	public func quantifyKey(forValue value: Double) -> RelativeFormatter.PluralForm? {
		return (value == 1 ? .one : .other)
	}

	public var flavours: [String: Any] {
		return [
			RelativeFormatter.Flavour.long.rawValue: _long,
			RelativeFormatter.Flavour.narrow.rawValue: _narrow,
			RelativeFormatter.Flavour.short.rawValue: _short
		]
	}

	private var _short: [String: Any] {
		return [
//      "year": [
//        "previous": "el año pasado",
//        "current": "este año",
//        "next": "el próximo año",
//        "past": "hace {0} a",
//        "future": "dentro de {0} a"
//        ] as [String: String],
//      "quarter": [
//        "previous": "el trimestre pasado",
//        "current": "este trimestre",
//        "next": "el próximo trimestre",
//        "past": "hace {0} trim.",
//        "future": "dentro de {0} trim."
//      ] as [String: String],
//      "month": [
//        "previous": "el mes pasado",
//        "current": "este mes",
//        "next": "el próximo mes",
//        "past": "hace {0} m",
//        "future": "dentro de {0} m"
//      ] as [String: String],
//      "week": [
//        "previous": "la semana pasada",
//        "current": "esta semana",
//        "next": "la semana próxima",
//        "past": "hace {0} sem.",
//        "future": "dentro de {0} sem."
//      ] as [String: String],
//      "day": [
//        "previous": "ayer",
//        "current": "hoy",
//        "next": "mañana",
//        "past": [
//          "one": "hace {0} día",
//          "other": "hace {0} días"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} día",
//          "other": "dentro de {0} días"
//        ] as [String: String]
//      ] as [String: Any],
//      "hour": [
//        "current": "esta hora",
//        "past": "hace {0} h",
//        "future": "dentro de {0} h"
//      ] as [String: String],
//      "minute": [
//        "current": "este minuto",
//        "past": "hace {0} min",
//        "future": "dentro de {0} min"
//      ] as [String: String],
//      "second": [
//        "current": "ahora",
//        "past": "hace {0} s",
//        "future": "dentro de {0} s"
//      ] as [String: String],
			"now": "ahora"
    ] as [String: Any]
	}

	private var _narrow: [String: Any] {
		return [
//      "year": [
//        "previous": "el año pasado",
//        "current": "este año",
//        "next": "el próximo año",
//        "past": "hace {0} a",
//        "future": "dentro de {0} a"
//      ] as [String: String],
//      "quarter": [
//        "previous": "el trimestre pasado",
//        "current": "este trimestre",
//        "next": "el próximo trimestre",
//        "past": "hace {0} trim.",
//        "future": "dentro de {0} trim."
//      ] as [String: String],
//      "month": [
//        "previous": "el mes pasado",
//        "current": "este mes",
//        "next": "el próximo mes",
//        "past": "hace {0} m",
//        "future": "dentro de {0} m"
//      ] as [String: String],
//      "week": [
//        "previous": "la semana pasada",
//        "current": "esta semana",
//        "next": "la semana próxima",
//        "past": "hace {0} sem.",
//        "future": "dentro de {0} sem."
//      ] as [String: String],
//      "day": [
//        "previous": "ayer",
//        "current": "hoy",
//        "next": "mañana",
//        "past": [
//          "one": "hace {0} día",
//          "other": "hace {0} días"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} día",
//          "other": "dentro de {0} días"
//        ] as [String: String]
//      ] as [String: Any],
//      "hour": [
//        "current": "esta hora",
//        "past": "hace {0} h",
//        "future": "dentro de {0} h"
//      ] as [String: String],
//      "minute": [
//        "current": "este minuto",
//        "past": "hace {0} min",
//        "future": "dentro de {0} min"
//      ] as [String: String],
//      "second": [
//        "current": "ahora",
//        "past": "hace {0} s",
//        "future": "dentro de {0} s"
//      ] as [String: String],
     "now": "ahora"
   ] as [String: Any]
}

 private var _long: [String: Any] {
    return [
//      "year": [
//        "previous": "el año pasado",
//        "current": "este año",
//        "next": "el año próximo",
//        "past": [
//          "one": "hace {0} año",
//          "other": "hace {0} años"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} año",
//          "other": "dentro de {0} años"
//        ] as [String: String]
//      ] as [String: Any],
//      "quarter": [
//        "previous": "el trimestre pasado",
//        "current": "este trimestre",
//        "next": "el próximo trimestre",
//        "past": [
//          "one": "hace {0} trimestre",
//          "other": "hace {0} trimestres"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} trimestre",
//          "other": "dentro de {0} trimestres"
//        ] as [String: String]
//      ] as [String: Any],
//      "month": [
//        "previous": "el mes pasado",
//        "current": "este mes",
//        "next": "el mes próximo",
//        "past": [
//          "one": "hace {0} mes",
//          "other": "hace {0} meses"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} mes",
//          "other": "dentro de {0} meses"
//        ] as [String: String]
//      ] as [String: Any],
//      "week": [
//        "previous": "la semana pasada",
//        "current": "esta semana",
//        "next": "la semana próxima",
//        "past": [
//          "one": "hace {0} semana",
//          "other": "hace {0} semanas"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} semana",
//          "other": "dentro de {0} semanas"
//        ] as [String: String]
//      ] as [String: Any],
//      "day": [
//        "previous": "ayer",
//        "current": "hoy",
//        "next": "mañana",
//        "past": [
//          "one": "hace {0} día",
//          "other": "hace {0} días"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} día",
//          "other": "dentro de {0} días"
//        ] as [String: String]
//      ] as [String: Any],
//      "hour": [
//        "current": "esta hora",
//        "past": [
//          "one": "hace {0} hora",
//          "other": "hace {0} horas"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} hora",
//          "other": "dentro de {0} horas"
//        ] as [String: String]
//      ] as [String: Any],
//      "minute": [
//        "current": "este minuto",
//        "past": [
//          "one": "hace {0} minuto",
//          "other": "hace {0} minutos"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} minuto",
//          "other": "dentro de {0} minutos"
//        ] as [String: String]
//      ] as [String: Any],
//      "second": [
//        "current": "ahora",
//        "past": [
//          "one": "hace {0} segundo",
//          "other": "hace {0} segundos"
//        ] as [String: String],
//        "future": [
//          "one": "dentro de {0} segundo",
//          "other": "dentro de {0} segundos"
//        ] as [String: String]
//      ] as [String: Any],
			"now": "ahora"
		] as [String: Any]
	}
}
