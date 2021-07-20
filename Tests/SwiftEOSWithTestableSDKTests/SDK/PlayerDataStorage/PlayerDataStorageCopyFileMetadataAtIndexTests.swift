import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_CopyFileMetadataAtIndexTests: XCTestCase {
    public func testEOS_PlayerDataStorage_CopyFileMetadataAtIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_CopyFileMetadataAtIndex = { Handle, CopyFileMetadataOptions, OutMetadata in
                XCTAssertNil(Handle)
                XCTAssertEqual(CopyFileMetadataOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.LocalUserId)
                XCTAssertEqual(CopyFileMetadataOptions!.pointee.Index, .zero)
                XCTAssertNotNil(OutMetadata)
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_CopyFileMetadataAtIndex")
                return .zero
            }
            defer { __on_EOS_PlayerDataStorage_CopyFileMetadataAtIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyFileMetadataAtIndex(
                    LocalUserId: nil,
                    Index: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataAtIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataAtIndex"])
    }
}
