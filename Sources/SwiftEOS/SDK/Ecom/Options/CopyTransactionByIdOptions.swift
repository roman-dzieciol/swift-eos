import Foundation
import EOSSDK

/** Input parameters for the `EOS_Ecom_CopyTransactionById` function. */
public struct SwiftEOS_Ecom_CopyTransactionByIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_COPYTRANSACTIONBYID_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is associated with the transaction */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the transaction to get */
    public let TransactionId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyTransactionByIdOptions {
        _tagEOS_Ecom_CopyTransactionByIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TransactionId: pointerManager.managedPointerToBuffer(copyingArray: TransactionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyTransactionByIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TransactionId = String(cString: sdkObject.TransactionId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_COPYTRANSACTIONBYID_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is associated with the transaction
    - Parameter TransactionId: The ID of the transaction to get
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYTRANSACTIONBYID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TransactionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TransactionId = TransactionId
    }
}
