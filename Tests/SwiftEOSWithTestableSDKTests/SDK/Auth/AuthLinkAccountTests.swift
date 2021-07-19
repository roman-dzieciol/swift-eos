import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_LinkAccountTests: XCTestCase {
    public func testEOS_Auth_LinkAccount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_LinkAccount = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.LinkAccountFlags, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.ContinuanceToken)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Auth_LinkAccount") }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LinkAccount(
            LinkAccountFlags: .init(rawValue: .zero)!,
            ContinuanceToken: nil,
            LocalUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.PinGrantInfo)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_LinkAccount"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
