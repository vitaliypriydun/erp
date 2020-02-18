// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  internal typealias AssetColorTypeAlias = NSColor
  internal typealias AssetImageTypeAlias = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  internal typealias AssetColorTypeAlias = UIColor
  internal typealias AssetImageTypeAlias = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Assets {
    internal static let calendar = ImageAsset(name: "calendar")
    internal static let checklist = ImageAsset(name: "checklist")
    internal static let diamond = ImageAsset(name: "diamond")
    internal static let document = ImageAsset(name: "document")
    internal static let money = ImageAsset(name: "money")
    internal static let sleep = ImageAsset(name: "sleep")
    internal static let speed = ImageAsset(name: "speed")
    internal static let stop = ImageAsset(name: "stop")
    internal static let timer = ImageAsset(name: "timer")
    internal static let work = ImageAsset(name: "work")
    internal static let arrow = ImageAsset(name: "arrow")
    internal static let arrowDown = ImageAsset(name: "arrow_down")
    internal static let arrowDownRed = ImageAsset(name: "arrow_down_red")
    internal static let arrowRightRed = ImageAsset(name: "arrow_right_red")
    internal static let arrowRightWhite = ImageAsset(name: "arrow_right_white")
    internal static let arrowUp = ImageAsset(name: "arrow_up")
    internal static let arrowUpRed = ImageAsset(name: "arrow_up_red")
    internal static let buttonBack = ImageAsset(name: "button_back")
    internal static let checkGreen = ImageAsset(name: "check_green")
    internal static let checkRed = ImageAsset(name: "check_red")
    internal static let buttonClose = ImageAsset(name: "button_close")
    internal static let buttonCloseWhite = ImageAsset(name: "button_close_white")
    internal static let plus = ImageAsset(name: "plus")
    internal static let plusRed = ImageAsset(name: "plus_red")
    internal static let buttonEdit = ImageAsset(name: "button_edit")
    internal static let iconInfo = ImageAsset(name: "icon_info")
    internal static let iconSearch = ImageAsset(name: "icon_search")
    internal static let buttonHide = ImageAsset(name: "button_hide")
    internal static let iconGoogle = ImageAsset(name: "icon_google")
    internal static let loginBackground = ImageAsset(name: "login_background")
    internal static let splashBackground = ImageAsset(name: "splash_background")
    internal static let splashIcon = ImageAsset(name: "splash_icon")
    internal static let account = ImageAsset(name: "account")
    internal static let accountSelected = ImageAsset(name: "account_selected")
    internal static let home = ImageAsset(name: "home")
    internal static let homeSelected = ImageAsset(name: "home_selected")
    internal static let list = ImageAsset(name: "list")
    internal static let listSelected = ImageAsset(name: "list_selected")
    internal static let bg = ImageAsset(name: "bg")
  }
  internal enum Colors {
    internal static let approved = ColorAsset(name: "approved")
    internal static let approvedLight = ColorAsset(name: "approved_light")
    internal static let pending = ColorAsset(name: "pending")
    internal static let pendingDark = ColorAsset(name: "pendingDark")
    internal static let background = ColorAsset(name: "background")
    internal static let black = ColorAsset(name: "black")
    internal static let blackFlat = ColorAsset(name: "black_flat")
    internal static let shadow = ColorAsset(name: "shadow")
    internal static let white = ColorAsset(name: "white")
    internal static let main = ColorAsset(name: "main")
    internal static let mainGradient = ColorAsset(name: "main_gradient")
    internal static let mainShadow = ColorAsset(name: "main_shadow")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal struct ColorAsset {
  internal fileprivate(set) var name: String

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  internal var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
}

internal extension AssetColorTypeAlias {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct DataAsset {
  internal fileprivate(set) var name: String

  #if os(iOS) || os(tvOS) || os(OSX)
  @available(iOS 9.0, tvOS 9.0, OSX 10.11, *)
  internal var data: NSDataAsset {
    return NSDataAsset(asset: self)
  }
  #endif
}

#if os(iOS) || os(tvOS) || os(OSX)
@available(iOS 9.0, tvOS 9.0, OSX 10.11, *)
internal extension NSDataAsset {
  convenience init!(asset: DataAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(name: asset.name, bundle: bundle)
    #elseif os(OSX)
    self.init(name: NSDataAsset.Name(asset.name), bundle: bundle)
    #endif
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  internal var image: AssetImageTypeAlias {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = AssetImageTypeAlias(named: name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = AssetImageTypeAlias(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

internal extension AssetImageTypeAlias {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

private final class BundleToken {}
