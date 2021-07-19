import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_GetFileMetadataCountTests: XCTestCase {
    public func testEOS_TitleStorage_GetFileMetadataCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_GetFileMetadataCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorage_GetFileMetadataCount")
                return .zero
            }
            defer { __on_EOS_TitleStorage_GetFileMetadataCount = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetFileMetadataCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorage_GetFileMetadataCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
