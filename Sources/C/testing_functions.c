//
//  testing_functions.c
//  
//
//  Created by Carlyn Maw on 2/5/24.
//

#include "testing_functions.h"


//https://clang.llvm.org/docs/analyzer/developer-docs/nullability.html
//https://discourse.llvm.org/t/rfc-nullability-qualifiers/35672


//-------------------------------------------------------------------
//MARK: For Pointer Test
//-------------------------------------------------------------------

void cTakesNonnullMutablePointer(int * __nonnull foo) {
    //printf("pointer: %p\n", foo);
}
void cTakesNonnullConstPointer(const int * __nonnull bar) {
    //printf("pointer: %p\n", bar);
}

void cTakesNullableMutablePointer(int * __nullable foo) {
    //printf("pointer: %p\n", foo);
}
void cTakesNullableConstPointer(const int * __nullable bar) {
    //printf("pointer: %p\n", bar);
}

void cTakesNullUnspecMutablePointer(int * __null_unspecified foo) {
    //printf("pointer: %p\n", foo);
}
void cTakesNullUnspecConstPointer(const int * __null_unspecified bar) {
    //printf("pointer: %p\n", bar);
}

//Warns, will live with it.
void cTakesUnflaggedMutablePointer(int * foo) {
    //printf("pointer: %p\n", foo);
}
void cTakesUnflaggedConstPointer(const int * bar) {
    //printf("pointer: %p\n", bar);
}
