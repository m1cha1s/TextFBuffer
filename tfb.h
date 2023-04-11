#ifndef _TEXTFB_H
#define _TEXTFB_H

#include "tfbcommon.h"

typedef enum _tfbErr {
    TFB_OK,
    TFB_FAIL,
} tfbErr;


typedef struct _tfb {
    u32 width;
    u32 height;

    char *buffer; // Dynamically allocated fb
    void *meta;   // Some metadata :3
} tfb;

u32 tfbGetWidth(tfb*);
u32 tfbGetHeight(tfb*);

tfbErr tfbPutChar(tfb*, u32, u32, char);

tfbErr tfbBlit(tfb*);

#endif

