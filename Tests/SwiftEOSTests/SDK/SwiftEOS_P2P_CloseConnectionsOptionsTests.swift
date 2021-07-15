import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_CloseConnectionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_CloseConnectionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_CloseConnectionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.SocketId)
            let swiftObject = try SwiftEOS_P2P_CloseConnectionsOptions(sdkObject: cstruct) }
    }
}
