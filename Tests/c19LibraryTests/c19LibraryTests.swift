import XCTest
@testable import c19LibrarySwift
@testable import c19LibraryC

final class c19LibraryTests: XCTestCase {
    
    let constValue: CInt = 42
    var mutableValue: CInt = 84
    let constArray: [CInt] = [1, 2, 3]
    var mutableArray: [CInt] = [2, 4, 6]
    
    func testConstValue() {
        //All Failed due to type mismatch.
        //Swift and C all same types.
        //swiftUnsafeCIntPointer(constValue)
        //cTakesNonnullConstPointer(constValue)
        //swiftUnsafeCIntMutablePointer(constValue)
        //cTakesNonnullMutablePointer(constValue)
        
        //New
        //cTakesNullableConstPointer(constValue);
        //cTakesNullUnspecConstPointer(constValue);
        //cTakesUnflaggedConstPointer(constValue);
        //swiftOptionalUnsafeCIntPointer(constValue)
        //
        //cTakesNullableMutablePointer(constValue);
        //cTakesNullUnspecMutablePointer(constValue);
        //cTakesUnflaggedMutablePointer(constValue);
        //swiftOptionalUnsafeCIntMutablePointer(constValue)
        
        
    }
    func testConstValueWithAmp() {
        //All fail with cannot pass immutable as inout
        //swiftUnsafeCIntPointer(&constValue)
        //cTakesNonnullConstPointer(&constValue)
        //swiftUnsafeCIntMutablePointer(&constValue)
        //cTakesNonnullMutablePointer(&constValue)
        
        //"New"
        //Didn't bother since the problem is with & on a let
    }
    func testMutableValue() {
        //All Failed due to type mismatch.
        //Swift and C all same types.
        //swiftUnsafeCIntPointer(mutableValue)
        //cTakesNonnullConstPointer(mutableValue)
        //swiftUnsafeCIntMutablePointer(mutableValue)
        //cTakesNonnullMutablePointer(mutableValue)
        
        //"New"
        //cTakesNullableConstPointer(mutableValue);
        //cTakesNullUnspecConstPointer(mutableValue);
        //cTakesUnflaggedConstPointer(mutableValue);
        //swiftOptionalUnsafeCIntPointer(mutableValue)
        //
        //cTakesNullableMutablePointer(mutableValue);
        //cTakesNullUnspecMutablePointer(mutableValue);
        //cTakesUnflaggedMutablePointer(mutableValue);
        //swiftOptionalUnsafeCIntMutablePointer(mutableValue)
        
    }
    func testMutableValueWithAmp() {
        //All passed.
        swiftUnsafeCIntPointer(&mutableValue)
        cTakesNonnullConstPointer(&mutableValue)
        swiftUnsafeCIntMutablePointer(&mutableValue)
        cTakesNonnullMutablePointer(&mutableValue)
        
        //"New"
        cTakesNullableConstPointer(&mutableValue);
        cTakesNullUnspecConstPointer(&mutableValue);
        cTakesUnflaggedConstPointer(&mutableValue);
        swiftOptionalUnsafeCIntPointer(&mutableValue)
        
        cTakesNullableMutablePointer(&mutableValue);
        cTakesNullUnspecMutablePointer(&mutableValue);
        cTakesUnflaggedMutablePointer(&mutableValue);
        swiftOptionalUnsafeCIntMutablePointer(&mutableValue)
    }
    func testConstArray() {
        //Failed due to type mismatch.
        //Swift and C all same types.
        //swiftUnsafeCIntMutablePointer(constArray)
        //cTakesNonnullMutablePointer(constArray)
        //Passed.
        swiftUnsafeCIntPointer(constArray)
        cTakesNonnullConstPointer(constArray)
        
        //"New"
        cTakesNullableConstPointer(constArray);
        cTakesNullUnspecConstPointer(constArray);
        cTakesUnflaggedConstPointer(constArray);
        swiftOptionalUnsafeCIntPointer(constArray)
        
        //cTakesNullableMutablePointer(constArray);
        //cTakesNullUnspecMutablePointer(constArray);
        //cTakesUnflaggedMutablePointer(constArray);
        //swiftOptionalUnsafeCIntMutablePointer(constArray)
    }
    
    func testConstArrayWithAmp() {
        //Fail with '&' is not allowed passing array value as
        //'UnsafePointer<CInt>' (aka 'UnsafePointer<Int32>') argument
        //swiftUnsafeCIntPointer(&constArray)
        //cTakesNonnullConstPointer(&constArray)
        
        //Fail with cannot pass immutable as inout
        //swiftUnsafeCIntMutablePointer(&constArray)
        //cTakesNonnullMutablePointer(&constArray)
        
        //"New"
        //Didn't bother because cant & a const.
    }
    func testMutableArray() {
        //Failed due to type mismatch.
        //Swift and C all same types.
        //swiftUnsafeCIntMutablePointer(mutableArray)
        //cTakesNonnullMutablePointer(mutableArray)
        //Passed.
        swiftUnsafeCIntPointer(mutableArray)
        cTakesNonnullConstPointer(mutableArray)
        
        //"New"
        cTakesNullableConstPointer(mutableArray);
        cTakesNullUnspecConstPointer(mutableArray);
        cTakesUnflaggedConstPointer(mutableArray);
        swiftOptionalUnsafeCIntPointer(mutableArray)
        
        //cTakesNullableMutablePointer(mutableArray);
        //cTakesNullUnspecMutablePointer(mutableArray);
        //cTakesUnflaggedMutablePointer(mutableArray);
        //swiftOptionalUnsafeCIntMutablePointer(mutableArray)
    }
    
    func testMutableArrayWithAmp() {
        //All passed.
        swiftUnsafeCIntPointer(&mutableArray)
        cTakesNonnullConstPointer(&mutableArray)
        swiftUnsafeCIntMutablePointer(&mutableArray)
        cTakesNonnullMutablePointer(&mutableArray)
        
        //"New"
        cTakesNullableConstPointer(&mutableArray);
        cTakesNullUnspecConstPointer(&mutableArray);
        cTakesUnflaggedConstPointer(&mutableArray);
        swiftOptionalUnsafeCIntPointer(&mutableArray)
        
        cTakesNullableMutablePointer(&mutableArray);
        cTakesNullUnspecMutablePointer(&mutableArray);
        cTakesUnflaggedMutablePointer(&mutableArray);
        swiftOptionalUnsafeCIntMutablePointer(&mutableArray)
    }
    
}
