import Foundation
import EOSSDK
public class SwiftEOS_ActiveSession_Actor: SwiftEOSActor {
    public let Handle: EOS_HActiveSession

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HActiveSession
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_ActiveSession_Release(Handle)
    }

    /**
     * EOS_ActiveSession_CopyInfo is used to immediately retrieve a copy of active session information
     * If the call returns an EOS_Success result, the out parameter, OutActiveSessionInfo, must be passed to EOS_ActiveSession_Info_Release to release the memory associated with it.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * - Parameter OutActiveSessionInfo:  Out parameter used to receive the EOS_ActiveSession_Info structure.
     * 
     * @return EOS_Success if the information is available and passed out in OutActiveSessionInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_IncompatibleVersion if the API version passed in is incorrect
     * 
     * @see EOS_ActiveSession_Info
     * @see EOS_ActiveSession_CopyInfoOptions
     * @see EOS_ActiveSession_Info_Release
     */
    public func CopyInfo(
        Options: SwiftEOS_ActiveSession_CopyInfoOptions,
        OutActiveSessionInfo: inout SwiftEOS_ActiveSession_Info?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutActiveSessionInfo, managedBy: pointerManager) { OutActiveSessionInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_ActiveSession_CopyInfo(
                            Handle,
                            Options,
                            OutActiveSessionInfo
                        ) } } } }
    }

    /**
     * EOS_ActiveSession_GetRegisteredPlayerByIndex is used to immediately retrieve individual players registered with the active session.
     * 
     * - Parameter Options:  Structure containing the input parameters
     * 
     * @return the product user ID for the registered player at a given index or null if that index is invalid
     * 
     * @see EOS_ActiveSession_GetRegisteredPlayerCount
     * @see EOS_ActiveSession_GetRegisteredPlayerByIndexOptions
     */
    public func GetRegisteredPlayerByIndex(
        Options: SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexOptions
    ) throws -> EOS_ProductUserId {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                EOS_ActiveSession_GetRegisteredPlayerByIndex(
                    Handle,
                    Options
                ) } }
    }

    /**
     * Get the number of registered players associated with this active session
     * 
     * - Parameter Options:  the Options associated with retrieving the registered player count
     * 
     * @return number of registered players in the active session or 0 if there is an error
     */
    public func GetRegisteredPlayerCount(
        Options: SwiftEOS_ActiveSession_GetRegisteredPlayerCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try typecastIntResult { 
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_ActiveSession_GetRegisteredPlayerCount(
                        Handle,
                        Options
                    ) } } }
    }
}
