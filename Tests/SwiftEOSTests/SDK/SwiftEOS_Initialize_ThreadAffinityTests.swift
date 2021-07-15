import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Initialize_ThreadAffinityTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Initialize_ThreadAffinity() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Initialize_ThreadAffinity.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.NetworkWork, .zero)
            XCTAssertEqual(cstruct.StorageIo, .zero)
            XCTAssertEqual(cstruct.WebSocketIo, .zero)
            XCTAssertEqual(cstruct.P2PIo, .zero)
            XCTAssertEqual(cstruct.HttpRequestIo, .zero)
            let swiftObject = try SwiftEOS_Initialize_ThreadAffinity(sdkObject: cstruct) }
    }
}
