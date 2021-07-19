import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserExternalAccountByIndexTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_CopyProductUserExternalAccountByIndex = { Handle, Options, OutExternalAccountInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.ExternalAccountInfoIndex, .zero)
            XCTAssertNil(OutExternalAccountInfo)
            TestGlobals.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserExternalAccountByIndex(
            TargetUserId: nil,
            ExternalAccountInfoIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
