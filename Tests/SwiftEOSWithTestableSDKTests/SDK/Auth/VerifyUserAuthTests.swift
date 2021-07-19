import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_VerifyUserAuthTests: XCTestCase {
    public func testEOS_Auth_VerifyUserAuth_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_VerifyUserAuth = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.AuthToken)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Auth_VerifyUserAuth") }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.VerifyUserAuth(
            AuthToken: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_VerifyUserAuth"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
