import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioInputDeviceByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_GetAudioInputDeviceByIndex = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.DeviceInfoIndex, .zero)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_GetAudioInputDeviceByIndex")
            return nil }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_RTCAudio_AudioInputDeviceInfo? = try object.GetAudioInputDeviceByIndex(DeviceInfoIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_GetAudioInputDeviceByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
