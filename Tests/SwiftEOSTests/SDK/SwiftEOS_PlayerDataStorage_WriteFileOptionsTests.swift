import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_WriteFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_WriteFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_WriteFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            XCTAssertEqual(cstruct.ChunkLengthBytes, .zero)
            XCTAssertNil(cstruct.WriteFileDataCallback)
            XCTAssertNil(cstruct.FileTransferProgressCallback)
            let swiftObject = try SwiftEOS_PlayerDataStorage_WriteFileOptions(sdkObject: cstruct) }
    }
}
