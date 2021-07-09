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
     * Copies an active player sanction.
     * You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.
     * On success, EOS_Sanctions_PlayerSanction_Release must be called on OutSanction to free memory.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSanction:  The player sanction data for the given index, if it exists and is valid
     * 
     * @see EOS_Sanctions_QueryActivePlayerSanctions
     * @see EOS_Sanctions_PlayerSanction_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutSanction
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the player achievement is not found
     */
    public func CopyPlayerSanctionByIndex(
        Options: SwiftEOS_Sanctions_CopyPlayerSanctionByIndexOptions
    ) throws -> SwiftEOS_Sanctions_PlayerSanction? {
        try ____CopyPlayerSanctionByIndex(Options)
    }

    /**
     * Fetch the number of player sanctions that have been retrieved for a given player.
     * You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @see EOS_Sanctions_QueryActivePlayerSanctions
     * @see EOS_Sanctions_CopyPlayerSanctionByIndex
     * 
     * @return Number of available sanctions for this player.
     */
    public func GetPlayerSanctionCount(
        Options: SwiftEOS_Sanctions_GetPlayerSanctionCountOptions
    ) throws -> Int {
        try ____GetPlayerSanctionCount(Options)
    }

    /**
     * Start an asynchronous query to retrieve any active sanctions for a specified user.
     * Call EOS_Sanctions_GetPlayerSanctionCount and EOS_Sanctions_CopyPlayerSanctionByIndex to retrieve the data.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see EOS_Sanctions_GetPlayerSanctionCount
     * @see EOS_Sanctions_CopyPlayerSanctionByIndex
     */
    public func QueryActivePlayerSanctions(
        Options: SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo) -> Void
    ) throws {
        try ____QueryActivePlayerSanctions(
            Options,
            CompletionDelegate
        )
    }
}

extension SwiftEOS_Sanctions_Actor {

    /**
     * Copies an active player sanction.
     * You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.
     * On success, EOS_Sanctions_PlayerSanction_Release must be called on OutSanction to free memory.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutSanction:  The player sanction data for the given index, if it exists and is valid
     * 
     * @see EOS_Sanctions_QueryActivePlayerSanctions
     * @see EOS_Sanctions_PlayerSanction_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutSanction
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the player achievement is not found
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
     * Fetch the number of player sanctions that have been retrieved for a given player.
     * You must call QueryActivePlayerSanctions first to retrieve the data from the service backend.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @see EOS_Sanctions_QueryActivePlayerSanctions
     * @see EOS_Sanctions_CopyPlayerSanctionByIndex
     * 
     * @return Number of available sanctions for this player.
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
     * Start an asynchronous query to retrieve any active sanctions for a specified user.
     * Call EOS_Sanctions_GetPlayerSanctionCount and EOS_Sanctions_CopyPlayerSanctionByIndex to retrieve the data.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter ClientData:  Arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  A callback that is fired when the async operation completes, either successfully or in error
     * 
     * @see EOS_Sanctions_GetPlayerSanctionCount
     * @see EOS_Sanctions_CopyPlayerSanctionByIndex
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
