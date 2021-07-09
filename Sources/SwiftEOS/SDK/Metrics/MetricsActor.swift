import Foundation
import EOSSDK
public class SwiftEOS_Metrics_Actor: SwiftEOSActor {
    public let Handle: EOS_HMetrics

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HMetrics
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Logs the start of a new game session for a local player.
     * The game client should call this function whenever it joins into a new multiplayer, peer-to-peer or single player game session.
     * Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.
     * 
     * - Parameter Options:  Structure containing the local player's game account and the game session information.
     * 
     * @return Returns EOS_Success on success, or an error code if the input parameters are invalid or an active session for the player already exists.
     */
    public func BeginPlayerSession(
        Options: SwiftEOS_Metrics_BeginPlayerSessionOptions
    ) throws {
        try ____BeginPlayerSession(Options)
    }

    /**
     * Logs the end of a game session for a local player.
     * Call once when the game client leaves the active game session.
     * Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID of the player whose session to end.
     * 
     * @return Returns EOS_Success on success, or an error code if the input parameters are invalid or there was no active session for the player.
     */
    public func EndPlayerSession(
        Options: SwiftEOS_Metrics_EndPlayerSessionOptions
    ) throws {
        try ____EndPlayerSession(Options)
    }
}

extension SwiftEOS_Metrics_Actor {

    /**
     * Logs the start of a new game session for a local player.
     * The game client should call this function whenever it joins into a new multiplayer, peer-to-peer or single player game session.
     * Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.
     * 
     * - Parameter Options:  Structure containing the local player's game account and the game session information.
     * 
     * @return Returns EOS_Success on success, or an error code if the input parameters are invalid or an active session for the player already exists.
     */
    private func ____BeginPlayerSession(
        _ Options: SwiftEOS_Metrics_BeginPlayerSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_Metrics_BeginPlayerSession(
                        Handle,
                        Options
                    ) } } }
    }

    /**
     * Logs the end of a game session for a local player.
     * Call once when the game client leaves the active game session.
     * Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.
     * 
     * - Parameter Options:  Structure containing the Epic Online Services Account ID of the player whose session to end.
     * 
     * @return Returns EOS_Success on success, or an error code if the input parameters are invalid or there was no active session for the player.
     */
    private func ____EndPlayerSession(
        _ Options: SwiftEOS_Metrics_EndPlayerSessionOptions
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                try throwingSdkResult { 
                    EOS_Metrics_EndPlayerSession(
                        Handle,
                        Options
                    ) } } }
    }
}
