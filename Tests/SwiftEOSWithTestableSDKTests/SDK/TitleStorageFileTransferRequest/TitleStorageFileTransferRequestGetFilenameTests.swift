import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorageFileTransferRequest_GetFilenameTests: XCTestCase {
    public func testEOS_TitleStorageFileTransferRequest_GetFilename_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorageFileTransferRequest_GetFilename = { Handle, FilenameStringBufferSizeBytes, OutStringBuffer, OutStringLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(FilenameStringBufferSizeBytes, .zero)
            XCTAssertNil(OutStringBuffer)
            XCTAssertNil(OutStringLength)
            TestGlobals.sdkReceived.append("EOS_TitleStorageFileTransferRequest_GetFilename")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_TitleStorageFileTransferRequest_Actor = SwiftEOS_TitleStorageFileTransferRequest_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetFilename(FilenameStringBufferSizeBytes: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorageFileTransferRequest_GetFilename"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
