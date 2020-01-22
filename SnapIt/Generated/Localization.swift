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
  /// Driver
  internal static let driver = Localization.tr("Localizable", "driver")

  internal enum Account {
    /// Damage Reporting
    internal static let damageReporting = Localization.tr("Localizable", "account.damage_reporting")
    /// Driven Member
    internal static let drivenMember = Localization.tr("Localizable", "account.driven_member")
    /// Help
    internal static let help = Localization.tr("Localizable", "account.help")
    /// Journeys
    internal static let journeys = Localization.tr("Localizable", "account.journeys")
    /// My Account
    internal static let myAccount = Localization.tr("Localizable", "account.my_account")
    /// Notifications
    internal static let notifications = Localization.tr("Localizable", "account.notifications")
    /// Previous Journeys
    internal static let previousJourneys = Localization.tr("Localizable", "account.previous_journeys")
    /// Share with friends
    internal static let shareWithFriends = Localization.tr("Localizable", "account.share_with_friends")
    /// Submitted Documents
    internal static let submittedDocuments = Localization.tr("Localizable", "account.submitted_documents")
    /// Account
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
      /// Lost Property
      internal static let lostProperty = Localization.tr("Localizable", "account.help.lost_property")
      /// Terms and Privacy Policy
      internal static let terms = Localization.tr("Localizable", "account.help.terms")
    }
    internal enum My {
      /// Membership
      internal static let membership = Localization.tr("Localizable", "account.my.membership")
      /// Change Payment Method
      internal static let payment = Localization.tr("Localizable", "account.my.payment")
    }
  }

  internal enum Alert {
    internal enum Buttons {
      /// Cancel
      internal static let cancel = Localization.tr("Localizable", "alert.buttons.cancel")
      /// Complaint
      internal static let complaint = Localization.tr("Localizable", "alert.buttons.complaint")
      /// General Feedback
      internal static let generalFeedback = Localization.tr("Localizable", "alert.buttons.general_feedback")
      /// Lost Property
      internal static let lostProperty = Localization.tr("Localizable", "alert.buttons.lost_property")
      /// Reject and Report
      internal static let rejectAndReport = Localization.tr("Localizable", "alert.buttons.reject_and_report")
    }
    internal enum Messages {
      /// Your supercar is on its way
      internal static let accepted = Localization.tr("Localizable", "alert.messages.accepted")
      /// We are just looking for a driver
      internal static let accepting = Localization.tr("Localizable", "alert.messages.accepting")
      /// \nSomeone has already booked this car on this date. Choose a different date or other car.
      internal static let booked = Localization.tr("Localizable", "alert.messages.booked")
      /// We want you to have the best possible experience. Please visit our Summon FAQ’s for Booking Best Practices.
      internal static let bookingBestPractices = Localization.tr("Localizable", "alert.messages.booking_best_practices")
      /// Your Summon has been cancelled
      internal static let cancelled = Localization.tr("Localizable", "alert.messages.cancelled")
      /// Your ride has been cancelled
      internal static let cancelledByDriver = Localization.tr("Localizable", "alert.messages.cancelled_by_driver")
      /// Your ride has been cancelled
      internal static let cancelledByOperator = Localization.tr("Localizable", "alert.messages.cancelled_by_operator")
      /// We are just telling the driver
      internal static let cancelling = Localization.tr("Localizable", "alert.messages.cancelling")
      /// Your driver is unable to pick you up at the selected time, please choose a later pickup time
      internal static let carBooked = Localization.tr("Localizable", "alert.messages.car_booked")
      /// We are just telling the drivers
      internal static let changing = Localization.tr("Localizable", "alert.messages.changing")
      /// Thank You for using HYPR
      internal static let completed = Localization.tr("Localizable", "alert.messages.completed")
      /// Please type your message
      internal static let emptyError = Localization.tr("Localizable", "alert.messages.empty_error")
      /// \nCancelling your Summon will\nincure a fee 
      internal static let feeForCancel = Localization.tr("Localizable", "alert.messages.fee_for_cancel")
      /// Stay tuned!
      internal static let inDevelopment = Localization.tr("Localizable", "alert.messages.in_development")
      /// Your device has lost connection to the internet
      internal static let internet = Localization.tr("Localizable", "alert.messages.internet")
      /// Please specify addresses
      internal static let invalidLocation = Localization.tr("Localizable", "alert.messages.invalid_location")
      /// Selected location is out of bounds. Please choose a place closer to the center.
      internal static let outOfBounds = Localization.tr("Localizable", "alert.messages.out_of_bounds")
      /// Try again later or with other payment method
      internal static let paymentFailed = Localization.tr("Localizable", "alert.messages.payment_failed")
      /// Your booking has expired due to payment timeout
      internal static let paymentTimeout = Localization.tr("Localizable", "alert.messages.payment_timeout")
      /// Unable to present Apple Pay authorization.
      internal static let paymentUnavailable = Localization.tr("Localizable", "alert.messages.payment_unavailable")
      /// Rejecting a Summon will require a report.
      internal static let rejectSummonMessage = Localization.tr("Localizable", "alert.messages.reject_summon_message")
      /// This car is no longer available
      internal static let rejected = Localization.tr("Localizable", "alert.messages.rejected")
      /// Journey update has been cancelled
      internal static let updateRejected = Localization.tr("Localizable", "alert.messages.update_rejected")
      /// Unfortunately we can not extend your journey due to the driver being unavailable
      internal static let updateUnavailable = Localization.tr("Localizable", "alert.messages.update_unavailable")
      /// Your Journey has been updated!
      internal static let updated = Localization.tr("Localizable", "alert.messages.updated")
      /// We are just letting the Driver know
      internal static let updating = Localization.tr("Localizable", "alert.messages.updating")
    }
    internal enum Titles {
      /// Driver Accepted Summon
      internal static let accepted = Localization.tr("Localizable", "alert.titles.accepted")
      /// HYPR Has Accepted Your Booking
      internal static let accepting = Localization.tr("Localizable", "alert.titles.accepting")
      /// Are You Sure?
      internal static let areYouSure = Localization.tr("Localizable", "alert.titles.are_you_sure")
      /// Already booked!
      internal static let booked = Localization.tr("Localizable", "alert.titles.booked")
      /// Booking Accepted
      internal static let bookingAccepted = Localization.tr("Localizable", "alert.titles.booking_accepted")
      /// Booking Best Practices
      internal static let bookingBestPractices = Localization.tr("Localizable", "alert.titles.booking_best_practices")
      /// Summon Cancelled
      internal static let cancelled = Localization.tr("Localizable", "alert.titles.cancelled")
      /// Driver Cancelled the Ride
      internal static let cancelledByDriver = Localization.tr("Localizable", "alert.titles.cancelled_by_driver")
      /// Operator Cancelled the Ride
      internal static let cancelledByOperator = Localization.tr("Localizable", "alert.titles.cancelled_by_operator")
      /// Cancelling Summon
      internal static let cancelling = Localization.tr("Localizable", "alert.titles.cancelling")
      /// Need More Time For Pickup
      internal static let carBooked = Localization.tr("Localizable", "alert.titles.car_booked")
      /// Changing Car
      internal static let changing = Localization.tr("Localizable", "alert.titles.changing")
      /// Journey Completed
      internal static let completed = Localization.tr("Localizable", "alert.titles.completed")
      /// Error
      internal static let error = Localization.tr("Localizable", "alert.titles.error")
      /// Help with...
      internal static let helpWith = Localization.tr("Localizable", "alert.titles.help_with")
      /// In Development
      internal static let inDevelopment = Localization.tr("Localizable", "alert.titles.in_development")
      /// No Internet Connection
      internal static let internet = Localization.tr("Localizable", "alert.titles.internet")
      /// Failed to Create a Route
      internal static let invalidLocation = Localization.tr("Localizable", "alert.titles.invalid_location")
      /// Payment Failed
      internal static let paymentFailed = Localization.tr("Localizable", "alert.titles.payment_failed")
      /// Payment Timeout
      internal static let paymentTimeout = Localization.tr("Localizable", "alert.titles.payment_timeout")
      /// Error
      internal static let paymentUnavailable = Localization.tr("Localizable", "alert.titles.payment_unavailable")
      /// Summon Not Accepted
      internal static let rejected = Localization.tr("Localizable", "alert.titles.rejected")
      /// Driver Cancelled the Update
      internal static let updateRejected = Localization.tr("Localizable", "alert.titles.update_rejected")
      /// Update Journey Unavailable
      internal static let updateUnavailable = Localization.tr("Localizable", "alert.titles.update_unavailable")
      /// Journey Updated
      internal static let updated = Localization.tr("Localizable", "alert.titles.updated")
      /// Updating Journey
      internal static let updating = Localization.tr("Localizable", "alert.titles.updating")
    }
  }

  internal enum Alternative {
    /// Alternative
    internal static let alternative = Localization.tr("Localizable", "alternative.alternative")
    /// Alternative pickup
    internal static let alternativePickup = Localization.tr("Localizable", "alternative.alternative_pickup")
    /// Current Pickup
    internal static let currentPickup = Localization.tr("Localizable", "alternative.current_pickup")
    /// If you continue this summon with the current car it will cost you 
    internal static let emptyDescription = Localization.tr("Localizable", "alternative.empty_description")
    /// Your car is engaged
    internal static let engaged = Localization.tr("Localizable", "alternative.engaged")
    /// Your car is running late!
    internal static let late = Localization.tr("Localizable", "alternative.late")
    /// No Alternative Available
    internal static let noAlternative = Localization.tr("Localizable", "alternative.no_alternative")
    /// Pickup Longer than Journey
    internal static let pickupLongerThanJourney = Localization.tr("Localizable", "alternative.pickup_longer_than_journey")
    /// Summon an alternative
    internal static let summonAnAlternative = Localization.tr("Localizable", "alternative.summon_an_alternative")
  }

  internal enum App {
    /// HYPR
    internal static let title = Localization.tr("Localizable", "app.title")
  }

  internal enum Buttons {
    /// Accept
    internal static let accept = Localization.tr("Localizable", "buttons.accept")
    /// Arrived
    internal static let arrived = Localization.tr("Localizable", "buttons.arrived")
    /// Cancel
    internal static let cancel = Localization.tr("Localizable", "buttons.cancel")
    /// Cancel Summon
    internal static let cancelSummon = Localization.tr("Localizable", "buttons.cancel_summon")
    /// Confirm
    internal static let confirm = Localization.tr("Localizable", "buttons.confirm")
    /// Confirm End
    internal static let confirmEnd = Localization.tr("Localizable", "buttons.confirm_end")
    /// Confirm Summon
    internal static let confirmSummon = Localization.tr("Localizable", "buttons.confirm_summon")
    /// Continue
    internal static let `continue` = Localization.tr("Localizable", "buttons.continue")
    /// Continue Summon
    internal static let continueSummon = Localization.tr("Localizable", "buttons.continue_summon")
    /// Details
    internal static let details = Localization.tr("Localizable", "buttons.details")
    /// Done
    internal static let done = Localization.tr("Localizable", "buttons.done")
    /// Edit profile
    internal static let editProfile = Localization.tr("Localizable", "buttons.edit_profile")
    /// End
    internal static let end = Localization.tr("Localizable", "buttons.end")
    /// Get Tickets
    internal static let getTickets = Localization.tr("Localizable", "buttons.get_tickets")
    /// Go to FAQs
    internal static let goToFaqs = Localization.tr("Localizable", "buttons.go_to_faqs")
    /// Go to Settings
    internal static let goToSettings = Localization.tr("Localizable", "buttons.go_to_settings")
    /// HELP
    internal static let help = Localization.tr("Localizable", "buttons.help")
    /// Log in
    internal static let logIn = Localization.tr("Localizable", "buttons.log_in")
    /// Need Help?
    internal static let needHelp = Localization.tr("Localizable", "buttons.need_help")
    /// No
    internal static let no = Localization.tr("Localizable", "buttons.no")
    /// Ok
    internal static let ok = Localization.tr("Localizable", "buttons.ok")
    /// Pickup
    internal static let pickup = Localization.tr("Localizable", "buttons.pickup")
    /// Reject Update
    internal static let rejectUpdate = Localization.tr("Localizable", "buttons.reject_update")
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
    /// Summon Alternative
    internal static let summonAlternative = Localization.tr("Localizable", "buttons.summon_alternative")
    /// Update
    internal static let update = Localization.tr("Localizable", "buttons.update")
    /// Update Journey
    internal static let updateJourney = Localization.tr("Localizable", "buttons.update_journey")
    /// Updating
    internal static let updating = Localization.tr("Localizable", "buttons.updating")
    /// Upload video
    internal static let uploadVideo = Localization.tr("Localizable", "buttons.upload_video")
    /// View All
    internal static let viewAll = Localization.tr("Localizable", "buttons.view_all")
    /// Wait
    internal static let wait = Localization.tr("Localizable", "buttons.wait")
    /// Yes
    internal static let yes = Localization.tr("Localizable", "buttons.yes")
  }

  internal enum Car {
    ///  kW
    internal static let power = Localization.tr("Localizable", "car.power")
    ///  mph
    internal static let speed = Localization.tr("Localizable", "car.speed")
  }

  internal enum Dashboard {
    /// All cars in use
    internal static let allCarsInUse = Localization.tr("Localizable", "dashboard.all_cars_in_use")
    /// You can still book by pressing the book icon below
    internal static let canStillBook = Localization.tr("Localizable", "dashboard.can_still_book")
    /// Estimated Pickup
    internal static let estimatedPickup = Localization.tr("Localizable", "dashboard.estimated_pickup")
    /// Live Cars
    internal static let liveCars = Localization.tr("Localizable", "dashboard.live_cars")
    /// Turn on location services
    internal static let locationServicesAccessDenied = Localization.tr("Localizable", "dashboard.location_services_access_denied")
    /// Allow location data access to view live cars near you
    internal static let locationServicesPleaseEnable = Localization.tr("Localizable", "dashboard.location_services_please_enable")
    /// We are currently sleeping
    internal static let sleeping = Localization.tr("Localizable", "dashboard.sleeping")
    /// HYPR
    internal static let title = Localization.tr("Localizable", "dashboard.title")
  }

  internal enum Events {
    /// Events
    internal static let title = Localization.tr("Localizable", "events.title")
  }

  internal enum Journey {
    /// Your Supercar Has Arrived
    internal static let arrived = Localization.tr("Localizable", "journey.arrived")
    /// Arriving in:
    internal static let arrivingIn = Localization.tr("Localizable", "journey.arriving_in")
    /// Confirm and Pay
    internal static let confirmAndPay = Localization.tr("Localizable", "journey.confirm_and_pay")
    /// Confirm End
    internal static let confirmEnd = Localization.tr("Localizable", "journey.confirm_end")
    /// Confirm Payment\n
    internal static let confirmPayment = Localization.tr("Localizable", "journey.confirm_payment")
    /// DRIVER LICENSE: 
    internal static let driverLicense = Localization.tr("Localizable", "journey.driver_license")
    ///  from 
    internal static let paymentFromSuffix = Localization.tr("Localizable", "journey.payment_from_suffix")
    /// Select Payment Method
    internal static let selectPaymentMethod = Localization.tr("Localizable", "journey.select_payment_method")
    /// Update Payment Method
    internal static let updatePaymentMethod = Localization.tr("Localizable", "journey.update_payment_method")
    internal enum Status {
      /// Accepted
      internal static let accepted = Localization.tr("Localizable", "journey.status.accepted")
      /// Cancelled
      internal static let cancelled = Localization.tr("Localizable", "journey.status.cancelled")
      /// Cancelled by Driver
      internal static let cancelledByDriver = Localization.tr("Localizable", "journey.status.cancelled_by_driver")
      /// Cancelled by Operator
      internal static let cancelledByOperator = Localization.tr("Localizable", "journey.status.cancelled_by_operator")
      /// Completed
      internal static let completed = Localization.tr("Localizable", "journey.status.completed")
      /// New
      internal static let new = Localization.tr("Localizable", "journey.status.new")
      /// Ongoing
      internal static let ongoing = Localization.tr("Localizable", "journey.status.ongoing")
      /// Payment Failed
      internal static let paymentFailed = Localization.tr("Localizable", "journey.status.payment_failed")
      /// Payment Timeout
      internal static let paymentTimeout = Localization.tr("Localizable", "journey.status.payment_timeout")
      /// Pickuped
      internal static let picked = Localization.tr("Localizable", "journey.status.picked")
      /// Pre booked
      internal static let preBooked = Localization.tr("Localizable", "journey.status.pre_booked")
      /// Previous
      internal static let previous = Localization.tr("Localizable", "journey.status.previous")
      /// Rejected
      internal static let rejected = Localization.tr("Localizable", "journey.status.rejected")
      /// Rejected by Driver
      internal static let rejectedByDriver = Localization.tr("Localizable", "journey.status.rejected_by_driver")
      /// Updated
      internal static let updated = Localization.tr("Localizable", "journey.status.updated")
      /// Updating
      internal static let updating = Localization.tr("Localizable", "journey.status.updating")
      /// Waiting
      internal static let waiting = Localization.tr("Localizable", "journey.status.waiting")
      /// Waiting for Payment
      internal static let waitingForPayment = Localization.tr("Localizable", "journey.status.waiting_for_payment")
    }
  }

  internal enum Listings {
    /// MODELS
    internal static let models = Localization.tr("Localizable", "listings.models")
    /// Listings
    internal static let title = Localization.tr("Localizable", "listings.title")
    internal enum Sections {
      /// BRAND
      internal static let brand = Localization.tr("Localizable", "listings.sections.brand")
      /// VIEW ALL
      internal static let viewAll = Localization.tr("Localizable", "listings.sections.view_all")
    }
  }

  internal enum Login {
    /// Email
    internal static let email = Localization.tr("Localizable", "login.email")
    /// Password
    internal static let password = Localization.tr("Localizable", "login.password")
    internal enum Failure {
      internal enum Messages {
        /// Your membership has been cancelled. To access the platform again, please reapply via the website.
        internal static let cancelled = Localization.tr("Localizable", "login.failure.messages.cancelled")
        /// Your membership has been frozen. To access the platform again, please unfreeze your account via the website.
        internal static let frozen = Localization.tr("Localizable", "login.failure.messages.frozen")
        /// Your application is being reviewed at the moment, and so we cannot grant you access to the platform just yet. Please wait for the confirmation email.
        internal static let pending = Localization.tr("Localizable", "login.failure.messages.pending")
        /// Unfortunately your membership application has been rejected and we are unable to grant you access to the platform.
        internal static let rejected = Localization.tr("Localizable", "login.failure.messages.rejected")
      }
      internal enum Titles {
        /// Membership Cancelled
        internal static let cancelled = Localization.tr("Localizable", "login.failure.titles.cancelled")
        /// Membership Frozen
        internal static let frozen = Localization.tr("Localizable", "login.failure.titles.frozen")
        /// Application Pending
        internal static let pending = Localization.tr("Localizable", "login.failure.titles.pending")
        /// Application Rejected
        internal static let rejected = Localization.tr("Localizable", "login.failure.titles.rejected")
      }
    }
  }

  internal enum Onboarding {
    /// CULTURE IN MOTION
    internal static let message = Localization.tr("Localizable", "onboarding.message")
    /// Summon Supercars
    internal static let title = Localization.tr("Localizable", "onboarding.title")
  }

  internal enum PreviousJorneys {
    /// Dropoff:
    internal static let dropoff = Localization.tr("Localizable", "previous_jorneys.dropoff")
    /// Pickup:
    internal static let pickup = Localization.tr("Localizable", "previous_jorneys.pickup")
    /// Status:
    internal static let status = Localization.tr("Localizable", "previous_jorneys.status")
    /// Supercar:
    internal static let supercar = Localization.tr("Localizable", "previous_jorneys.supercar")
    /// Journeys
    internal static let title = Localization.tr("Localizable", "previous_jorneys.title")
    internal enum Alert {
      /// Help with ...
      internal static let title = Localization.tr("Localizable", "previous_jorneys.alert.title")
    }
    internal enum Stub {
      /// You have no pre bookings
      internal static let current = Localization.tr("Localizable", "previous_jorneys.stub.current")
      /// You have no previous journeys
      internal static let previous = Localization.tr("Localizable", "previous_jorneys.stub.previous")
    }
  }

  internal enum Report {
    /// Report
    internal static let title = Localization.tr("Localizable", "report.title")
    internal enum Status {
      internal enum Complaint {
        /// Please write your complaint.
        internal static let description = Localization.tr("Localizable", "report.status.complaint.description")
        /// Complaint
        internal static let title = Localization.tr("Localizable", "report.status.complaint.title")
      }
      internal enum Feedback {
        /// Please write your feedback below.
        internal static let description = Localization.tr("Localizable", "report.status.feedback.description")
        /// Feedback
        internal static let title = Localization.tr("Localizable", "report.status.feedback.title")
      }
      internal enum LostProperty {
        /// Please describe what you have lost.
        internal static let description = Localization.tr("Localizable", "report.status.lostProperty.description")
        /// Lost Property
        internal static let title = Localization.tr("Localizable", "report.status.lostProperty.title")
      }
      internal enum Reject {
        /// Reject Report
        internal static let title = Localization.tr("Localizable", "report.status.reject.title")
      }
    }
  }

  internal enum Siri {
    /// Summon Supercar
    internal static let closestSummon = Localization.tr("Localizable", "siri.closest_summon")
    /// You can get the car now or pre book.
    internal static let closestSummonSubtitle = Localization.tr("Localizable", "siri.closest_summon_subtitle")
    /// Prebook 
    internal static let prebook = Localization.tr("Localizable", "siri.prebook")
    /// You can pre book the Supercar in advance.
    internal static let prebookSubtitle = Localization.tr("Localizable", "siri.prebook_subtitle")
    /// Summon 
    internal static let summon = Localization.tr("Localizable", "siri.summon")
    /// You can summon the car now!
    internal static let summonSubtitle = Localization.tr("Localizable", "siri.summon_subtitle")
  }

  internal enum Summon {
    /// Dropoff Location
    internal static let dropoffLocation = Localization.tr("Localizable", "summon.dropoff_location")
    /// Paying with
    internal static let payingWith = Localization.tr("Localizable", "summon.paying_with")
    /// Pickup Date
    internal static let pickupDate = Localization.tr("Localizable", "summon.pickup_date")
    /// Pickup Location
    internal static let pickupLocation = Localization.tr("Localizable", "summon.pickup_location")
    /// Summon End
    internal static let summonEnd = Localization.tr("Localizable", "summon.summon_end")
    /// Summon Estimation
    internal static let summonEstimation = Localization.tr("Localizable", "summon.summon_estimation")
    /// Summon Pickup
    internal static let summonPickup = Localization.tr("Localizable", "summon.summon_pickup")
    /// By pressing ‘Confirm Summon’, you agree with HYPR Terms & Conditions
    internal static let terms = Localization.tr("Localizable", "summon.terms")
    /// Confirmation
    internal static let title = Localization.tr("Localizable", "summon.title")
    /// By pressing ‘Confirm Update’, you agree with HYPR Terms & Conditions
    internal static let updateTerms = Localization.tr("Localizable", "summon.update_terms")
  }

  internal enum Tabbar {
    internal enum Items {
      /// Account
      internal static let account = Localization.tr("Localizable", "tabbar.items.account")
      /// Bookings
      internal static let bookings = Localization.tr("Localizable", "tabbar.items.bookings")
      /// Dashboard
      internal static let dashboard = Localization.tr("Localizable", "tabbar.items.dashboard")
    }
  }

  internal enum Time {
    /// hour
    internal static let hour = Localization.tr("Localizable", "time.hour")
    /// hour(s)
    internal static let hourS = Localization.tr("Localizable", "time.hour_s")
    /// minute
    internal static let minute = Localization.tr("Localizable", "time.minute")
    /// minute(s)
    internal static let minuteS = Localization.tr("Localizable", "time.minute_s")
    /// minutes
    internal static let minutes = Localization.tr("Localizable", "time.minutes")
    /// second
    internal static let second = Localization.tr("Localizable", "time.second")
    /// second(s)
    internal static let secondS = Localization.tr("Localizable", "time.second_s")
    /// seconds
    internal static let seconds = Localization.tr("Localizable", "time.seconds")
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
