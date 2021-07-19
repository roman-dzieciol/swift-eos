import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_SetAudioInputSettingsTests: XCTestCase {
    public func testEOS_RTCAudio_SetAudioInputSettings_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_SetAudioInputSettings = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.DeviceId)
            XCTAssertEqual(Options!.pointee.Volume, .zero)
            XCTAssertEqual(Options!.pointee.bPlatformAEC, .zero)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_SetAudioInputSettings")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetAudioInputSettings(
            LocalUserId: nil,
            DeviceId: nil,
            Volume: .zero,
            bPlatformAEC: false
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_SetAudioInputSettings"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
