import Foundation
import EOSSDK

/** This struct is used to call EOS_RTCAudio_AddNotifyAudioBeforeRender. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIOBEFORERENDER_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on.  */
    public let RoomName: String?

    /**
     * Mixed audio or unmixed audio.
     * For unmixed audio notifications it is not supported to modify the samples in the callback.
     */
    public let bUnmixedAudio: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions {
        _tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            bUnmixedAudio: eosBoolFromSwiftBool(bUnmixedAudio)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioBeforeRenderOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.bUnmixedAudio = try swiftBoolFromEosBool(sdkObject.bUnmixedAudio)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIOBEFORERENDER_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        bUnmixedAudio: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.bUnmixedAudio = bUnmixedAudio
    }
}

/** This struct is used to call EOS_RTCAudio_AddNotifyAudioBeforeSend. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIOBEFORESEND_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on.  */
    public let RoomName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioBeforeSendOptions {
        _tagEOS_RTCAudio_AddNotifyAudioBeforeSendOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioBeforeSendOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIOBEFORESEND_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}

/** This struct is used to call EOS_RTCAudio_AddNotifyAudioDevicesChanged. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIODEVICESCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions {
        _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioDevicesChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIODEVICESCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** This struct is used to call EOS_RTCAudio_AddNotifyAudioInputState. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioInputStateOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIOINPUTSTATE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this event is registered on.  */
    public let RoomName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioInputStateOptions {
        _tagEOS_RTCAudio_AddNotifyAudioInputStateOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioInputStateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIOINPUTSTATE_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}

/** This struct is used to call EOS_RTCAudio_AddNotifyAudioOutputState. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYAUDIOOUTPUTSTATE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on.  */
    public let RoomName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions {
        _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIOOUTPUTSTATE_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}

/** This struct is used to call EOS_RTCAudio_AddNotifyParticipantUpdated. */
public struct SwiftEOS_RTCAudio_AddNotifyParticipantUpdatedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_ADDNOTIFYPARTICIPANTUPDATED_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on.  */
    public let RoomName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyParticipantUpdatedOptions {
        _tagEOS_RTCAudio_AddNotifyParticipantUpdatedOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyParticipantUpdatedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYPARTICIPANTUPDATED_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioBeforeRender registered event. */
public struct SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /**
     * Audio buffer.
     * If bUnmixedAudio was set to true when setting the notifications (aka: you get buffers per participant), then you should
     * not modify this buffer.
     */
    public let Buffer: SwiftEOS_RTCAudio_AudioBuffer?

    /**
     * The Product User ID of the participant if bUnmixedAudio was set to true when setting the notifications, or empty if
     * bUnmixedAudio was set to false and thus the buffer is the mixed audio of all participants
     */
    public let ParticipantId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Buffer = try SwiftEOS_RTCAudio_AudioBuffer.init(sdkObject: sdkObject.Buffer.pointee)
        self.ParticipantId = sdkObject.ParticipantId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioBeforeSend registered event. */
public struct SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** Audio buffer.  */
    public let Buffer: SwiftEOS_RTCAudio_AudioBuffer?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioBeforeSendCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Buffer = try SwiftEOS_RTCAudio_AudioBuffer.init(sdkObject: sdkObject.Buffer.pointee)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioBeforeSendCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** This struct is used to represent an audio buffer received in callbacks from EOS_RTCAudio_AddNotifyAudioBeforeSend and EOS_RTCAudio_AddNotifyAudioBeforeRender. */
public struct SwiftEOS_RTCAudio_AudioBuffer: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Pointer to the data with the interleaved audio frames in signed 16 bits format. 
     * - array num: FramesCount
     */
    public let Frames: [Int16]?

    /**
     * Number of frames available in the Frames buffer.
     * 
     * @note This is the number of frames in a channel, not the total number of frames in the buffer.
     * - array buffer: Frames
     */
    public let FramesCount: Int

    /** Sample rate for the samples in the Frames buffer.  */
    public let SampleRate: Int

    /** Number of channels for the samples in the Frames buffer.  */
    public let Channels: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioBuffer?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Frames = try trivialArrayFromTrivialPointer(
            start: sdkObject.Frames,
            count: sdkObject.FramesCount
        )
        self.FramesCount = try safeNumericCast(exactly: sdkObject.FramesCount)
        self.SampleRate = try safeNumericCast(exactly: sdkObject.SampleRate)
        self.Channels = try safeNumericCast(exactly: sdkObject.Channels)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AudioBuffer {
        try _tagEOS_RTCAudio_AudioBuffer(
            ApiVersion: ApiVersion,
            Frames: pointerManager.managedMutablePointerToBuffer(copyingArray: Frames),
            FramesCount: try safeNumericCast(exactly: FramesCount),
            SampleRate: try safeNumericCast(exactly: SampleRate),
            Channels: try safeNumericCast(exactly: Channels)
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST,
        Frames: [Int16]?,
        FramesCount: Int,
        SampleRate: Int,
        Channels: Int
    ) {
        self.ApiVersion = ApiVersion
        self.Frames = Frames
        self.FramesCount = FramesCount
        self.SampleRate = SampleRate
        self.Channels = Channels
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioDevicesChanged registered event. */
public struct SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo {

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** This struct is used to get information about a specific input device. */
public struct SwiftEOS_RTCAudio_AudioInputDeviceInfo {

    /** API Version: Set this to EOS_RTCAUDIO_AUDIOINPUTDEVICEINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** True if this is the default audio input device in the system.  */
    public let bDefaultDevice: Bool

    /**
     * 
     *  The persistent unique id of the device.
     */
    public let DeviceId: String?

    /** The name of the device */
    public let DeviceName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioInputDeviceInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bDefaultDevice = try swiftBoolFromEosBool(sdkObject.bDefaultDevice)
        self.DeviceId = String(cString: sdkObject.DeviceId)
        self.DeviceName = String(cString: sdkObject.DeviceName)
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioInputState registered event. */
public struct SwiftEOS_RTCAudio_AudioInputStateCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** The status of the audio input.  */
    public let Status: EOS_ERTCAudioInputStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioInputStateCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Status = sdkObject.Status
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioInputStateCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** This struct is used to get information about a specific input device. */
public struct SwiftEOS_RTCAudio_AudioOutputDeviceInfo {

    /** API Version: Set this to EOS_RTCAUDIO_AUDIOOUTPUTDEVICEINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** True if this is the default audio input device in the system.  */
    public let bDefaultDevice: Bool

    /**
     * 
     *  The persistent unique id of the device.
     */
    public let DeviceId: String?

    /** The name of the device */
    public let DeviceName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioOutputDeviceInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bDefaultDevice = try swiftBoolFromEosBool(sdkObject.bDefaultDevice)
        self.DeviceId = String(cString: sdkObject.DeviceId)
        self.DeviceName = String(cString: sdkObject.DeviceName)
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyAudioOutputState registered event. */
public struct SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** The status of the audio output.  */
    public let Status: EOS_ERTCAudioOutputStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioOutputStateCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Status = sdkObject.Status
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_AudioOutputStateCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Input parameters for the EOS_RTCAudio_GetAudioInputDeviceByIndex function. */
public struct SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_GETAUDIOINPUTDEVICEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the device info to retrieve.  */
    public let DeviceInfoIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions {
        try _tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions(
            ApiVersion: ApiVersion,
            DeviceInfoIndex: try safeNumericCast(exactly: DeviceInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_GetAudioInputDeviceByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DeviceInfoIndex = try safeNumericCast(exactly: sdkObject.DeviceInfoIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_GETAUDIOINPUTDEVICEBYINDEX_API_LATEST,
        DeviceInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DeviceInfoIndex = DeviceInfoIndex
    }
}

/** Input parameters for the EOS_RTCAudio_GetAudioInputDevicesCount function. */
public struct SwiftEOS_RTCAudio_GetAudioInputDevicesCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_GETAUDIOINPUTDEVICESCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions {
        _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_GetAudioInputDevicesCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_GETAUDIOINPUTDEVICESCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_RTCAudio_GetAudioOutputDeviceByIndex function. */
public struct SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the device info to retrieve.  */
    public let DeviceInfoIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions {
        try _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions(
            ApiVersion: ApiVersion,
            DeviceInfoIndex: try safeNumericCast(exactly: DeviceInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_GetAudioOutputDeviceByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DeviceInfoIndex = try safeNumericCast(exactly: sdkObject.DeviceInfoIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST,
        DeviceInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DeviceInfoIndex = DeviceInfoIndex
    }
}

/** Output parameters for the EOS_RTCAudio_GetAudioOutputDevicesCount function. */
public struct SwiftEOS_RTCAudio_GetAudioOutputDevicesCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICESCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_GetAudioOutputDevicesCountOptions {
        _tagEOS_RTCAudio_GetAudioOutputDevicesCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_GetAudioOutputDevicesCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICESCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_AddNotifyParticipantUpdated registered event. */
public struct SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** The participant updated.  */
    public let ParticipantId: EOS_ProductUserId?

    /** The participant speaking / non-speaking status.  */
    public let bSpeaking: Bool

    /** The participant audio status (enabled, disabled).  */
    public let AudioStatus: EOS_ERTCAudioStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bSpeaking = try swiftBoolFromEosBool(sdkObject.bSpeaking)
        self.AudioStatus = sdkObject.AudioStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** This struct is used to inform the audio system of a user. */
public struct SwiftEOS_RTCAudio_RegisterPlatformAudioUserOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_REGISTERPLATFORMAUDIOUSER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Platform dependent user id.  */
    public let UserId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions {
        _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions(
            ApiVersion: ApiVersion,
            UserId: pointerManager.managedPointerToBuffer(copyingArray: UserId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = String(cString: sdkObject.UserId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_REGISTERPLATFORMAUDIOUSER_API_LATEST,
        UserId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}

/** This struct is used to call EOS_RTCAudio_SendAudio. */
public struct SwiftEOS_RTCAudio_SendAudioOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_SENDAUDIO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on.  */
    public let RoomName: String?

    /**
     * Audio buffer, which must have a duration of 10 ms.
     * 
     * @note The SDK makes a copy of buffer. There is no need to keep the buffer around after calling EOS_RTCAudio_SendAudio
     */
    public let Buffer: SwiftEOS_RTCAudio_AudioBuffer?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_SendAudioOptions {
        try _tagEOS_RTCAudio_SendAudioOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            Buffer: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: Buffer?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_SendAudioOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Buffer = try SwiftEOS_RTCAudio_AudioBuffer.init(sdkObject: sdkObject.Buffer.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_SENDAUDIO_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        Buffer: SwiftEOS_RTCAudio_AudioBuffer?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.Buffer = Buffer
    }
}

/** This struct is used to call EOS_RTCAudio_SetAudioInputSettings. */
public struct SwiftEOS_RTCAudio_SetAudioInputSettingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The device Id to be used for this user. Pass NULL or empty string to use default input device.  */
    public let DeviceId: String?

    /**
     * The volume to be configured for this device (range 0.0 to 100.0).
     * At the moment, the only value that produce any effect is 0.0 (silence). Any other value is ignored and causes no change to the volume.
     */
    public let Volume: Float

    /** Enable or disable Platform AEC (Acoustic Echo Cancellation) if available.  */
    public let bPlatformAEC: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_SetAudioInputSettingsOptions {
        _tagEOS_RTCAudio_SetAudioInputSettingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DeviceId: pointerManager.managedPointerToBuffer(copyingArray: DeviceId?.utf8CString),
            Volume: Volume,
            bPlatformAEC: eosBoolFromSwiftBool(bPlatformAEC)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_SetAudioInputSettingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DeviceId = String(cString: sdkObject.DeviceId)
        self.Volume = sdkObject.Volume
        self.bPlatformAEC = try swiftBoolFromEosBool(sdkObject.bPlatformAEC)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        DeviceId: String?,
        Volume: Float,
        bPlatformAEC: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DeviceId = DeviceId
        self.Volume = Volume
        self.bPlatformAEC = bPlatformAEC
    }
}

/** This struct is used to call EOS_RTCAudio_SetAudioOutputSettings. */
public struct SwiftEOS_RTCAudio_SetAudioOutputSettingsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The device Id to be used for this user. Pass NULL or empty string to use default output device.  */
    public let DeviceId: String?

    /**
     * The volume to be configured for this device (range 0.0 to 100.0). Volume 50 means that the audio volume is not modified
     * and stays in its source value.
     */
    public let Volume: Float

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_SetAudioOutputSettingsOptions {
        _tagEOS_RTCAudio_SetAudioOutputSettingsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            DeviceId: pointerManager.managedPointerToBuffer(copyingArray: DeviceId?.utf8CString),
            Volume: Volume
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_SetAudioOutputSettingsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.DeviceId = String(cString: sdkObject.DeviceId)
        self.Volume = sdkObject.Volume
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        DeviceId: String?,
        Volume: Float
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.DeviceId = DeviceId
        self.Volume = Volume
    }
}

/** This struct is used to remove a user from the audio system. */
public struct SwiftEOS_RTCAudio_UnregisterPlatformAudioUserOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_UNREGISTERPLATFORMAUDIOUSER_API_LATEST.  */
    public let ApiVersion: Int32

    /** The account of a user associated with this event.  */
    public let UserId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions {
        _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions(
            ApiVersion: ApiVersion,
            UserId: pointerManager.managedPointerToBuffer(copyingArray: UserId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserId = String(cString: sdkObject.UserId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_UNREGISTERPLATFORMAUDIOUSER_API_LATEST,
        UserId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserId = UserId
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_OnUpdateReceivingCallback. */
public struct SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo {

    /**
     * This returns:
     * EOS_Success if the users were successfully unblocked.
     * EOS_UnexpectedError otherwise.
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on.  */
    public let RoomName: String?

    /** The participant to modify or null to update the global configuration  */
    public let ParticipantId: EOS_ProductUserId?

    /** Muted or unmuted audio track  */
    public let bAudioEnabled: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateReceivingCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bAudioEnabled = try swiftBoolFromEosBool(sdkObject.bAudioEnabled)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_UpdateReceivingCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_UpdateReceiving. */
public struct SwiftEOS_RTCAudio_UpdateReceivingOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_UPDATERECEIVING_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on.  */
    public let RoomName: String?

    /** The participant to modify or null to update the global configuration  */
    public let ParticipantId: EOS_ProductUserId?

    /** Mute or unmute audio track  */
    public let bAudioEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_UpdateReceivingOptions {
        _tagEOS_RTCAudio_UpdateReceivingOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            ParticipantId: ParticipantId,
            bAudioEnabled: eosBoolFromSwiftBool(bAudioEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateReceivingOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bAudioEnabled = try swiftBoolFromEosBool(sdkObject.bAudioEnabled)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_UPDATERECEIVING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bAudioEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bAudioEnabled = bAudioEnabled
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_OnUpdateSendingCallback. */
public struct SwiftEOS_RTCAudio_UpdateSendingCallbackInfo {

    /**
     * This returns:
     * EOS_Success if the channel was successfully blocked.
     * EOS_UnexpectedError otherwise.
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on.  */
    public let RoomName: String?

    /** Muted or unmuted audio track status  */
    public let AudioStatus: EOS_ERTCAudioStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateSendingCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.AudioStatus = sdkObject.AudioStatus
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTCAudio_UpdateSendingCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** This struct is passed in with a call to EOS_RTCAudio_UpdateSending */
public struct SwiftEOS_RTCAudio_UpdateSendingOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_UPDATESENDING_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on.  */
    public let RoomName: String?

    /** Muted or unmuted audio track status  */
    public let AudioStatus: EOS_ERTCAudioStatus

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_UpdateSendingOptions {
        _tagEOS_RTCAudio_UpdateSendingOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            AudioStatus: AudioStatus
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateSendingOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.AudioStatus = sdkObject.AudioStatus
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_UPDATESENDING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        AudioStatus: EOS_ERTCAudioStatus
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.AudioStatus = AudioStatus
    }
}
