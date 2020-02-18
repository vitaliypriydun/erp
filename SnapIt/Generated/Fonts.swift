// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
  internal typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  internal typealias Font = UIFont
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum AvenirNextCyr {
    internal static let bold = FontConvertible(name: "AvenirNextCyr-Bold", family: "Avenir Next Cyr", path: "AvenirNextCyr-Bold.ttf")
    internal static let boldItalic = FontConvertible(name: "AvenirNextCyr-BoldItalic", family: "Avenir Next Cyr", path: "AvenirNextCyr-BoldItalic.ttf")
    internal static let demi = FontConvertible(name: "AvenirNextCyr-Demi", family: "Avenir Next Cyr", path: "AvenirNextCyr-Demi.ttf")
    internal static let demiItalic = FontConvertible(name: "AvenirNextCyr-DemiItalic", family: "Avenir Next Cyr", path: "AvenirNextCyr-DemiItalic.ttf")
    internal static let heavy = FontConvertible(name: "AvenirNextCyr-Heavy", family: "Avenir Next Cyr", path: "AvenirNextCyr-Heavy.ttf")
    internal static let heavyItalic = FontConvertible(name: "AvenirNextCyr-HeavyItalic", family: "Avenir Next Cyr", path: "AvenirNextCyr-HeavyItalic.ttf")
    internal static let italic = FontConvertible(name: "AvenirNextCyr-Italic", family: "Avenir Next Cyr", path: "AvenirNextCyr-Italic.ttf")
    internal static let light = FontConvertible(name: "AvenirNextCyr-Light", family: "Avenir Next Cyr", path: "AvenirNextCyr-Light.ttf")
    internal static let lightItalic = FontConvertible(name: "AvenirNextCyr-LightItalic", family: "Avenir Next Cyr", path: "AvenirNextCyr-LightItalic.ttf")
    internal static let medium = FontConvertible(name: "AvenirNextCyr-Medium", family: "Avenir Next Cyr", path: "AvenirNextCyr-Medium.ttf")
    internal static let mediumItalic = FontConvertible(name: "AvenirNextCyr-MediumItalic", family: "Avenir Next Cyr", path: "AvenirNextCyr-MediumItalic.ttf")
    internal static let regular = FontConvertible(name: "AvenirNextCyr-Regular", family: "Avenir Next Cyr", path: "AvenirNextCyr-Regular.ttf")
    internal static let thin = FontConvertible(name: "AvenirNextCyr-Thin", family: "Avenir Next Cyr", path: "AvenirNextCyr-Thin.ttf")
    internal static let thinItalic = FontConvertible(name: "AvenirNextCyr-ThinItalic", family: "Avenir Next Cyr", path: "AvenirNextCyr-ThinItalic.ttf")
    internal static let ultraLight = FontConvertible(name: "AvenirNextCyr-UltraLight", family: "Avenir Next Cyr", path: "AvenirNextCyr-UltraLight.ttf")
    internal static let ultraLightItalic = FontConvertible(name: "AvenirNextCyr-UltraLightIt", family: "Avenir Next Cyr", path: "AvenirNextCyr-UltraLightIt.ttf")
    internal static let all: [FontConvertible] = [bold, boldItalic, demi, demiItalic, heavy, heavyItalic, italic, light, lightItalic, medium, mediumItalic, regular, thin, thinItalic, ultraLight, ultraLightItalic]
  }
  internal enum SquareSansSerif7 {
    internal static let regular = FontConvertible(name: "SquareSansSerif7", family: "Square Sans Serif 7", path: "square-sans-serif-7.regular.ttf")
    internal static let all: [FontConvertible] = [regular]
  }
  internal enum TickingTimebombBB {
    internal static let regular = FontConvertible(name: "TickingTimebombBB", family: "Ticking Timebomb BB", path: "TickingTimebombBB.ttf")
    internal static let italic = FontConvertible(name: "TickingTimebombBB-Italic", family: "Ticking Timebomb BB", path: "TickingTimebombBB_ital.ttf")
    internal static let all: [FontConvertible] = [regular, italic]
  }
  internal enum TrendSans {
    internal static let one = FontConvertible(name: "TrendSansOne", family: "Trend Sans", path: "TrendSans-One.otf")
    internal static let oneItalic = FontConvertible(name: "TrendSansOne-Italic", family: "Trend Sans", path: "TrendSansOne-Italic.otf")
    internal static let all: [FontConvertible] = [one, oneItalic]
  }
  internal static let allCustomFonts: [FontConvertible] = [AvenirNextCyr.all, SquareSansSerif7.all, TickingTimebombBB.all, TrendSans.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  internal func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate var url: URL? {
    let bundle = Bundle(for: BundleToken.self)
    return bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension Font {
  convenience init!(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    #elseif os(OSX)
    if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
  }
}

private final class BundleToken {}
