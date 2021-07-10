import Foundation
import EOSSDK
public class SwiftEOS_Sanctions_Actor: SwiftEOSActor {
    public let Handle: EOS_HSanctions

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HSanctions
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Copies an active player sanction.
    You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.
    On success, EOS_Sanctions_PlayerSanction_Release must be called on OutSanction to free memory.

    - Parameter TargetUserId: Product User ID of the user whose active sanctions are to be copied
    - Parameter SanctionIndex: Index of the sanction to retrieve from the cache
    - SeeAlso: EOS_Sanctions_QueryActivePlayerSanctions
    - SeeAlso: EOS_Sanctions_PlayerSanction_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter
              EOS_NotFound if the player achievement is not found
    - Returns: The player sanction data for the given index, if it exists and is valid
    */
    public func CopyPlayerSanctionByIndex(
        TargetUserId: EOS_ProductUserId?,
        SanctionIndex: Int
    ) throws -> SwiftEOS_Sanctions_PlayerSanction? {
        try ____CopyPlayerSanctionByIndex(.init(
                TargetUserId: TargetUserId,
                SanctionIndex: SanctionIndex
            ))
    }

    /**
    Fetch the number of player sanctions that have been retrieved for a given player.
    You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.

    - Parameter TargetUserId: Product User ID of the user whose sanction count should be returned
    - SeeAlso: EOS_Sanctions_QueryActivePlayerSanctions
    - SeeAlso: EOS_Sanctions_CopyPlayerSanctionByIndex
    - Returns: Number of available sanctions for this player.
    */
    public func GetPlayerSanctionCount(
        TargetUserId: EOS_ProductUserId?
    ) throws -> Int {
        try ____GetPlayerSanctionCount(.init(TargetUserId: TargetUserId))
    }

    /**
    Start an asynchronous query to retrieve any active sanctions for a specified user.
    Call EOS_Sanctions_GetPlayerSanctionCount and EOS_Sanctions_CopyPlayerSanctionByIndex to retrieve the data.

    - Parameter TargetUserId: Product User ID of the user whose active sanctions are to be retrieved.
    - Parameter LocalUserId: The Product User ID of the local user who initiated this request. Dedicated servers should set this to null.
    - Parameter CompletionDelegate: A callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_Sanctions_GetPlayerSanctionCount
    - SeeAlso: EOS_Sanctions_CopyPlayerSanctionByIndex
    */
    public func QueryActivePlayerSanctions(
        TargetUserId: EOS_ProductUserId?,
        LocalUserId: EOS_ProductUserId?,
        CompletionDelegate: @escaping (SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo) -> Void
    ) throws {
        try ____QueryActivePlayerSanctions(
            .init(
                TargetUserId: TargetUserId,
                LocalUserId: LocalUserId
            ),
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Sanctions_Actor {

    /**
    Copies an active player sanction.
    You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.
    On success, EOS_Sanctions_PlayerSanction_Release must be called on OutSanction to free memory.

    - Parameter Options: Structure containing the input parameters
    - SeeAlso: EOS_Sanctions_QueryActivePlayerSanctions
    - SeeAlso: EOS_Sanctions_PlayerSanction_Release
    - Throws: EOS_InvalidParameters if you pass a null pointer for the out parameter
              EOS_NotFound if the player achievement is not found
    - Returns: The player sanction data for the given index, if it exists and is valid
    */
    private func ____CopyPlayerSanctionByIndex(
        _ Options: SwiftEOS_Sanctions_CopyPlayerSanctionByIndexOptions
    ) throws -> SwiftEOS_Sanctions_PlayerSanction? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutSanction in
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Sanctions_CopyPlayerSanctionByIndex(
                                Handle,
                                Options,
                                OutSanction
                            ) } } },
                release: EOS_Sanctions_PlayerSanction_Release
            ) }
    }

    /**
    Fetch the number of player sanctions that have been retrieved for a given player.
    You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.

    - Parameter Options: Structure containing the input parameters
    - SeeAlso: EOS_Sanctions_QueryActivePlayerSanctions
    - SeeAlso: EOS_Sanctions_CopyPlayerSanctionByIndex
    - Returns: Number of available sanctions for this player.
    */
    private func ____GetPlayerSanctionCount(
        _ Options: SwiftEOS_Sanctions_GetPlayerSanctionCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Sanctions_GetPlayerSanctionCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Start an asynchronous query to retrieve any active sanctions for a specified user.
    Call EOS_Sanctions_GetPlayerSanctionCount and EOS_Sanctions_CopyPlayerSanctionByIndex to retrieve the data.

    - Parameter Options: Structure containing the input parameters
    - Parameter CompletionDelegate: A callback that is fired when the async operation completes, either successfully or in error
    - SeeAlso: EOS_Sanctions_GetPlayerSanctionCount
    - SeeAlso: EOS_Sanctions_CopyPlayerSanctionByIndex
    */
    private func ____QueryActivePlayerSanctions(
        _ Options: SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Sanctions_QueryActivePlayerSanctions(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
