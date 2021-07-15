import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SocketIdTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SocketId() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SocketId.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTFail("TODO: cstruct.SocketName")
            let swiftObject = try SwiftEOS_P2P_SocketId(sdkObject: cstruct) }
    }
}
