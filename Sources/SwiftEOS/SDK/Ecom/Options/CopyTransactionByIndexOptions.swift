import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_CopyTransactionByIndex function. */
public struct SwiftEOS_Ecom_CopyTransactionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is associated with the transaction */
    public let LocalUserId: EOS_EpicAccountId?

    /** The index of the transaction to get */
    public let TransactionIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyTransactionByIndexOptions {
        try _tagEOS_Ecom_CopyTransactionByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TransactionIndex: try safeNumericCast(exactly: TransactionIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyTransactionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TransactionIndex = try safeNumericCast(exactly: sdkObject.TransactionIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is associated with the transaction
    - Parameter TransactionIndex: The index of the transaction to get
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TransactionIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TransactionIndex = TransactionIndex
    }
}
