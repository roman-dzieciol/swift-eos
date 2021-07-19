import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_UnprotectMessageOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_UnprotectMessageOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_UnprotectMessageOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.OutBufferSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_UnprotectMessageOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertNil(swiftObject.Data)
            XCTAssertEqual(swiftObject.OutBufferSizeBytes, .zero) }
    }
}
