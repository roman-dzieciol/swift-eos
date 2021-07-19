import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_OnRemoteConnectionClosedInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_OnRemoteConnectionClosedInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_OnRemoteConnectionClosedInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RemoteUserId)
            XCTAssertNil(cstruct.SocketId)
            XCTAssertEqual(cstruct.Reason, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_OnRemoteConnectionClosedInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RemoteUserId)
            XCTAssertNil(swiftObject.SocketId)
            XCTAssertEqual(swiftObject.Reason, .zero) }
    }
}
