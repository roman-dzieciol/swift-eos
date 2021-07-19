import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioOutputDeviceByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.DeviceInfoIndex, .zero)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_GetAudioOutputDeviceByIndex")
            return nil }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_RTCAudio_AudioOutputDeviceInfo? = try object.GetAudioOutputDeviceByIndex(DeviceInfoIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDeviceByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
