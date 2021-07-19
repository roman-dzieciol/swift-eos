import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetJoinInfoTests: XCTestCase {
    public func testEOS_PresenceModification_SetJoinInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_PresenceModification_SetJoinInfo = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.JoinInfo)
            TestGlobals.sdkReceived.append("EOS_PresenceModification_SetJoinInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetJoinInfo(JoinInfo: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PresenceModification_SetJoinInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
