import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_PlayerDataStorage_CopyFileMetadataByFilename_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = { Handle, CopyFileMetadataOptions, OutMetadata in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(CopyFileMetadataOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(CopyFileMetadataOptions!.pointee.LocalUserId)
            XCTAssertNil(CopyFileMetadataOptions!.pointee.Filename)
            XCTAssertNil(OutMetadata)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_CopyFileMetadataByFilename")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_PlayerDataStorage_FileMetadata? = try object.CopyFileMetadataByFilename(
            LocalUserId: nil,
            Filename: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataByFilename"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
