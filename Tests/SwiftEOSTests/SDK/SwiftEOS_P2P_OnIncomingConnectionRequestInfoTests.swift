import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_OnIncomingConnectionRequestInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_OnIncomingConnectionRequestInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_OnIncomingConnectionRequestInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RemoteUserId)
            XCTAssertNil(cstruct.SocketId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_OnIncomingConnectionRequestInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RemoteUserId)
            XCTAssertNil(swiftObject.SocketId) }
    }
}
