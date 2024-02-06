//
//  testing_functions.h
//  
//
//  Created by Carlyn Maw on 2/5/24.
//

#ifndef testing_functions_h
#define testing_functions_h

#include <stdio.h>


//--------------------------------------------------- for_pointer_test
void cTakesNonnullMutablePointer(int * __nonnull);
void cTakesNonnullConstPointer(const int * __nonnull);
void cTakesNullableMutablePointer(int * __nullable);
void cTakesNullableConstPointer(const int * __nullable);
void cTakesNullUnspecMutablePointer(int * __null_unspecified);
void cTakesNullUnspecConstPointer(const int * __null_unspecified);

//Warns, will live with it.
void cTakesUnflaggedMutablePointer(int *);
void cTakesUnflaggedConstPointer(const int *);


#endif /* testing_functions_h */
