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
    internal static let buttonBack = ImageAsset(name: "button_back")
    internal static let buttonBook = ImageAsset(name: "button_book")
    internal static let buttonCallShadow = ImageAsset(name: "button_call_shadow")
    internal static let buttonChat = ImageAsset(name: "button_chat")
    internal static let buttonChatShadow = ImageAsset(name: "button_chat_shadow")
    internal static let buttonChatUnread = ImageAsset(name: "button_chat_unread")
    internal static let buttonClose = ImageAsset(name: "button_close")
    internal static let buttonCloseWhite = ImageAsset(name: "button_close_white")
    internal static let buttonCloseWithShadow = ImageAsset(name: "button_close_with_shadow")
    internal static let buttonEdit = ImageAsset(name: "button_edit")
    internal static let buttonSummon = ImageAsset(name: "button_summon")
    internal static let buttonSummonWhite = ImageAsset(name: "button_summon_white")
    internal static let engine = ImageAsset(name: "engine")
    internal static let horse = ImageAsset(name: "horse")
    internal static let speed = ImageAsset(name: "speed")
    internal static let dashboardBackground = ImageAsset(name: "dashboard_background")
    internal static let hyprWhite = ImageAsset(name: "hypr_white")
    internal static let iconLocation = ImageAsset(name: "icon_location")
    internal static let airport = ImageAsset(name: "airport")
    internal static let amusementPark = ImageAsset(name: "amusement_park")
    internal static let aquarium = ImageAsset(name: "aquarium")
    internal static let artGallery = ImageAsset(name: "art_gallery")
    internal static let atm = ImageAsset(name: "atm")
    internal static let bank = ImageAsset(name: "bank")
    internal static let bar = ImageAsset(name: "bar")
    internal static let bicycleStore = ImageAsset(name: "bicycle_store")
    internal static let bookStore = ImageAsset(name: "book_store")
    internal static let bowlingAlley = ImageAsset(name: "bowling_alley")
    internal static let busStation = ImageAsset(name: "bus_station")
    internal static let cafe = ImageAsset(name: "cafe")
    internal static let campground = ImageAsset(name: "campground")
    internal static let carDealer = ImageAsset(name: "car_dealer")
    internal static let carRental = ImageAsset(name: "car_rental")
    internal static let carRepair = ImageAsset(name: "car_repair")
    internal static let casino = ImageAsset(name: "casino")
    internal static let church = ImageAsset(name: "church")
    internal static let courthouse = ImageAsset(name: "courthouse")
    internal static let dentist = ImageAsset(name: "dentist")
    internal static let doctor = ImageAsset(name: "doctor")
    internal static let electrician = ImageAsset(name: "electrician")
    internal static let food = ImageAsset(name: "food")
    internal static let gasStation = ImageAsset(name: "gas_station")
    internal static let gym = ImageAsset(name: "gym")
    internal static let hairCare = ImageAsset(name: "hair_care")
    internal static let hospital = ImageAsset(name: "hospital")
    internal static let jewelryStore = ImageAsset(name: "jewelry_store")
    internal static let lawyer = ImageAsset(name: "lawyer")
    internal static let library = ImageAsset(name: "library")
    internal static let lodging = ImageAsset(name: "lodging")
    internal static let movieTheater = ImageAsset(name: "movie_theater")
    internal static let museum = ImageAsset(name: "museum")
    internal static let nightClub = ImageAsset(name: "night_club")
    internal static let police = ImageAsset(name: "police")
    internal static let postOffice = ImageAsset(name: "post_office")
    internal static let restaurant = ImageAsset(name: "restaurant")
    internal static let school = ImageAsset(name: "school")
    internal static let shoeStore = ImageAsset(name: "shoe_store")
    internal static let shoppingMall = ImageAsset(name: "shopping_mall")
    internal static let stadium = ImageAsset(name: "stadium")
    internal static let store = ImageAsset(name: "store")
    internal static let subwayStation = ImageAsset(name: "subway_station")
    internal static let supermarket = ImageAsset(name: "supermarket")
    internal static let synagogue = ImageAsset(name: "synagogue")
    internal static let taxiStand = ImageAsset(name: "taxi_stand")
    internal static let trainStation = ImageAsset(name: "train_station")
    internal static let travelAgency = ImageAsset(name: "travel_agency")
    internal static let zoo = ImageAsset(name: "zoo")
    internal static let iconArrow = ImageAsset(name: "icon_arrow")
    internal static let iconDriver = ImageAsset(name: "icon_driver")
    internal static let iconInfo = ImageAsset(name: "icon_info")
    internal static let iconLink = ImageAsset(name: "icon_link")
    internal static let iconMarker = ImageAsset(name: "icon_marker")
    internal static let iconSearch = ImageAsset(name: "icon_search")
    internal static let iconStar = ImageAsset(name: "icon_star")
    internal static let iconStarBordered = ImageAsset(name: "icon_star_bordered")
    internal static let stars = ImageAsset(name: "stars")
    internal static let applePayMark = ImageAsset(name: "Apple_Pay_Mark")
    internal static let poweredByGoogleOnWhite = ImageAsset(name: "powered_by_google_on_white")
    internal static let visa = ImageAsset(name: "visa")
    internal static let backgroundSplash = ImageAsset(name: "background_splash")
    internal static let onboardingBackground = ImageAsset(name: "onboarding_background")
    internal static let dev = ImageAsset(name: "dev")
    internal static let sad = ImageAsset(name: "sad")
    internal static let smile = ImageAsset(name: "smile")
    internal static let tabbarItemAccount = ImageAsset(name: "tabbar_item_account")
    internal static let tabbarItemDashboard = ImageAsset(name: "tabbar_item_dashboard")
    internal static let tabbarItemEvents = ImageAsset(name: "tabbar_item_events")
    internal static let tabbarItemListings = ImageAsset(name: "tabbar_item_listings")
    internal static let hyprMclaren = ImageAsset(name: "HYPR_Mclaren")
    internal static let carMarker = ImageAsset(name: "car_marker")
    internal static let mclaren = ImageAsset(name: "mclaren")
  }
  internal enum Colors {
    internal static let background = ColorAsset(name: "background")
    internal static let black = ColorAsset(name: "black")
    internal static let black50 = ColorAsset(name: "black50")
    internal static let black7 = ColorAsset(name: "black7")
    internal static let black42 = ColorAsset(name: "black_42")
    internal static let green = ColorAsset(name: "green")
    internal static let grey115 = ColorAsset(name: "grey115")
    internal static let grey151 = ColorAsset(name: "grey151")
    internal static let grey155 = ColorAsset(name: "grey155")
    internal static let grey170 = ColorAsset(name: "grey170")
    internal static let grey194 = ColorAsset(name: "grey194")
    internal static let grey216 = ColorAsset(name: "grey216")
    internal static let grey240 = ColorAsset(name: "grey240")
    internal static let grey6754 = ColorAsset(name: "grey67_54")
    internal static let grey74 = ColorAsset(name: "grey74")
    internal static let grey7430 = ColorAsset(name: "grey74_30")
    internal static let neon = ColorAsset(name: "neon")
    internal static let orange = ColorAsset(name: "orange")
    internal static let scarlet = ColorAsset(name: "scarlet")
    internal static let white = ColorAsset(name: "white")
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
