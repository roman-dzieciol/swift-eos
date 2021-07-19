import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_CopyUserTokenByIndexTests: XCTestCase {
    public func testEOS_RTCAdmin_CopyUserTokenByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAdmin_CopyUserTokenByIndex = { Handle, Options, OutUserToken in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.UserTokenIndex, .zero)
            XCTAssertEqual(Options!.pointee.QueryId, .zero)
            XCTAssertNil(OutUserToken)
            TestGlobals.sdkReceived.append("EOS_RTCAdmin_CopyUserTokenByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_RTCAdmin_UserToken? = try object.CopyUserTokenByIndex(
            UserTokenIndex: .zero,
            QueryId: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
