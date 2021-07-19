import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_CopyFileMetadataAtIndexTests: XCTestCase {
    public func testEOS_PlayerDataStorage_CopyFileMetadataAtIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_CopyFileMetadataAtIndex = { Handle, CopyFileMetadataOptions, OutMetadata in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(CopyFileMetadataOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(CopyFileMetadataOptions!.pointee.LocalUserId)
            XCTAssertEqual(CopyFileMetadataOptions!.pointee.Index, .zero)
            XCTAssertNil(OutMetadata)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_CopyFileMetadataAtIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_PlayerDataStorage_FileMetadata? = try object.CopyFileMetadataAtIndex(
            LocalUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataAtIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
