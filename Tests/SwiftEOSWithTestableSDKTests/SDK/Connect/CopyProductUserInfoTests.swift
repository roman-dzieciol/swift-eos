import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserInfoTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_CopyProductUserInfo = { Handle, Options, OutExternalAccountInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(OutExternalAccountInfo)
            TestGlobals.sdkReceived.append("EOS_Connect_CopyProductUserInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserInfo(TargetUserId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_CopyProductUserInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
