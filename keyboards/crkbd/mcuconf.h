#pragma once
#include_next <mcuconf.h>
#undef RP_I2C_USE_I2C0
#define RP_I2C_USE_I2C0 TRUE  // Para I2C0 (GP0/GP1)
#undef RP_I2C_USE_I2C1
#define RP_I2C_USE_I2C1 FALSE
