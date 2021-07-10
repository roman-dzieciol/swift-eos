import Foundation
import EOSSDK

/** Input parameters to use with Lobby RTC Rooms. */
public struct SwiftEOS_Lobby_LocalRTCOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBY_LOCALRTCOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Flags for the local user in this room. The default is 0 if this struct is not specified.

    - SeeAlso: `EOS_RTC_JoinRoomOptions`::Flags
    */
    public let Flags: Int

    /**
    Set to `EOS_TRUE` to enable Manual Audio Input. If manual audio input is enabled, audio recording is not started and the audio buffers
    must be passed manually using `EOS_RTCAudio_SendAudio`. The default is `EOS_FALSE` if this struct is not specified.
    */
    public let bUseManualAudioInput: Bool

    /**
    Set to `EOS_TRUE` to enable Manual Audio Output. If manual audio output is enabled, audio rendering is not started and the audio buffers
    must be received with `EOS_RTCAudio_AddNotifyAudioBeforeRender` and rendered manually. The default is `EOS_FALSE` if this struct is not
    specified.
    */
    public let bUseManualAudioOutput: Bool

    /**
    Set to `EOS_TRUE` to start the outgoing audio stream muted by when first connecting to the RTC room. It must be manually unmuted with a
    call to `EOS_RTCAudio_UpdateSending`. If manual audio output is enabled, this value is ignored. The default is `EOS_FALSE` if this struct
    is not specified.
    */
    public let bAudioOutputStartsMuted: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LocalRTCOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Flags = try safeNumericCast(exactly: sdkObject.Flags)
        self.bUseManualAudioInput = try swiftBoolFromEosBool(sdkObject.bUseManualAudioInput)
        self.bUseManualAudioOutput = try swiftBoolFromEosBool(sdkObject.bUseManualAudioOutput)
        self.bAudioOutputStartsMuted = try swiftBoolFromEosBool(sdkObject.bAudioOutputStartsMuted)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_LocalRTCOptions {
        try _tagEOS_Lobby_LocalRTCOptions(
            ApiVersion: ApiVersion,
            Flags: try safeNumericCast(exactly: Flags),
            bUseManualAudioInput: eosBoolFromSwiftBool(bUseManualAudioInput),
            bUseManualAudioOutput: eosBoolFromSwiftBool(bUseManualAudioOutput),
            bAudioOutputStartsMuted: eosBoolFromSwiftBool(bAudioOutputStartsMuted)
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBY_LOCALRTCOPTIONS_API_LATEST`.
    - Parameter Flags: Flags for the local user in this room. The default is 0 if this struct is not specified.
    - SeeAlso: `EOS_RTC_JoinRoomOptions`::Flags
    - Parameter bUseManualAudioInput: Set to `EOS_TRUE` to enable Manual Audio Input. If manual audio input is enabled, audio recording is not started and the audio buffers
    must be passed manually using `EOS_RTCAudio_SendAudio`. The default is `EOS_FALSE` if this struct is not specified.
    - Parameter bUseManualAudioOutput: Set to `EOS_TRUE` to enable Manual Audio Output. If manual audio output is enabled, audio rendering is not started and the audio buffers
    must be received with `EOS_RTCAudio_AddNotifyAudioBeforeRender` and rendered manually. The default is `EOS_FALSE` if this struct is not
    specified.
    - Parameter bAudioOutputStartsMuted: Set to `EOS_TRUE` to start the outgoing audio stream muted by when first connecting to the RTC room. It must be manually unmuted with a
    call to `EOS_RTCAudio_UpdateSending`. If manual audio output is enabled, this value is ignored. The default is `EOS_FALSE` if this struct
    is not specified.
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_LOCALRTCOPTIONS_API_LATEST,
        Flags: Int,
        bUseManualAudioInput: Bool,
        bUseManualAudioOutput: Bool,
        bAudioOutputStartsMuted: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.Flags = Flags
        self.bUseManualAudioInput = bUseManualAudioInput
        self.bUseManualAudioOutput = bUseManualAudioOutput
        self.bAudioOutputStartsMuted = bAudioOutputStartsMuted
    }
}
