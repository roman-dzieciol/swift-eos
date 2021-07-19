import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_LoginTests: XCTestCase {
    public func testEOS_Auth_Login_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_Login = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Credentials)
            XCTAssertEqual(Options!.pointee.ScopeFlags, .init(rawValue: .zero)!)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Auth_Login") }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.Login(
            Credentials: nil,
            ScopeFlags: .init(rawValue: .zero)!,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.PinGrantInfo)
                XCTAssertNil(arg0.ContinuanceToken)
                XCTAssertNil(arg0.AccountFeatureRestrictedInfo)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_Login"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
