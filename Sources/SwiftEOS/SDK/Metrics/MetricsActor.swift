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
    Logs the start of a new game session for a local player.

    The game client should call this function whenever it joins into a new multiplayer, peer-to-peer or single player game session.
    Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.

    - Parameter AccountIdType: Account ID type that is set in the union.
    - Parameter AccountId: TODO
    - Parameter DisplayName: The in-game display name for the user as UTF-8 string.
    - Parameter ControllerType: The user's game controller type.
    - Parameter ServerIp: IP address of the game server hosting the game session. For a localhost session, set to NULL.
    - details: Must be in either one of the following IPv4 or IPv6 string formats:
               * "127.0.0.1".
               * "1200:0000:AB00:1234:0000:2552:7777:1313".
               If both IPv4 and IPv6 addresses are available, use the IPv6 address.
    - Parameter GameSessionId: Optional, application-defined custom match session identifier. If the identifier is not used, set to NULL.
    - details: The game can tag each game session with a custom session match identifier,
               which will be shown in the Played Sessions listing at the user profile dashboard.
    - Throws: */
    public func BeginPlayerSession(
        AccountIdType: EOS_EMetricsAccountIdType,
        AccountId: _tagEOS_Metrics_BeginPlayerSessionOptions.__Unnamed_union_AccountId,
        DisplayName: String?,
        ControllerType: EOS_EUserControllerType,
        ServerIp: String?,
        GameSessionId: String?
    ) throws {
        try ____BeginPlayerSession(.init(
                AccountIdType: AccountIdType,
                AccountId: AccountId,
                DisplayName: DisplayName,
                ControllerType: ControllerType,
                ServerIp: ServerIp,
                GameSessionId: GameSessionId
            ))
    }

    /**
    Logs the end of a game session for a local player.

    Call once when the game client leaves the active game session.
    Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.

    - Parameter AccountIdType: The Account ID type that is set in the union.
    - Parameter AccountId: TODO
    - Throws: */
    public func EndPlayerSession(
        AccountIdType: EOS_EMetricsAccountIdType,
        AccountId: _tagEOS_Metrics_EndPlayerSessionOptions.__Unnamed_union_AccountId
    ) throws {
        try ____EndPlayerSession(.init(
                AccountIdType: AccountIdType,
                AccountId: AccountId
            ))
    }
}

extension SwiftEOS_Metrics_Actor {

    /**
    Logs the start of a new game session for a local player.

    The game client should call this function whenever it joins into a new multiplayer, peer-to-peer or single player game session.
    Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.

    - Parameter Options: Structure containing the local player's game account and the game session information.
    - Throws: */
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
    Logs the end of a game session for a local player.

    Call once when the game client leaves the active game session.
    Each call to BeginPlayerSession must be matched with a corresponding call to EndPlayerSession.

    - Parameter Options: Structure containing the Epic Online Services Account ID of the player whose session to end.
    - Throws: */
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
