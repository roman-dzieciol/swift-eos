import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_ProtectMessageOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_ProtectMessageOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_ProtectMessageOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.OutBufferSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_ProtectMessageOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertNil(swiftObject.Data)
            XCTAssertEqual(swiftObject.OutBufferSizeBytes, .zero) }
    }
}
