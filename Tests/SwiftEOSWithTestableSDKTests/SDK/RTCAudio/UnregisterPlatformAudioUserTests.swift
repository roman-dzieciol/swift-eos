import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_UnregisterPlatformAudioUserTests: XCTestCase {
    public func testEOS_RTCAudio_UnregisterPlatformAudioUser_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_UnregisterPlatformAudioUser = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_UnregisterPlatformAudioUser")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UnregisterPlatformAudioUser(UserId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_UnregisterPlatformAudioUser"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
