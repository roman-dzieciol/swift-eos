import Foundation
import EOSSDK


/** Output parameters for the `EOS_Ecom_QueryOwnership` Function. */
public struct SwiftEOS_Ecom_QueryOwnershipCallbackInfo {

    /** The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors. */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose ownership was queried */
    public let LocalUserId: EOS_EpicAccountId?

    /**
    List of catalog items and their ownership status

    - Note: ``EOS/_tagEOS_Ecom_QueryOwnershipCallbackInfo/ItemOwnershipCount``:
    Number of ownership results are included in this callback
    */
    public let ItemOwnership: [SwiftEOS_Ecom_ItemOwnership]?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemOwnership = try sdkObject.ItemOwnership?.array(safeNumericCast(exactly: sdkObject.ItemOwnershipCount)).compactMap { 
            try SwiftEOS_Ecom_ItemOwnership.init(sdkObject: $0.pointee) }
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_QueryOwnershipCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter ResultCode: The `EOS_EResult` code for the operation. `EOS_Success` indicates that the operation succeeded; other codes indicate errors.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose ownership was queried
    - Parameter ItemOwnership: List of catalog items and their ownership status
    - Note: ``EOS/_tagEOS_Ecom_QueryOwnershipCallbackInfo/ItemOwnershipCount``:
    Number of ownership results are included in this callback
    */
    public init(
        ResultCode: EOS_EResult,
        LocalUserId: EOS_EpicAccountId?,
        ItemOwnership: [SwiftEOS_Ecom_ItemOwnership]?
    ) {
        self.ResultCode = ResultCode
        self.LocalUserId = LocalUserId
        self.ItemOwnership = ItemOwnership
    }
}
