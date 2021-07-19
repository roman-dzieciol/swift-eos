import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioInputDevicesCountTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioInputDevicesCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_GetAudioInputDevicesCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_GetAudioInputDevicesCount")
            return .zero }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetAudioInputDevicesCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_GetAudioInputDevicesCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
