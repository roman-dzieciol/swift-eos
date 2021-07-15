import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_UnprotectMessageOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_UnprotectMessageOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_UnprotectMessageOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.OutBufferSizeBytes, .zero)
            let swiftObject = try SwiftEOS_AntiCheatClient_UnprotectMessageOptions(sdkObject: cstruct) }
    }
}
