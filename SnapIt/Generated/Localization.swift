// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum Localization {
  /// Apple Pay
  internal static let applePay = Localization.tr("Localizable", "apple_pay")

  internal enum Account {
    /// Help
    internal static let help = Localization.tr("Localizable", "account.help")
    /// My Account
    internal static let myAccount = Localization.tr("Localizable", "account.my_account")
    /// Notifications
    internal static let notifications = Localization.tr("Localizable", "account.notifications")
    /// Share with friends
    internal static let shareWithFriends = Localization.tr("Localizable", "account.share_with_friends")
    /// Profile
    internal static let title = Localization.tr("Localizable", "account.title")
    internal enum Help {
      /// Call Operating Centre
      internal static let call = Localization.tr("Localizable", "account.help.call")
      /// Complaints
      internal static let complaints = Localization.tr("Localizable", "account.help.complaints")
      /// Contact Us
      internal static let contactUs = Localization.tr("Localizable", "account.help.contact_us")
      /// FAQ
      internal static let faq = Localization.tr("Localizable", "account.help.faq")
      /// Terms and Privacy Policy
      internal static let terms = Localization.tr("Localizable", "account.help.terms")
    }
  }

  internal enum App {
    /// The App Solutions
    internal static let organization = Localization.tr("Localizable", "app.organization")
    /// TAS
    internal static let organizationShort = Localization.tr("Localizable", "app.organization_short")
    /// ERP
    internal static let title = Localization.tr("Localizable", "app.title")
  }

  internal enum Buttons {
    /// Accept
    internal static let accept = Localization.tr("Localizable", "buttons.accept")
    /// Add new
    internal static let addNew = Localization.tr("Localizable", "buttons.add_new")
    /// Cancel
    internal static let cancel = Localization.tr("Localizable", "buttons.cancel")
    /// Confirm
    internal static let confirm = Localization.tr("Localizable", "buttons.confirm")
    /// Continue
    internal static let `continue` = Localization.tr("Localizable", "buttons.continue")
    /// Create
    internal static let crate = Localization.tr("Localizable", "buttons.crate")
    /// Details
    internal static let details = Localization.tr("Localizable", "buttons.details")
    /// Done
    internal static let done = Localization.tr("Localizable", "buttons.done")
    /// Edit profile
    internal static let editProfile = Localization.tr("Localizable", "buttons.edit_profile")
    /// End
    internal static let end = Localization.tr("Localizable", "buttons.end")
    /// Save Report
    internal static let endAndSave = Localization.tr("Localizable", "buttons.end_and_save")
    /// Go to FAQs
    internal static let goToFaqs = Localization.tr("Localizable", "buttons.go_to_faqs")
    /// Go to Settings
    internal static let goToSettings = Localization.tr("Localizable", "buttons.go_to_settings")
    /// Help
    internal static let help = Localization.tr("Localizable", "buttons.help")
    /// List
    internal static let list = Localization.tr("Localizable", "buttons.list")
    /// Log in
    internal static let logIn = Localization.tr("Localizable", "buttons.log_in")
    /// Need Help?
    internal static let needHelp = Localization.tr("Localizable", "buttons.need_help")
    /// No
    internal static let no = Localization.tr("Localizable", "buttons.no")
    /// Ok
    internal static let ok = Localization.tr("Localizable", "buttons.ok")
    /// Pause
    internal static let pause = Localization.tr("Localizable", "buttons.pause")
    /// Report
    internal static let report = Localization.tr("Localizable", "buttons.report")
    /// Search
    internal static let search = Localization.tr("Localizable", "buttons.search")
    /// Send
    internal static let send = Localization.tr("Localizable", "buttons.send")
    /// Sign out
    internal static let signOut = Localization.tr("Localizable", "buttons.sign_out")
    /// Start
    internal static let start = Localization.tr("Localizable", "buttons.start")
    /// Timesheet
    internal static let timesheet = Localization.tr("Localizable", "buttons.timesheet")
    /// Update
    internal static let update = Localization.tr("Localizable", "buttons.update")
    /// Updating
    internal static let updating = Localization.tr("Localizable", "buttons.updating")
    /// View All
    internal static let viewAll = Localization.tr("Localizable", "buttons.view_all")
    /// Wait
    internal static let wait = Localization.tr("Localizable", "buttons.wait")
    /// Yes
    internal static let yes = Localization.tr("Localizable", "buttons.yes")
  }

  internal enum Home {
    /// Company
    internal static let company = Localization.tr("Localizable", "home.company")
    /// Day off requests
    internal static let dayOffRequest = Localization.tr("Localizable", "home.day_off_request")
    /// Days exclusion
    internal static let daysExclusion = Localization.tr("Localizable", "home.days_exclusion")
    /// Finance
    internal static let finance = Localization.tr("Localizable", "home.finance")
    /// Project List
    internal static let projectList = Localization.tr("Localizable", "home.project_list")
    /// Projects
    internal static let projects = Localization.tr("Localizable", "home.projects")
    /// Salary Registry
    internal static let salaryRegistry = Localization.tr("Localizable", "home.salary_registry")
    /// Time Logging List
    internal static let timeLoggingList = Localization.tr("Localizable", "home.time_logging_list")
    /// Timer
    internal static let timer = Localization.tr("Localizable", "home.timer")
    /// Today, 
    internal static let title = Localization.tr("Localizable", "home.title")
  }

  internal enum Login {
    /// email
    internal static let email = Localization.tr("Localizable", "login.email")
    /// Forgot password?
    internal static let forgotPassword = Localization.tr("Localizable", "login.forgot_password")
    /// Continue with Google
    internal static let google = Localization.tr("Localizable", "login.google")
    /// Or
    internal static let or = Localization.tr("Localizable", "login.or")
    /// Password
    internal static let password = Localization.tr("Localizable", "login.password")
    /// Log In
    internal static let title = Localization.tr("Localizable", "login.title")
    internal enum Failure {
      internal enum Messages {
        /// Your account is blocked. Contact your system administrator
        internal static let blocked = Localization.tr("Localizable", "login.failure.messages.blocked")
      }
      internal enum Titles {
        /// Account Blocked
        internal static let blocked = Localization.tr("Localizable", "login.failure.titles.blocked")
      }
    }
  }

  internal enum ResetPassword {
    /// Enter your email used to access ERP
    internal static let subtitle = Localization.tr("Localizable", "reset_password.subtitle")
    /// Restore Password
    internal static let title = Localization.tr("Localizable", "reset_password.title")
  }

  internal enum Time {
    /// hour
    internal static let hour = Localization.tr("Localizable", "time.hour")
    /// minute
    internal static let minute = Localization.tr("Localizable", "time.minute")
    /// minutes
    internal static let minutes = Localization.tr("Localizable", "time.minutes")
    /// second
    internal static let second = Localization.tr("Localizable", "time.second")
    /// seconds
    internal static let seconds = Localization.tr("Localizable", "time.seconds")
  }

  internal enum Timesheet {
    /// Time Logging List
    internal static let title = Localization.tr("Localizable", "timesheet.title")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension Localization {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
