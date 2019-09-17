#ifndef _31_2_FLOAT_H
#define _31_2_FLOAT_H


#ifdef __cplusplus
#define _31_2_FLOAT_EXTERN_C extern "C"
#else
#define _31_2_FLOAT_EXTERN_C
#endif

_31_2_FLOAT_EXTERN_C double foo_strict(double x);
_31_2_FLOAT_EXTERN_C double foo_optimized(double x);

#endif
