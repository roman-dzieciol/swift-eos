import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByAccountId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_CopyProductUserExternalAccountByAccountId = { Handle, Options, OutExternalAccountInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(Options!.pointee.AccountId)
            XCTAssertNil(OutExternalAccountInfo)
            TestGlobals.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByAccountId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserExternalAccountByAccountId(
            TargetUserId: nil,
            AccountId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
