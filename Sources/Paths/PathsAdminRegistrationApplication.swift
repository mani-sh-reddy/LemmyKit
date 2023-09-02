// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Admin {
    public var registrationApplication: RegistrationApplication {
        RegistrationApplication(path: path + "/registration_application")
    }

    public struct RegistrationApplication {
        /// Path: `/admin/registration_application`
        public let path: String
    }
}