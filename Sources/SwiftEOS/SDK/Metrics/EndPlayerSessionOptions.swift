import Foundation
import EOSSDK

/** EndPlayerSession.  */
public struct SwiftEOS_Metrics_EndPlayerSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_METRICS_ENDPLAYERSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Account ID type that is set in the union.  */
    public let AccountIdType: EOS_EMetricsAccountIdType
    public let AccountId: _tagEOS_Metrics_EndPlayerSessionOptions.__Unnamed_union_AccountId

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Metrics_EndPlayerSessionOptions {
        _tagEOS_Metrics_EndPlayerSessionOptions(
            ApiVersion: ApiVersion,
            AccountIdType: AccountIdType,
            AccountId: AccountId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Metrics_EndPlayerSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AccountIdType = sdkObject.AccountIdType
        self.AccountId = sdkObject.AccountId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_METRICS_ENDPLAYERSESSION_API_LATEST,
        AccountIdType: EOS_EMetricsAccountIdType,
        AccountId: _tagEOS_Metrics_EndPlayerSessionOptions.__Unnamed_union_AccountId
    ) {
        self.ApiVersion = ApiVersion
        self.AccountIdType = AccountIdType
        self.AccountId = AccountId
    }
}
