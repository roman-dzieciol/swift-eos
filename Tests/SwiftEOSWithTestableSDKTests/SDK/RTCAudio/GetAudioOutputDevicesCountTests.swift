import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioOutputDevicesCountTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioOutputDevicesCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_GetAudioOutputDevicesCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_GetAudioOutputDevicesCount")
            return .zero }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetAudioOutputDevicesCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDevicesCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
