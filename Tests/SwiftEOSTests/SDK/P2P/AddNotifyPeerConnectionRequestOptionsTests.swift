import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_AddNotifyPeerConnectionRequestOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_AddNotifyPeerConnectionRequestOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.SocketId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_AddNotifyPeerConnectionRequestOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.SocketId) }
    }
}
