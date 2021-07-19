import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_AcceptConnectionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_AcceptConnectionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_AcceptConnectionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_P2P_ACCEPTCONNECTION_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RemoteUserId)
            XCTAssertNil(cstruct.SocketId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_AcceptConnectionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_P2P_ACCEPTCONNECTION_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RemoteUserId)
            XCTAssertNil(swiftObject.SocketId) }
    }
}
