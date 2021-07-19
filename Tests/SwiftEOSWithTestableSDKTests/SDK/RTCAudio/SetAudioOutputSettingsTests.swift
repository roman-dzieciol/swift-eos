import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_SetAudioOutputSettingsTests: XCTestCase {
    public func testEOS_RTCAudio_SetAudioOutputSettings_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_SetAudioOutputSettings = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.DeviceId)
            XCTAssertEqual(Options!.pointee.Volume, .zero)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_SetAudioOutputSettings")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetAudioOutputSettings(
            LocalUserId: nil,
            DeviceId: nil,
            Volume: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_SetAudioOutputSettings"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
