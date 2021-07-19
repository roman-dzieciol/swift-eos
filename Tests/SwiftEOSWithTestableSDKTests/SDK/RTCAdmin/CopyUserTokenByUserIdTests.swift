import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_CopyUserTokenByUserIdTests: XCTestCase {
    public func testEOS_RTCAdmin_CopyUserTokenByUserId_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAdmin_CopyUserTokenByUserId = { Handle, Options, OutUserToken in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.QueryId, .zero)
            XCTAssertNil(OutUserToken)
            TestGlobals.sdkReceived.append("EOS_RTCAdmin_CopyUserTokenByUserId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_RTCAdmin_UserToken? = try object.CopyUserTokenByUserId(
            TargetUserId: nil,
            QueryId: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByUserId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
