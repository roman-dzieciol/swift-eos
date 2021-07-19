import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_RegisterPlatformAudioUserTests: XCTestCase {
    public func testEOS_RTCAudio_RegisterPlatformAudioUser_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_RegisterPlatformAudioUser = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_RegisterPlatformAudioUser")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RegisterPlatformAudioUser(UserId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_RegisterPlatformAudioUser"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
