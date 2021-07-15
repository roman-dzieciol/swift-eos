import Foundation
import EOSSDK


/** A structure representing a log message */
public struct SwiftEOS_LogMessage {

    /** A string representation of the log message category, encoded in UTF-8. Only valid during the life of the callback, so copy the string if you need it later. */
    public let Category: String?

    /** The log message, encoded in UTF-8. Only valid during the life of the callback, so copy the string if you need it later. */
    public let Message: String?

    /** The log level associated with the message */
    public let Level: EOS_ELogLevel

    /**
    Memberwise initializer

    - Parameter Category: A string representation of the log message category, encoded in UTF-8. Only valid during the life of the callback, so copy the string if you need it later.
    - Parameter Message: The log message, encoded in UTF-8. Only valid during the life of the callback, so copy the string if you need it later.
    - Parameter Level: The log level associated with the message
    */
    public init(
        Category: String?,
        Message: String?,
        Level: EOS_ELogLevel
    ) {
        self.Category = Category
        self.Message = Message
        self.Level = Level
    }
}
