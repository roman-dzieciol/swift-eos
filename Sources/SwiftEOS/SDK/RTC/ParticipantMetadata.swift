import Foundation
import EOSSDK

/** This struct is used to get information about a specific participant metadata item. */
public struct SwiftEOS_RTC_ParticipantMetadata {

    /** API Version: Set this to `EOS_RTC_PARTICIPANTMETADATA_API_LATEST`. */
    public let ApiVersion: Int32

    /** The unique key of this metadata item. The max size of the string is `EOS_RTC_PARTICIPANTMETADATA_KEY_MAXCHARCOUNT`. */
    public let Key: String?

    /** The value of this metadata item. The max size of the string is `EOS_RTC_PARTICIPANTMETADATA_VALUE_MAXCHARCOUNT`. */
    public let Value: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_ParticipantMetadata?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.Value = String(cString: sdkObject.Value)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTC_PARTICIPANTMETADATA_API_LATEST`.
    - Parameter Key: The unique key of this metadata item. The max size of the string is `EOS_RTC_PARTICIPANTMETADATA_KEY_MAXCHARCOUNT`.
    - Parameter Value: The value of this metadata item. The max size of the string is `EOS_RTC_PARTICIPANTMETADATA_VALUE_MAXCHARCOUNT`.
    */
    public init(
        ApiVersion: Int32 = EOS_RTC_PARTICIPANTMETADATA_API_LATEST,
        Key: String?,
        Value: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.Value = Value
    }
}
