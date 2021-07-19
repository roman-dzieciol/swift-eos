import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_CopyUserAuthTokenTests: XCTestCase {
    public func testEOS_Auth_CopyUserAuthToken_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_CopyUserAuthToken = { Handle, Options, LocalUserId, OutUserAuthToken in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(LocalUserId)
            XCTAssertNil(OutUserAuthToken)
            TestGlobals.sdkReceived.append("EOS_Auth_CopyUserAuthToken")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Auth_Token? = try object.CopyUserAuthToken(LocalUserId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_CopyUserAuthToken"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
