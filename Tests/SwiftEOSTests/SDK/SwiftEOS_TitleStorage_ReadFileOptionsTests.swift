import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_ReadFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_ReadFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_ReadFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            XCTAssertEqual(cstruct.ReadChunkLengthBytes, .zero)
            XCTAssertNil(cstruct.ReadFileDataCallback)
            XCTAssertNil(cstruct.FileTransferProgressCallback)
            let swiftObject = try SwiftEOS_TitleStorage_ReadFileOptions(sdkObject: cstruct) }
    }
}
